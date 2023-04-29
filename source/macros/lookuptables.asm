




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


luDreamCreatureNull                 EQU $FF
luDreamCreatureAbaquist             EQU $00
luDreamCreatureAgovo                EQU $01
luDreamCreatureAlaban               EQU $02
luDreamCreatureArbolit              EQU $03
luDreamCreatureArboll               EQU $04
luDreamCreatureAyebaw               EQU $05
luDreamCreatureBhatar               EQU $06
luDreamCreatureBisiwog              EQU $07
luDreamCreatureBlackAgovo           EQU $08
luDreamCreatureBolt_Hyren           EQU $09
luDreamCreatureBorgor               EQU $0A
luDreamCreatureBrub                 EQU $0B
luDreamCreatureBwill                EQU $0C
luDreamCreatureCave_Hyren           EQU $0D
luDreamCreatureCaveRudwot           EQU $0E
luDreamCreatureChaos_Jile           EQU $0F
luDreamCreatureCoralHyren           EQU $10
luDreamCreatureCore_Grag            EQU $11
luDreamCreatureCore_Hyren           EQU $12
luDreamCreatureDarkAyebaw           EQU $13
luDreamCreatureDarkVellup           EQU $14
luDreamCreatureDeep_Hyren           EQU $15
luDreamCreatureDiobor               EQU $16
luDreamCreatureDrakan               EQU $17
luDreamCreatureDryteFiend           EQU $18
luDreamCreatureEebit                EQU $19
luDreamCreatureEpik                 EQU $1A
luDreamCreatureFlameHyren           EQU $1B
luDreamCreatureFurok                EQU $1C
luDreamCreatureGhostBwisp           EQU $1D
luDreamCreatureGiantKorit           EQU $1E
luDreamCreatureGraw                 EQU $1F
luDreamCreatureGrax                 EQU $20
luDreamCreatureGum_Gum              EQU $21
luDreamCreatureHook_Wing            EQU $22
luDreamCreatureJingjack             EQU $23
luDreamCreatureKarak                EQU $24
luDreamCreatureKazor                EQU $25
luDreamCreatureKelthet              EQU $26
luDreamCreatureKletch               EQU $27
luDreamCreatureKoil                 EQU $28
luDreamCreatureLava_Aq              EQU $29
luDreamCreatureLavaArboll           EQU $2A
luDreamCreatureLavaBalmnt           EQU $2B
luDreamCreatureLeaf_Chogo           EQU $2C
luDreamCreatureLeaf_Hyren           EQU $2D
luDreamCreatureMagmaHyren           EQU $2E
luDreamCreatureMegathan             EQU $2F
luDreamCreatureMush_Hyren           EQU $30
luDreamCreatureOrathan_F            EQU $31
luDreamCreatureOrish                EQU $32
luDreamCreatureOrmagon              EQU $33
luDreamCreatureOrpus                EQU $34
luDreamCreatureParalit              EQU $35
luDreamCreatureParmalag             EQU $36
luDreamCreaturePlatheus             EQU $37
luDreamCreaturePlith                EQU $38
luDreamCreaturePorkuslime           EQU $39
luDreamCreatureQuor                 EQU $3A
luDreamCreatureRabbage              EQU $3B
luDreamCreatureRaxis                EQU $3C
luDreamCreatureRudwot               EQU $3D
luDreamCreatureSabreback            EQU $3E
luDreamCreatureSarbil               EQU $3F
luDreamCreatureSea_Jile             EQU $40
luDreamCreatureShadwKarak           EQU $41
luDreamCreatureShadwVinoc           EQU $42
luDreamCreatureSharbloot            EQU $43
luDreamCreatureShryque              EQU $44
luDreamCreatureSphor                EQU $45
luDreamCreatureSpindle              EQU $46
luDreamCreatureThundrHyrn           EQU $47
luDreamCreatureTimberHyrn           EQU $48
luDreamCreatureTreebit              EQU $49
luDreamCreatureTusk_Bwisp           EQU $4A
luDreamCreatureTwee                 EQU $4B
luDreamCreatureVashp                EQU $4C
luDreamCreatureVellup               EQU $4D
luDreamCreatureVile_Yogu            EQU $4E
luDreamCreatureVinoc                EQU $4F
luDreamCreatureVulbor               EQU $50
luDreamCreatureWasperine            EQU $51
luDreamCreatureWeebat               EQU $52
luDreamCreatureWeebo                EQU $53
luDreamCreatureXyx                  EQU $54
luDreamCreatureYvohcna              EQU $55
luDreamCreaturePlAcEhOlDr56         EQU $56
luDreamCreaturePlAcEhOlDr57         EQU $57
luDreamCreatureMAGI                 EQU $58
luDreamCreatureTony                 EQU $58
luDreamCreatureTogoth               EQU $59
luDreamCreatureOgar                 EQU $5A
luDreamCreatureKorremar             EQU $5B
luDreamCreatureWarrada              EQU $5C
luDreamCreatureKorg                 EQU $5D
luDreamCreatureZet                  EQU $5E
luDreamCreatureMorag                EQU $5F
luDreamCreatureAgram60              EQU $60
luDreamCreatureAgram61              EQU $61
luDreamCreatureAgram62              EQU $62
luDreamCreatureShadowMagi63         EQU $63
luDreamCreatureShadowMagi64         EQU $64
luDreamCreatureShadowMagi65         EQU $65
luDreamCreatureShadowMagi66         EQU $66
luDreamCreatureShadowMagi67         EQU $67
luDreamCreatureShadowMagi68         EQU $68
luDreamCreatureShadowMagi69         EQU $69
luDreamCreatureShadowMagi70         EQU $6A
luDreamCreatureSalafy               EQU $6B
luDreamCreature6C                   EQU $6C
luDreamCreatureEnd                  EQU $6D



;00
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



