




;5DFF = item
;6FF4 = spell
;Used for items and spells
DEF itemDataAddress1 EQU $00
DEF itemDataCombatMagnitude EQU $02
DEF itemDataCombatSkill EQU $03
DEF itemDataCombatEnergyCost EQU $04 ;Can also be used for items
DEF itemDataCombatTarget EQU $05
DEF itemDataMaximumQuantity EQU $06
DEF itemDataUnknown3 EQU $07 ;$09 by default. Seems to be $04 when the magnitude is actually a negative number
DEF itemDataUnknown4 EQU $08 ;Possibly the elemental type of the spell. Unused I think
DEF itemDataUnknown5 EQU $09 ;1 if temp like Gem, 3 if perm like Rune, 2 if unuseable. But not sure what actually does
DEF itemDataSellPrice EQU $0A ;16-bit
DEF itemDataName EQU $0C  ;length $0D
DEF itemDataCombatBank EQU $19
DEF itemDataCombatAddress EQU $1A
DEF itemDataOverworldBank EQU $1C
DEF itemDataOverworldAddress EQU $1D
DEF itemDataSpellUnknownBank EQU $1F ;animation?
DEF itemDataSpellUnknownAddress EQU $20




DEF statEnergy EQU $00
DEF statStrength EQU $01
DEF statSkill EQU $02
DEF statSpeed EQU $03
DEF statDefence EQU $04
DEF statResist EQU $05
DEF statLuck EQU $06




DEF abilityFight     EQU $00
DEF abilitySummon    EQU $01
DEF abilitySummonX   EQU $02
DEF abilityItem      EQU $03
DEF abilityRun       EQU $04
DEF abilitySpell     EQU $05
DEF abilityFocus     EQU $06
DEF abilityBarrage   EQU $07
DEF abilityBeam      EQU $08
DEF abilityBite      EQU $09
DEF abilityBlast     EQU $0A
DEF abilityBlaze     EQU $0B
DEF abilityBoost     EQU $0C
DEF abilityBramble   EQU $0D
DEF abilityBurrow    EQU $0E
DEF abilityCarnage   EQU $0F
DEF abilityCharge    EQU $10
DEF abilityChoke     EQU $11
DEF abilityClaw      EQU $12
DEF abilityCoil      EQU $13
DEF abilityConsume   EQU $14
DEF abilityCrack     EQU $15
DEF abilityCremate   EQU $16
DEF abilityCrumble   EQU $17
DEF abilityCrush     EQU $18
DEF abilityCurse     EQU $19
DEF abilityCute      EQU $1A
DEF abilityCyclone   EQU $1B
DEF abilityDevour    EQU $1C
DEF abilityDream     EQU $1D
DEF abilityDrown     EQU $1E
DEF abilityFang      EQU $1F
DEF abilityFlame     EQU $20
DEF abilityFlash     EQU $21
DEF abilityFlock     EQU $22
DEF abilityFortune   EQU $23
DEF abilityFrenzy    EQU $24
DEF abilityGale      EQU $25
DEF abilityGoo       EQU $26
DEF abilityGravity   EQU $27
DEF abilityGust      EQU $28
DEF abilityHaunt     EQU $29
DEF abilityHeal      EQU $2A
DEF abilityIgnite    EQU $2B
DEF abilityImpale    EQU $2C
DEF abilityInfect    EQU $2D
DEF abilityInferno   EQU $2E
DEF abilityInk       EQU $2F
DEF abilityJiggle    EQU $30
DEF abilityJolt      EQU $31
DEF abilityLamp      EQU $32
DEF abilityLeaf      EQU $33
DEF abilityMagma     EQU $34
DEF abilityMaul      EQU $35
DEF abilityMelody    EQU $36
DEF abilityMend      EQU $37
DEF abilityMist      EQU $38
DEF abilityMunch     EQU $39
DEF abilityPack      EQU $3A
DEF abilityPetrify   EQU $3B
DEF abilityPinch     EQU $3C
DEF abilityPollen    EQU $3D
DEF abilityPrism     EQU $3E
DEF abilityPummel    EQU $3F
DEF abilityPunch     EQU $40
DEF abilityQuake     EQU $41
DEF abilityRoar      EQU $42
DEF abilityRoots     EQU $43
DEF abilityScratch   EQU $44
DEF abilitySever     EQU $45
DEF abilityShade     EQU $46
DEF abilityShake     EQU $47
DEF abilityShield    EQU $48
DEF abilityShock     EQU $49
DEF abilityShred     EQU $4A
DEF abilitySlide     EQU $4B
DEF abilitySoar      EQU $4C
DEF abilitySonic     EQU $4D
DEF abilitySpark     EQU $4E
DEF abilitySponge    EQU $4F
DEF abilitySpore     EQU $50
DEF abilitySquirt    EQU $51
DEF abilitySting     EQU $52
DEF abilityStorm     EQU $53
DEF abilitySwarm     EQU $54
DEF abilitySwing     EQU $55
DEF abilitySyphon    EQU $56
DEF abilityTackle    EQU $57
DEF abilityTangle    EQU $58
DEF abilityTempest   EQU $59
DEF abilityTerror    EQU $5A
DEF abilityThorns    EQU $5B
DEF abilityThrust    EQU $5C
DEF abilityThunder   EQU $5D
DEF abilityTic_Toc   EQU $5E
DEF abilityTide      EQU $5F
DEF abilityTimber    EQU $60
DEF abilityTsunami   EQU $61
DEF abilityTurtle    EQU $62
DEF abilityVampire   EQU $63
DEF abilityVortex    EQU $64
DEF abilityWhirl     EQU $65
DEF abilityWreck     EQU $66



