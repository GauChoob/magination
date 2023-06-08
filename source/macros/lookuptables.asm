




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



