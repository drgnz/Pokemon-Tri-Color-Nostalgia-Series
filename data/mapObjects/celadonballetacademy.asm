CeladonBalletAcademyObject: ; 0x18022 (size=189)
	db $f ; border block

	db $2 ; warps
	db $d, $6, $d, $ff
	db $d, $7, $d, $ff
	
	db $0 ; signs

	db $d ; objects
	object SPRITE_LASS, $7, $1, STAY, DOWN, $1
	object SPRITE_LASS, $2, $4, STAY, NONE, $2, OPP_LASS, $13
	object SPRITE_BRUNETTE_GIRL, $2, $7, STAY, NONE, $3
	object SPRITE_LITTLE_GIRL, $2, $a, STAY, NONE, $4
	object SPRITE_LITTLE_GIRL, $5, $4, STAY, NONE, $5
	object SPRITE_LASS, $5, $7, STAY, NONE, $6, OPP_LASS, $14
	object SPRITE_FOULARD_WOMAN, $5, $a, STAY, NONE, $7
	object SPRITE_LASS, $8, $4, STAY, NONE, $8, OPP_LASS, $15
	object SPRITE_BRUNETTE_GIRL, $8, $7, STAY, NONE, $9
	object SPRITE_FOULARD_WOMAN, $8, $a, STAY, NONE, $a
	object SPRITE_BRUNETTE_GIRL, $b, $4, STAY, NONE, $b
	object SPRITE_LITTLE_GIRL, $b, $7, STAY, NONE, $c 
	object SPRITE_FOULARD_WOMAN, $b, $a, STAY, NONE, $d
	
	; warp-to
	EVENT_DISP CELADON_BALLET_ACADEMY_WIDTH, $d, $6 ; CELADON_CITY
	EVENT_DISP CELADON_BALLET_ACADEMY_WIDTH, $d, $7 ; CELADON_CITY