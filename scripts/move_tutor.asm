; Handles Move Tutor functionality
; Currently free, that may change
; To make a person a tutor, have their Text Pointer point to a structure like this example

;ExamplePersonScript:
;	TX_FAR _IntroductionText
;	db 8 ;TX_ASM
;	ld a, Move Tutor Number
;	ld [wWhichTrade], a
;	callba MoveTutorScript
;	jp TextScriptEnd

MoveTutorScript::
	call SaveScreenTilesToBuffer2
	call EnableAutoTextBoxDrawing
	ld a,[wWhichTrade] ; which move tutor is this?
	push af
	ld [wd11e],a
	callba TutorToMove
	ld a,[wd11e]
	ld [wMoveNum],a
	call GetMoveName
	call CopyStringToCF4B ; copy name to wcf4b
	pop af
	ld hl,TeachTutorMoveText
	call PrintText
	coord hl, 14, 7
	ld bc,$080f
	ld a,TWO_OPTION_MENU
	ld [wTextBoxID],a
	call DisplayTextBoxID ; yes/no menu
	ld a,[wCurrentMenuItem]
	and a
	jr z,.chooseMon
	; chose no
	ld hl,MoveTutorComeAgainText
	jp PrintText
	
.chooseMon
	ld hl,wcf4b
	ld de,wLearnMoveMonName
	ld bc,14
	call CopyData
	xor a
	ld [wUpdateSpritesEnabled],a
	ld a,$06 ; move tutor party menu
	ld [wPartyMenuTypeOrMessageID],a
	call DisplayPartyMenu
	push af
	ld hl,wLearnMoveMonName
	ld de,wcf4b
	ld bc,14
	call CopyData
	pop af
	jr nc,.checkIfAbleToLearnMove
; if the player canceled teaching the move
	jr .done
	
.checkIfAbleToLearnMove
	callba CanLearnTutor ; check if the pokemon can learn the move
	ld a,[wWhichPokemon]
	ld hl,wPartyMonNicks
	call GetPartyMonName
	ld a, [wTempMoveID]
	and a ; can the pokemon learn the move?
	jr nz,.checkIfAlreadyLearnedMove
; if the pokemon can't learn the move
	ld a,(SFX_DENIED) / 3
	call PlaySoundWaitForCurrent ; play sound
	ld hl,MonCannotLearnTutorMoveText
	call PrintText
	jr .chooseMon
	
.checkIfAlreadyLearnedMove
	callba CheckIfMoveIsKnown ; check if the pokemon already knows the move
	jr c,.chooseMon
	predef LearnMove ; teach move
.done
	call GBPalWhiteOutWithDelay3
	call RestoreScreenTilesAndReloadTilePatterns
	call LoadGBPal
	ld hl,MoveTutorComeAgainText
	jp PrintText

TeachTutorMoveText:
	TX_FAR _TeachTutorMoveText
	db "@"

MoveTutorComeAgainText:
	TX_FAR _MoveTutorComeAgainText
	db "@"

MonCannotLearnTutorMoveText:
	TX_FAR _MonCannotLearnTutorMoveText
	db "@"
