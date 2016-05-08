BurnEffect_: ; 2bea9 (a:7ea9)
	ld hl, wEnemyMonStatus
	ld de, wPlayerMoveType
	ld a, [H_WHOSETURN]
	and a
	jp z, .next
	ld hl, wBattleMonStatus
	ld de, wEnemyMoveType
.next
	ld a, [hl]
	and a ; does the target already have a status ailment?
	jr nz, .didntAffect
; check if the target is immune due to types
	ld a, [de]
	cp FIRE
	jr z, .doesntAffect
	inc de
	ld a, [de]
	cp FIRE
	jr z, .doesntAffect
	push hl
	callab MoveHitTest
	pop hl
	ld a, [wMoveMissed]
	and a
	jr nz, .didntAffect
	set PAR, [hl]
	callab HalveAttackDueToBurn
	ld c, 30
	call DelayFrames
	callab PlayCurrentMoveAnimation
	ld hl, BurnedText
	jp PrintText
.didntAffect
	ld c, 50
	call DelayFrames
	jpab PrintDidntAffectText
.doesntAffect
	ld c, 50
	call DelayFrames
	jpab PrintDoesntAffectText
