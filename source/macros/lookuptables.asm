




;5DFF = item
;6FF4 = spell
;Used for items and spells
itemDataAddress1 EQU $00
itemDataCombatMagnitude EQU $02
itemDataCombatSkill EQU $03
itemDataCombatEnergyCost EQU $04 ;Can also be used for items
itemDataCombatTarget EQU $05
itemDataMaximumQuantity EQU $06
itemDataUnknown3 EQU $07 ;$09 by default. Seems to be $04 when the magnitude is actually a negative number
itemDataUnknown4 EQU $08 ;Possibly the elemental type of the spell. Unused I think
itemDataUnknown5 EQU $09 ;1 if temp like Gem, 3 if perm like Rune, 2 if unuseable. But not sure what actually does
itemDataSellPrice EQU $0A ;16-bit
itemDataName EQU $0C  ;length $0D
itemDataCombatBank EQU $19
itemDataCombatAddress EQU $1A
itemDataOverworldBank EQU $1C
itemDataOverworldAddress EQU $1D
itemDataSpellUnknownBank EQU $1F ;animation?
itemDataSpellUnknownAddress EQU $20




statEnergy EQU $00
statStrength EQU $01
statSkill EQU $02
statSpeed EQU $03
statDefence EQU $04
statResist EQU $05
statLuck EQU $06


DEF CreatureID_Null                 EQU $FF
DEF CreatureID_Abaquist             EQU $00
DEF CreatureID_Agovo                EQU $01
DEF CreatureID_Alaban               EQU $02
DEF CreatureID_Arbolit              EQU $03
DEF CreatureID_Arboll               EQU $04
DEF CreatureID_Ayebaw               EQU $05
DEF CreatureID_Bhatar               EQU $06
DEF CreatureID_Bisiwog              EQU $07
DEF CreatureID_BlackAgovo           EQU $08
DEF CreatureID_Bolt_Hyren           EQU $09
DEF CreatureID_Borgor               EQU $0A
DEF CreatureID_Brub                 EQU $0B
DEF CreatureID_Bwill                EQU $0C
DEF CreatureID_Cave_Hyren           EQU $0D
DEF CreatureID_CaveRudwot           EQU $0E
DEF CreatureID_Chaos_Jile           EQU $0F
DEF CreatureID_CoralHyren           EQU $10
DEF CreatureID_Core_Grag            EQU $11
DEF CreatureID_Core_Hyren           EQU $12
DEF CreatureID_DarkAyebaw           EQU $13
DEF CreatureID_DarkVellup           EQU $14
DEF CreatureID_Deep_Hyren           EQU $15
DEF CreatureID_Diobor               EQU $16
DEF CreatureID_Drakan               EQU $17
DEF CreatureID_DryteFiend           EQU $18
DEF CreatureID_Eebit                EQU $19
DEF CreatureID_Epik                 EQU $1A
DEF CreatureID_FlameHyren           EQU $1B
DEF CreatureID_Furok                EQU $1C
DEF CreatureID_GhostBwisp           EQU $1D
DEF CreatureID_GiantKorit           EQU $1E
DEF CreatureID_Graw                 EQU $1F
DEF CreatureID_Grax                 EQU $20
DEF CreatureID_Gum_Gum              EQU $21
DEF CreatureID_Hook_Wing            EQU $22
DEF CreatureID_Jingjack             EQU $23
DEF CreatureID_Karak                EQU $24
DEF CreatureID_Kazor                EQU $25
DEF CreatureID_Kelthet              EQU $26
DEF CreatureID_Kletch               EQU $27
DEF CreatureID_Koil                 EQU $28
DEF CreatureID_Lava_Aq              EQU $29
DEF CreatureID_LavaArboll           EQU $2A
DEF CreatureID_LavaBalmnt           EQU $2B
DEF CreatureID_Leaf_Chogo           EQU $2C
DEF CreatureID_Leaf_Hyren           EQU $2D
DEF CreatureID_MagmaHyren           EQU $2E
DEF CreatureID_Megathan             EQU $2F
DEF CreatureID_Mush_Hyren           EQU $30
DEF CreatureID_Orathan_F            EQU $31
DEF CreatureID_Orish                EQU $32
DEF CreatureID_Ormagon              EQU $33
DEF CreatureID_Orpus                EQU $34
DEF CreatureID_Paralit              EQU $35
DEF CreatureID_Parmalag             EQU $36
DEF CreatureID_Platheus             EQU $37
DEF CreatureID_Plith                EQU $38
DEF CreatureID_Porkuslime           EQU $39
DEF CreatureID_Quor                 EQU $3A
DEF CreatureID_Rabbage              EQU $3B
DEF CreatureID_Raxis                EQU $3C
DEF CreatureID_Rudwot               EQU $3D
DEF CreatureID_Sabreback            EQU $3E
DEF CreatureID_Sarbil               EQU $3F
DEF CreatureID_Sea_Jile             EQU $40
DEF CreatureID_ShadwKarak           EQU $41
DEF CreatureID_ShadwVinoc           EQU $42
DEF CreatureID_Sharbloot            EQU $43
DEF CreatureID_Shryque              EQU $44
DEF CreatureID_Sphor                EQU $45
DEF CreatureID_Spindle              EQU $46
DEF CreatureID_ThundrHyrn           EQU $47
DEF CreatureID_TimberHyrn           EQU $48
DEF CreatureID_Treebit              EQU $49
DEF CreatureID_Tusk_Bwisp           EQU $4A
DEF CreatureID_Twee                 EQU $4B
DEF CreatureID_Vashp                EQU $4C
DEF CreatureID_Vellup               EQU $4D
DEF CreatureID_Vile_Yogu            EQU $4E
DEF CreatureID_Vinoc                EQU $4F
DEF CreatureID_Vulbor               EQU $50
DEF CreatureID_Wasperine            EQU $51
DEF CreatureID_Weebat               EQU $52
DEF CreatureID_Weebo                EQU $53
DEF CreatureID_Xyx                  EQU $54
DEF CreatureID_Yvohcna              EQU $55
DEF CreatureID_PlAcEhOlDr1          EQU $56
DEF CreatureID_PlAcEhOlDr2          EQU $57
DEF CreatureID_MAGI                 EQU $58
DEF CreatureID_Tony                 EQU $58
DEF CreatureID_Togoth               EQU $59
DEF CreatureID_Ogar                 EQU $5A
DEF CreatureID_Korremar             EQU $5B
DEF CreatureID_Warrada              EQU $5C
DEF CreatureID_Korg                 EQU $5D
DEF CreatureID_Zet                  EQU $5E
DEF CreatureID_Morag                EQU $5F
DEF CreatureID_Agram1               EQU $60
DEF CreatureID_Agram2               EQU $61
DEF CreatureID_Agram3               EQU $62
DEF CreatureID_ShadowMagi1          EQU $63
DEF CreatureID_ShadowMagi2          EQU $64
DEF CreatureID_ShadowMagi3          EQU $65
DEF CreatureID_ShadowMagi4          EQU $66
DEF CreatureID_ShadowMagi5          EQU $67
DEF CreatureID_ShadowMagi6          EQU $68
DEF CreatureID_ShadowMagi7          EQU $69
DEF CreatureID_ShadowMagi8          EQU $6A
DEF CreatureID_Salafy               EQU $6B
DEF CreatureID_NoMagi               EQU $6C
DEF CreatureID_End                  EQU $6D



;00 -> upper-endian of base energy - unused?
dcBaseEnergy EQU $01
dcMaxEnergy EQU $02 ;Big-endian
dcBaseStrength EQU $04
dcBaseSkill EQU $05
dcBaseSpeed EQU $06
dcBaseDefense EQU $07
dcBaseResist EQU $08
dcBaseLuck EQU $09
;0A all 0s ?EnergyUp/Elem
dcResistance EQU $0B
dcWeakness EQU $0C
dcStatusImmune EQU $0D
dcStatusPerm EQU $0E
dcMagiType EQU $0F
dcIsPlaceholder EQU $10
;11 all 0s
dcAbility1TableAddress EQU $12
dcAbility2TableAddress EQU $14
dcAbility3TableAddress EQU $16
dcAbility4TableAddress EQU $18
dcAbility1UnlockLevel EQU $1A
dcAbility2UnlockLevel EQU $1B
dcAbility3UnlockLevel EQU $1C
dcAbility4UnlockLevel EQU $1D
dcGraphics EQU $1E
dcCombatTilesetAddress EQU $00    ;AddressBank. dcGraphics + 0
dcCombatTilemapAddress EQU $03    ;AddressBank.
dcCombatTilemapWidth EQU $06
dcCombatTilemapHeight EQU $07
dcCombatPaletteAddress EQU $08  ;AddressBank. points to a paletteset of 3 palettes
dcCardTileset EQU $0B           ;AddressBank
dcCardPaletteID EQU $0E


abilityFight     EQU $00
abilitySummon    EQU $01
abilitySummonX   EQU $02
abilityItem      EQU $03
abilityRun       EQU $04
abilitySpell     EQU $05
abilityFocus     EQU $06
abilityBarrage   EQU $07
abilityBeam      EQU $08
abilityBite      EQU $09
abilityBlast     EQU $0A
abilityBlaze     EQU $0B
abilityBoost     EQU $0C
abilityBramble   EQU $0D
abilityBurrow    EQU $0E
abilityCarnage   EQU $0F
abilityCharge    EQU $10
abilityChoke     EQU $11
abilityClaw      EQU $12
abilityCoil      EQU $13
abilityConsume   EQU $14
abilityCrack     EQU $15
abilityCremate   EQU $16
abilityCrumble   EQU $17
abilityCrush     EQU $18
abilityCurse     EQU $19
abilityCute      EQU $1A
abilityCyclone   EQU $1B
abilityDevour    EQU $1C
abilityDream     EQU $1D
abilityDrown     EQU $1E
abilityFang      EQU $1F
abilityFlame     EQU $20
abilityFlash     EQU $21
abilityFlock     EQU $22
abilityFortune   EQU $23
abilityFrenzy    EQU $24
abilityGale      EQU $25
abilityGoo       EQU $26
abilityGravity   EQU $27
abilityGust      EQU $28
abilityHaunt     EQU $29
abilityHeal      EQU $2A
abilityIgnite    EQU $2B
abilityImpale    EQU $2C
abilityInfect    EQU $2D
abilityInferno   EQU $2E
abilityInk       EQU $2F
abilityJiggle    EQU $30
abilityJolt      EQU $31
abilityLamp      EQU $32
abilityLeaf      EQU $33
abilityMagma     EQU $34
abilityMaul      EQU $35
abilityMelody    EQU $36
abilityMend      EQU $37
abilityMist      EQU $38
abilityMunch     EQU $39
abilityPack      EQU $3A
abilityPetrify   EQU $3B
abilityPinch     EQU $3C
abilityPollen    EQU $3D
abilityPrism     EQU $3E
abilityPummel    EQU $3F
abilityPunch     EQU $40
abilityQuake     EQU $41
abilityRoar      EQU $42
abilityRoots     EQU $43
abilityScratch   EQU $44
abilitySever     EQU $45
abilityShade     EQU $46
abilityShake     EQU $47
abilityShield    EQU $48
abilityShock     EQU $49
abilityShred     EQU $4A
abilitySlide     EQU $4B
abilitySoar      EQU $4C
abilitySonic     EQU $4D
abilitySpark     EQU $4E
abilitySponge    EQU $4F
abilitySpore     EQU $50
abilitySquirt    EQU $51
abilitySting     EQU $52
abilityStorm     EQU $53
abilitySwarm     EQU $54
abilitySwing     EQU $55
abilitySyphon    EQU $56
abilityTackle    EQU $57
abilityTangle    EQU $58
abilityTempest   EQU $59
abilityTerror    EQU $5A
abilityThorns    EQU $5B
abilityThrust    EQU $5C
abilityThunder   EQU $5D
abilityTic_Toc   EQU $5E
abilityTide      EQU $5F
abilityTimber    EQU $60
abilityTsunami   EQU $61
abilityTurtle    EQU $62
abilityVampire   EQU $63
abilityVortex    EQU $64
abilityWhirl     EQU $65
abilityWreck     EQU $66



