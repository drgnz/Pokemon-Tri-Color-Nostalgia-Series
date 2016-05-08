CeladonCity_h: ; 18000 (6:4000)
	db HOUSE ; tileset
	db CELADON_BALLET_ACADEMY_HEIGHT, CELADON_BALLET_ACADEMY_WIDTH ; dimensions (y, x)
	dw CeladonBalletAcademyBlocks, CeladonBalletAcademyTextPointers, CeladonBalletAcademyScript ; blocks, texts, scripts
	db $00 ; connections
	dw CeladonBalletAcademyObject ; objects
