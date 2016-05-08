CeladonBalletAcademyScript:
	call EnableAutoTextBoxDrawing
	ld hl, CeladonBalletAcademyTrainerHeaders
	ld de, CeladonBalletAcademyScriptPointers
	ld a, [wCeladonBalletAcademyCurScript]
	call ExecuteCurMapScriptInTable
	ld [wCeladonBalletAcademyCurScript], a
	ret

CeladonBalletAcademyScriptPointers:
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle

CeladonBalletAcademyTextPointers:
	dw CeladonBalletAcademyText1
	dw CeladonBalletAcademyText2
	dw CeladonBalletAcademyText3
	dw CeladonBalletAcademyText4
	dw CeladonBalletAcademyText5
	dw CeladonBalletAcademyText6
	dw CeladonBalletAcademyText7
	dw CeladonBalletAcademyText8
	dw CeladonBalletAcademyText9
	dw CeladonBalletAcademyText10
	dw CeladonBalletAcademyText11
	dw CeladonBalletAcademyText12
	dw CeladonBalletAcademyText13

CeladonBalletAcademyTrainerHeaders:
CeladonBalletAcademyTrainerHeader0:
	dbEventFlagBit EVENT_BEAT_CELADON_BALLET_TRAINER_0
	db ($0 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_CELADON_BALLET_TRAINER_0
	dw CeladonBalletAcademyBattleText1 ; TextBeforeBattle
	dw CeladonBalletAcademyAfterBattleText1 ; TextAfterBattle
	dw CeladonBalletAcademyEndBattleText1 ; TextEndBattle
	dw CeladonBalletAcademyEndBattleText1 ; TextEndBattle

CeladonBalletAcademyTrainerHeader1:
	dbEventFlagBit EVENT_BEAT_CELADON_BALLET_TRAINER_1
	db ($0 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_CELADON_BALLET_TRAINER_1
	dw CeladonBalletAcademyBattleText2 ; TextBeforeBattle
	dw CeladonBalletAcademyAfterBattleText2 ; TextAfterBattle
	dw CeladonBalletAcademyEndBattleText2 ; TextEndBattle
	dw CeladonBalletAcademyEndBattleText2 ; TextEndBattle

CeladonBalletAcademyTrainerHeader2:
	dbEventFlagBit EVENT_BEAT_CELADON_BALLET_TRAINER_2
	db ($0 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_CELADON_BALLET_TRAINER_2
	dw CeladonBalletAcademyBattleText3 ; TextBeforeBattle
	dw CeladonBalletAcademyAfterBattleText3 ; TextAfterBattle
	dw CeladonBalletAcademyEndBattleText3 ; TextEndBattle
	dw CeladonBalletAcademyEndBattleText3 ; TextEndBattle

	db $ff

CeladonBalletAcademyText1: ; 61167 (18:5167)
	TX_FAR _CeladonBalletAcademyText1
	db "@"

CeladonBalletAcademyText2:
	TX_ASM
	ld hl, CeladonBalletAcademyTrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

CeladonBalletAcademyBattleText1:
	TX_FAR _CeladonBalletAcademyBattleText1
	db "@"

CeladonBalletAcademyEndBattleText1:
	TX_FAR _CeladonBalletAcademyEndBattleText1
	db "@"

CeladonBalletAcademyAfterBattleText1:
	TX_FAR _CeladonBalletAcademyAfterBattleText1
	db "@"

CeladonBalletAcademyText3:
	TX_FAR _CeladonBalletAcademyText3
	db "@"

CeladonBalletAcademyText4:
	TX_FAR _CeladonBalletAcademyText4
	db "@"

CeladonBalletAcademyText5:
	TX_FAR _CeladonBalletAcademyText5
	db "@"

CeladonBalletAcademyText6:
	TX_ASM
	ld hl, CeladonBalletAcademyTrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

CeladonBalletAcademyBattleText2:
	TX_FAR _CeladonBalletAcademyBattleText2
	db "@"

CeladonBalletAcademyEndBattleText2:
	TX_FAR _CeladonBalletAcademyEndBattleText2
	db "@"

CeladonBalletAcademyAfterBattleText2:
	TX_FAR _CeladonBalletAcademyAfterBattleText2
	db "@"

CeladonBalletAcademyText7:
	TX_FAR _CeladonBalletAcademyText7
	db "@"

CeladonBalletAcademyText8:
	TX_ASM
	ld hl, CeladonBalletAcademyTrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd

CeladonBalletAcademyBattleText3:
	TX_FAR _CeladonBalletAcademyBattleText3
	db "@"

CeladonBalletAcademyEndBattleText3:
	TX_FAR _CeladonBalletAcademyEndBattleText3
	db "@"

CeladonBalletAcademyAfterBattleText3:
	TX_FAR _CeladonBalletAcademyAfterBattleText3
	db "@"

CeladonBalletAcademyText9:
	TX_FAR _CeladonBalletAcademyText9
	db "@"

CeladonBalletAcademyText10:
	TX_FAR _CeladonBalletAcademyText10
	db "@"

CeladonBalletAcademyText11:
	TX_FAR _CeladonBalletAcademyText11
	db "@"

CeladonBalletAcademyText12:
	TX_FAR _CeladonBalletAcademyText12
	db "@"

CeladonBalletAcademyText13:
	TX_FAR _CeladonBalletAcademyText13
	db "@"
