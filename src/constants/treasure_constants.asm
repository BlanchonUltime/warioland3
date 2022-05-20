	const_def
	const TREASURE_NONE                         ; $00
	const TREASURE_YELLOW_MUSIC_BOX             ; $01
	const TREASURE_BLUE_MUSIC_BOX               ; $02
	const TREASURE_GREEN_MUSIC_BOX              ; $03
	const TREASURE_RED_MUSIC_BOX                ; $04
	const TREASURE_GOLD_MUSIC_BOX               ; $05
	const TREASURE_PRINCE_FROGS_GLOVE           ; $06
	const TREASURE_SWIMMING_FLIPPERS            ; $07
	const TREASURE_HIGH_JUMP_BOOTS              ; $08
	const TREASURE_SUPER_GRAB_GLOVES            ; $09
	const TREASURE_SUPER_SMASH                  ; $0a
	const TREASURE_GRAB_GLOVE                   ; $0b
	const TREASURE_LEAD_OVERALLS                ; $0c
	const TREASURE_SUPER_JUMP_SLAM_OVERALLS     ; $0d
	const TREASURE_HEAD_SMASH_HELMET            ; $0e
	const TREASURE_LANTERN                      ; $0f
	const TREASURE_MAGICAL_FLAME                ; $10
	const TREASURE_TORCH                        ; $11
	const TREASURE_GEAR_1                       ; $12
	const TREASURE_GEAR_2                       ; $13
	const TREASURE_WARP_COMPACT                 ; $14
	const TREASURE_JAR                          ; $15
	const TREASURE_TREASURE_MAP                 ; $16
	const TREASURE_BLUE_BOOK                    ; $17
	const TREASURE_MAGIC_WAND                   ; $18
	const TREASURE_SKY_KEY                      ; $19
	const TREASURE_YELLOW_BOOK                  ; $1a
	const TREASURE_AXE                          ; $1b
	const TREASURE_TRIDENT                      ; $1c
	const TREASURE_SKULL_RING_BLUE              ; $1d
	const TREASURE_SKULL_RING_RED               ; $1e
	const TREASURE_BLUE_TABLET                  ; $1f
	const TREASURE_GREEN_TABLET                 ; $20
	const TREASURE_ORNAMENTAL_FAN               ; $21
	const TREASURE_TOP_HALF_OF_SCROLL           ; $22
	const TREASURE_BOTTOM_HALF_OF_SCROLL        ; $23
	const TREASURE_TUSK_BLUE                    ; $24
	const TREASURE_TUSK_RED                     ; $25
	const TREASURE_GREEN_FLOWER                 ; $26
	const TREASURE_BLUE_CHEMICAL                ; $27
	const TREASURE_RED_CHEMICAL                 ; $28
	const TREASURE_AIR_PUMP                     ; $29
	const TREASURE_SAPLING_OF_GROWTH            ; $2a
	const TREASURE_NIGHT_VISION_SCOPE           ; $2b
	const TREASURE_ELECTRIC_FAN_PROPELLER       ; $2c
	const TREASURE_RUST_SPRAY                   ; $2d
	const TREASURE_STATUE                       ; $2e
	const TREASURE_EXPLOSIVE_PLUNGER_BOX        ; $2f
	const TREASURE_SCISSORS                     ; $30
	const TREASURE_CASTLE_BRICK                 ; $31
	const TREASURE_WARP_REMOVAL_APPARATUS       ; $32
	const TREASURE_KEY_CARD_RED                 ; $33
	const TREASURE_KEY_CARD_BLUE                ; $34
	const TREASURE_JACKHAMMER                   ; $35
	const TREASURE_PICK_AXE                     ; $36
	const TREASURE_ROCKET                       ; $37
	const TREASURE_POCKET_PET                   ; $38
	const TREASURE_MYSTERY_HANDLE               ; $39
	const TREASURE_DEMONS_BLOOD                 ; $3a
	const TREASURE_GOLD_MAGIC                   ; $3b
	const TREASURE_FIGHTER_MANNEQUIN            ; $3c
	const TREASURE_TRUCK_WHEEL                  ; $3d
	const TREASURE_FLUTE                        ; $3e
	const TREASURE_FOOT_OF_STONE                ; $3f
	const TREASURE_GOLDEN_RIGHT_EYE             ; $40
	const TREASURE_GOLDEN_LEFT_EYE              ; $41
	const TREASURE_RIGHT_GLASS_EYE              ; $42
	const TREASURE_LEFT_GLASS_EYE               ; $43
	const TREASURE_SCEPTER                      ; $44
	const TREASURE_SUN_MEDALLION_TOP            ; $45
	const TREASURE_SUN_MEDALLION_BOTTOM         ; $46
	const TREASURE_EYE_OF_THE_STORM             ; $47
	const TREASURE_POUCH                        ; $48
	const TREASURE_MAGIC_SEEDS                  ; $49
	const TREASURE_FULL_MOON_GONG               ; $4a
	const TREASURE_TELEPHONE                    ; $4b
	const TREASURE_CROWN                        ; $4c
	const TREASURE_DAY_OR_NIGHT_SPELL           ; $4d
	const TREASURE_RED_GEM                      ; $4e
	const TREASURE_GREEN_GEM                    ; $4f
	const TREASURE_BLUE_GEM                     ; $50
	const TREASURE_CLUBS_CREST                  ; $51
	const TREASURE_SPADES_CREST                 ; $52
	const TREASURE_HEART_CREST                  ; $53
	const TREASURE_DIAMONDS_CREST               ; $54
	const TREASURE_EARTHEN_FIGURE               ; $55
	const TREASURE_SABER                        ; $56
	const TREASURE_GOBLET                       ; $57
	const TREASURE_TEAPOT                       ; $58
	const TREASURE_MAGNIFYING_GLASS             ; $59
	const TREASURE_UFO                          ; $5a
	const TREASURE_MINICAR                      ; $5b
	const TREASURE_LOCOMOTIVE                   ; $5c
	const TREASURE_FIRE_DRENCHER                ; $5d
	const TREASURE_CRAYON_RED                   ; $5e
	const TREASURE_CRAYON_BROWN                 ; $5f
	const TREASURE_CRAYON_YELLOW                ; $60
	const TREASURE_CRAYON_GREEN                 ; $61
	const TREASURE_CRAYON_CYAN                  ; $62
	const TREASURE_CRAYON_BLUE                  ; $63
	const TREASURE_CRAYON_PINK                  ; $64
DEF NUM_TREASURES EQU const_value - 1
	const TREASURE_DUMMY                        ; $65
const_value = $80
	const TREASURE_INVALID                      ; $80

; pals
	const_def $4
	const OBPAL_TREASURE_YELLOW ; 4
	const OBPAL_TREASURE_RED    ; 5
	const OBPAL_TREASURE_GREEN  ; 6
	const OBPAL_TREASURE_BLUE   ; 7

DEF NUM_COLLECTION_COLS  EQU 5
DEF NUM_COLLECTION_ROWS  EQU 4
DEF NUM_COLLECTION_CELLS EQU NUM_COLLECTION_COLS * NUM_COLLECTION_ROWS
DEF NUM_COLLECTION_PAGES EQU NUM_TREASURES / NUM_COLLECTION_CELLS
DEF NUM_TREASURE_TILES   EQU 4
