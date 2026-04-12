import kaitai_struct_nim_runtime
import options

type
  GrowtopiaWorld* = ref object of KaitaiStruct
    `version`*: uint16
    `unk1`*: uint32
    `name`*: GrowtopiaWorld_GtStr
    `width`*: uint32
    `height`*: uint32
    `numTiles`*: uint32
    `unk2`*: seq[byte]
    `tiles`*: seq[GrowtopiaWorld_WorldTile]
    `unk3`*: seq[byte]
    `numObjects`*: uint32
    `lastObjectUid`*: uint32
    `objects`*: seq[GrowtopiaWorld_WorldObject]
    `parent`*: KaitaiStruct
  GrowtopiaWorld_ARGB* = ref object of KaitaiStruct
    `a`*: uint8
    `r`*: uint8
    `g`*: uint8
    `b`*: uint8
    `parent`*: GrowtopiaWorld_SilkWormExtra
  GrowtopiaWorld_AchievementBlockExtra* = ref object of KaitaiStruct
    `unk1`*: uint32
    `achievementId`*: uint8
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_AdventureBeginsExtra* = ref object of KaitaiStruct
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_AngelicCountingCloudExtra* = ref object of KaitaiStruct
    `state`*: GrowtopiaWorld_AngelicCountingCloudExtra_States
    `unk1`*: uint16
    `asciiCode`*: uint8
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_AngelicCountingCloudExtra_States* = enum
    raffling = 1
    done_raffling = 2
  GrowtopiaWorld_AudioRackExtra* = ref object of KaitaiStruct
    `note`*: GrowtopiaWorld_GtStr
    `volume`*: uint32
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_BalloonOMaticExtra* = ref object of KaitaiStruct
    `totalRarity`*: uint32
    `teamType`*: uint8
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_CborData* = ref object of KaitaiStruct
    `lenData`*: uint32
    `data`*: seq[byte]
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_ChallengeTimerExtra* = ref object of KaitaiStruct
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_ChemsynthTankExtra* = ref object of KaitaiStruct
    `currentChemId`*: uint32
    `supposedChemId`*: uint32
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_ContainmentFieldPowerNodeExtra* = ref object of KaitaiStruct
    `timeMs`*: uint32
    `numLinkedNodes`*: uint32
    `linkedNodes`*: seq[uint32]
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_CookingOvenExtra* = ref object of KaitaiStruct
    `tempLevel`*: uint32
    `ingredientListSize`*: uint32
    `ingredients`*: seq[GrowtopiaWorld_CookingOvenExtra_Ingredient]
    `unk1`*: uint32
    `unk2`*: uint32
    `unk3`*: uint32
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_CookingOvenExtra_Ingredient* = ref object of KaitaiStruct
    `itemId`*: uint32
    `timeAdded`*: uint32
    `parent`*: GrowtopiaWorld_CookingOvenExtra
  GrowtopiaWorld_CountryFlagExtra* = ref object of KaitaiStruct
    `country`*: GrowtopiaWorld_GtStr
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_CrimeInProgressExtra* = ref object of KaitaiStruct
    `crimeName`*: GrowtopiaWorld_GtStr
    `crimeIndex`*: uint32
    `unk1`*: uint8
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_CrystalExtra* = ref object of KaitaiStruct
    `numCrystals`*: uint16
    `crystals`*: seq[uint8]
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_CybotExtra* = ref object of KaitaiStruct
    `numCommands`*: uint32
    `commands`*: seq[GrowtopiaWorld_CybotExtra_Command]
    `timer`*: uint32
    `isActivated`*: uint32
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_CybotExtra_Command* = ref object of KaitaiStruct
    `commandId`*: uint32
    `isCommandUsed`*: uint32
    `unk1`*: seq[byte]
    `parent`*: GrowtopiaWorld_CybotExtra
  GrowtopiaWorld_DataBedrockExtra* = ref object of KaitaiStruct
    `unk1`*: seq[byte]
    `pad1`*: seq[byte]
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_DiceExtra* = ref object of KaitaiStruct
    `symbol`*: uint8
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_DisplayBlockExtra* = ref object of KaitaiStruct
    `itemId`*: uint32
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_DnaExtractorExtra* = ref object of KaitaiStruct
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_DoorExtra* = ref object of KaitaiStruct
    `label`*: GrowtopiaWorld_GtStr
    `flags`*: uint8
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_FishTankPortExtra* = ref object of KaitaiStruct
    `flags`*: uint8
    `fishDataLength`*: uint32
    `fishes`*: seq[GrowtopiaWorld_FishTankPortExtra_FishInfo]
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_FishTankPortExtra_FishInfo* = ref object of KaitaiStruct
    `itemId`*: uint32
    `lbs`*: uint32
    `parent`*: GrowtopiaWorld_FishTankPortExtra
  GrowtopiaWorld_FishWallMountExtra* = ref object of KaitaiStruct
    `label`*: GrowtopiaWorld_GtStr
    `itemId`*: uint32
    `lbs`*: uint8
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_ForgeExtra* = ref object of KaitaiStruct
    `temperature`*: uint32
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_FossilPrepStationExtra* = ref object of KaitaiStruct
    `unk1`*: uint32
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_FriendsEntranceExtra* = ref object of KaitaiStruct
    `ownerUserid`*: uint32
    `unk1`*: seq[byte]
    `numAllowedFriendsUserid`*: uint16
    `allowedFriendsUserid`*: seq[uint32]
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_GameGeneratorExtra* = ref object of KaitaiStruct
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_GameGraveExtra* = ref object of KaitaiStruct
    `teamId`*: uint8
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_GeigerChargerExtra* = ref object of KaitaiStruct
    `unk1`*: seq[byte]
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_GivingTreeExtra* = ref object of KaitaiStruct
    `harvested`*: uint8
    `age`*: uint16
    `unk1`*: uint16
    `decorationPercentage`*: uint8
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_GrowscanExtra* = ref object of KaitaiStruct
    `unk1`*: uint8
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_GtStr* = ref object of KaitaiStruct
    `lenData`*: uint16
    `str`*: string
    `parent`*: KaitaiStruct
  GrowtopiaWorld_GuildExtra* = ref object of KaitaiStruct
    `unk1`*: seq[byte]
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_HeartMonitorExtra* = ref object of KaitaiStruct
    `userId`*: uint32
    `growId`*: GrowtopiaWorld_GtStr
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_HowlerExtra* = ref object of KaitaiStruct
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_InfinityWeatherMachineExtra* = ref object of KaitaiStruct
    `intervalMins`*: uint32
    `numWeatherMachines`*: uint32
    `weatherMachines`*: seq[uint32]
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_ItemSuckerExtra* = ref object of KaitaiStruct
    `itemId`*: uint32
    `itemAmount`*: uint32
    `flags`*: uint16
    `itemLimit`*: uint32
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_KrakensGalaticBlockExtra* = ref object of KaitaiStruct
    `patternNumber`*: uint8
    `unk1`*: seq[byte]
    `colorRgb`*: seq[byte]
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_LobsterTrapExtra* = ref object of KaitaiStruct
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_LockBotExtra* = ref object of KaitaiStruct
    `age`*: uint32
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_LockExtra* = ref object of KaitaiStruct
    `flag`*: uint8
    `ownerUserId`*: uint32
    `numAuthorizedUserids`*: uint32
    `authorizedUserids`*: seq[int32]
    `minimumLevel`*: uint32
    `worldTimer`*: uint32
    `guildLocksUnk`*: seq[byte]
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_MagicEggExtra* = ref object of KaitaiStruct
    `eggAmount`*: uint32
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_MannequinExtra* = ref object of KaitaiStruct
    `label`*: GrowtopiaWorld_GtStr
    `unk1`*: uint8
    `unk2`*: uint16
    `unk3`*: uint16
    `hat`*: uint16
    `shirt`*: uint16
    `pants`*: uint16
    `boots`*: uint16
    `face`*: uint16
    `hand`*: uint16
    `back`*: uint16
    `hair`*: uint16
    `neck`*: uint16
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_PaintingEaselExtra* = ref object of KaitaiStruct
    `itemId`*: uint32
    `label`*: GrowtopiaWorld_GtStr
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_PetBattleCageExtra* = ref object of KaitaiStruct
    `label`*: GrowtopiaWorld_GtStr
    `basePet`*: uint32
    `combinedPet1`*: uint32
    `combinedPet2`*: uint32
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_PetTrainerExtra* = ref object of KaitaiStruct
    `name`*: GrowtopiaWorld_GtStr
    `numPets`*: uint32
    `unk1`*: uint32
    `pets`*: seq[uint32]
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_PhoneBoothExtra* = ref object of KaitaiStruct
    `hat`*: uint16
    `shirt`*: uint16
    `pants`*: uint16
    `shoes`*: uint16
    `face`*: uint16
    `hand`*: uint16
    `back`*: uint16
    `hair`*: uint16
    `neck`*: uint16
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_PineappleGuzzlerExtra* = ref object of KaitaiStruct
    `pineappleFed`*: uint32
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_PortraitExtra* = ref object of KaitaiStruct
    `label`*: GrowtopiaWorld_GtStr
    `unk1`*: uint32
    `unk2`*: uint32
    `unk3`*: seq[byte]
    `unk4`*: uint8
    `unk5`*: uint16
    `face`*: uint16
    `hat`*: uint16
    `hair`*: uint16
    `unk6`*: uint32
    `infinityCrownData`*: GrowtopiaWorld_GtStr
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_ProviderExtra* = ref object of KaitaiStruct
    `age`*: uint32
    `pad1`*: seq[byte]
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_SafeVaultExtra* = ref object of KaitaiStruct
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_SeedExtra* = ref object of KaitaiStruct
    `age`*: uint32
    `fruitCount`*: uint8
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_SewingMachineExtra* = ref object of KaitaiStruct
    `numBoltIds`*: uint32
    `boltIds`*: seq[uint32]
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_ShelfExtra* = ref object of KaitaiStruct
    `topLeftItemId`*: uint32
    `topRightItemId`*: uint32
    `bottomLeftItemId`*: uint32
    `bottomRightItemId`*: uint32
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_SignExtra* = ref object of KaitaiStruct
    `label`*: GrowtopiaWorld_GtStr
    `pad1`*: seq[byte]
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_SilkWormExtra* = ref object of KaitaiStruct
    `flags`*: uint8
    `name`*: GrowtopiaWorld_GtStr
    `ageSec`*: uint32
    `unk1`*: uint32
    `unk2`*: uint32
    `canBeFed`*: uint8
    `foodSaturation`*: uint32
    `waterSaturation`*: uint32
    `colorArgb`*: GrowtopiaWorld_ARGB
    `sickDuration`*: uint32
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_SolarCollectorExtra* = ref object of KaitaiStruct
    `unk1`*: seq[byte]
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_SpiritBoardExtra* = ref object of KaitaiStruct
    `playerRequired`*: uint32
    `unk1`*: GrowtopiaWorld_GtStr
    `command`*: GrowtopiaWorld_GtStr
    `numRequiredItems`*: uint32
    `requiredItems`*: seq[uint32]
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_SpiritStorageUnitExtra* = ref object of KaitaiStruct
    `ghostJarCount`*: uint32
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_SpotlightExtra* = ref object of KaitaiStruct
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_SteamEngineExtra* = ref object of KaitaiStruct
    `temperature`*: uint32
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_SteamOrganExtra* = ref object of KaitaiStruct
    `instrumentType`*: uint8
    `note`*: uint32
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_StorageBoxXtremeExtra* = ref object of KaitaiStruct
    `dataLen`*: uint16
    `items`*: seq[GrowtopiaWorld_StorageBoxXtremeExtra_StorageItem]
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_StorageBoxXtremeExtra_StorageItem* = ref object of KaitaiStruct
    `pad1`*: seq[byte]
    `itemId`*: uint32
    `pad2`*: seq[byte]
    `itemAmt`*: uint32
    `parent`*: GrowtopiaWorld_StorageBoxXtremeExtra
  GrowtopiaWorld_StormyCloudExtra* = ref object of KaitaiStruct
    `stingDuration`*: uint32
    `isSolid`*: uint32
    `nonSolidDuration`*: uint32
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_TemporaryPlatformExtra* = ref object of KaitaiStruct
    `unk1`*: uint32
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_TesseractManipulatorExtra* = ref object of KaitaiStruct
    `gemsLeft`*: uint32
    `nextUpdateMs`*: uint32
    `itemId`*: uint32
    `enabled`*: uint32
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_TombRobberExtra* = ref object of KaitaiStruct
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_TrainingPortExtra* = ref object of KaitaiStruct
    `fishLb`*: uint32
    `status`*: uint16
    `itemId`*: uint32
    `totalExp`*: uint32
    `unk1`*: seq[byte]
    `fishLevel`*: uint32
    `unk2`*: uint32
    `unk3`*: seq[byte]
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_UnknownExtra* = ref object of KaitaiStruct
    `thisIsJustToErrorOutKaitaiPls`*: seq[byte]
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_VendingMachineExtra* = ref object of KaitaiStruct
    `itemId`*: uint32
    `price`*: int32
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_VipEntranceExtra* = ref object of KaitaiStruct
    `unk1`*: uint8
    `ownerUserid`*: uint32
    `numAllowedUserids`*: uint32
    `allowedUserids`*: seq[uint32]
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_WeatherMachine1Extra* = ref object of KaitaiStruct
    `settings`*: seq[byte]
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_WeatherMachine2Extra* = ref object of KaitaiStruct
    `itemId`*: uint32
    `gravity`*: uint32
    `flag`*: uint8
    `parent`*: GrowtopiaWorld_WorldTile
  GrowtopiaWorld_WorldObject* = ref object of KaitaiStruct
    `itemId`*: uint16
    `x`*: float32
    `y`*: float32
    `amount`*: uint8
    `flag`*: uint8
    `uid`*: uint32
    `parent`*: GrowtopiaWorld
  GrowtopiaWorld_WorldTile* = ref object of KaitaiStruct
    `fg`*: uint16
    `bg`*: uint16
    `invalidTileFgBgKaitaiCrasher`*: seq[byte]
    `parentBlockIndex`*: uint16
    `flag`*: uint16
    `parentLock`*: uint16
    `extraDataType`*: uint8
    `tileExtra`*: KaitaiStruct
    `cborData`*: GrowtopiaWorld_CborData
    `parent`*: GrowtopiaWorld
  GrowtopiaWorld_XenoniteExtra* = ref object of KaitaiStruct
    `unk1`*: seq[byte]
    `parent`*: GrowtopiaWorld_WorldTile

proc read*(_: typedesc[GrowtopiaWorld], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): GrowtopiaWorld
proc read*(_: typedesc[GrowtopiaWorld_ARGB], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_SilkWormExtra): GrowtopiaWorld_ARGB
proc read*(_: typedesc[GrowtopiaWorld_AchievementBlockExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_AchievementBlockExtra
proc read*(_: typedesc[GrowtopiaWorld_AdventureBeginsExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_AdventureBeginsExtra
proc read*(_: typedesc[GrowtopiaWorld_AngelicCountingCloudExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_AngelicCountingCloudExtra
proc read*(_: typedesc[GrowtopiaWorld_AudioRackExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_AudioRackExtra
proc read*(_: typedesc[GrowtopiaWorld_BalloonOMaticExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_BalloonOMaticExtra
proc read*(_: typedesc[GrowtopiaWorld_CborData], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_CborData
proc read*(_: typedesc[GrowtopiaWorld_ChallengeTimerExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_ChallengeTimerExtra
proc read*(_: typedesc[GrowtopiaWorld_ChemsynthTankExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_ChemsynthTankExtra
proc read*(_: typedesc[GrowtopiaWorld_ContainmentFieldPowerNodeExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_ContainmentFieldPowerNodeExtra
proc read*(_: typedesc[GrowtopiaWorld_CookingOvenExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_CookingOvenExtra
proc read*(_: typedesc[GrowtopiaWorld_CookingOvenExtra_Ingredient], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_CookingOvenExtra): GrowtopiaWorld_CookingOvenExtra_Ingredient
proc read*(_: typedesc[GrowtopiaWorld_CountryFlagExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_CountryFlagExtra
proc read*(_: typedesc[GrowtopiaWorld_CrimeInProgressExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_CrimeInProgressExtra
proc read*(_: typedesc[GrowtopiaWorld_CrystalExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_CrystalExtra
proc read*(_: typedesc[GrowtopiaWorld_CybotExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_CybotExtra
proc read*(_: typedesc[GrowtopiaWorld_CybotExtra_Command], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_CybotExtra): GrowtopiaWorld_CybotExtra_Command
proc read*(_: typedesc[GrowtopiaWorld_DataBedrockExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_DataBedrockExtra
proc read*(_: typedesc[GrowtopiaWorld_DiceExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_DiceExtra
proc read*(_: typedesc[GrowtopiaWorld_DisplayBlockExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_DisplayBlockExtra
proc read*(_: typedesc[GrowtopiaWorld_DnaExtractorExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_DnaExtractorExtra
proc read*(_: typedesc[GrowtopiaWorld_DoorExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_DoorExtra
proc read*(_: typedesc[GrowtopiaWorld_FishTankPortExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_FishTankPortExtra
proc read*(_: typedesc[GrowtopiaWorld_FishTankPortExtra_FishInfo], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_FishTankPortExtra): GrowtopiaWorld_FishTankPortExtra_FishInfo
proc read*(_: typedesc[GrowtopiaWorld_FishWallMountExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_FishWallMountExtra
proc read*(_: typedesc[GrowtopiaWorld_ForgeExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_ForgeExtra
proc read*(_: typedesc[GrowtopiaWorld_FossilPrepStationExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_FossilPrepStationExtra
proc read*(_: typedesc[GrowtopiaWorld_FriendsEntranceExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_FriendsEntranceExtra
proc read*(_: typedesc[GrowtopiaWorld_GameGeneratorExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_GameGeneratorExtra
proc read*(_: typedesc[GrowtopiaWorld_GameGraveExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_GameGraveExtra
proc read*(_: typedesc[GrowtopiaWorld_GeigerChargerExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_GeigerChargerExtra
proc read*(_: typedesc[GrowtopiaWorld_GivingTreeExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_GivingTreeExtra
proc read*(_: typedesc[GrowtopiaWorld_GrowscanExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_GrowscanExtra
proc read*(_: typedesc[GrowtopiaWorld_GtStr], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): GrowtopiaWorld_GtStr
proc read*(_: typedesc[GrowtopiaWorld_GuildExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_GuildExtra
proc read*(_: typedesc[GrowtopiaWorld_HeartMonitorExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_HeartMonitorExtra
proc read*(_: typedesc[GrowtopiaWorld_HowlerExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_HowlerExtra
proc read*(_: typedesc[GrowtopiaWorld_InfinityWeatherMachineExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_InfinityWeatherMachineExtra
proc read*(_: typedesc[GrowtopiaWorld_ItemSuckerExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_ItemSuckerExtra
proc read*(_: typedesc[GrowtopiaWorld_KrakensGalaticBlockExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_KrakensGalaticBlockExtra
proc read*(_: typedesc[GrowtopiaWorld_LobsterTrapExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_LobsterTrapExtra
proc read*(_: typedesc[GrowtopiaWorld_LockBotExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_LockBotExtra
proc read*(_: typedesc[GrowtopiaWorld_LockExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_LockExtra
proc read*(_: typedesc[GrowtopiaWorld_MagicEggExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_MagicEggExtra
proc read*(_: typedesc[GrowtopiaWorld_MannequinExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_MannequinExtra
proc read*(_: typedesc[GrowtopiaWorld_PaintingEaselExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_PaintingEaselExtra
proc read*(_: typedesc[GrowtopiaWorld_PetBattleCageExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_PetBattleCageExtra
proc read*(_: typedesc[GrowtopiaWorld_PetTrainerExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_PetTrainerExtra
proc read*(_: typedesc[GrowtopiaWorld_PhoneBoothExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_PhoneBoothExtra
proc read*(_: typedesc[GrowtopiaWorld_PineappleGuzzlerExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_PineappleGuzzlerExtra
proc read*(_: typedesc[GrowtopiaWorld_PortraitExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_PortraitExtra
proc read*(_: typedesc[GrowtopiaWorld_ProviderExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_ProviderExtra
proc read*(_: typedesc[GrowtopiaWorld_SafeVaultExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_SafeVaultExtra
proc read*(_: typedesc[GrowtopiaWorld_SeedExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_SeedExtra
proc read*(_: typedesc[GrowtopiaWorld_SewingMachineExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_SewingMachineExtra
proc read*(_: typedesc[GrowtopiaWorld_ShelfExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_ShelfExtra
proc read*(_: typedesc[GrowtopiaWorld_SignExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_SignExtra
proc read*(_: typedesc[GrowtopiaWorld_SilkWormExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_SilkWormExtra
proc read*(_: typedesc[GrowtopiaWorld_SolarCollectorExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_SolarCollectorExtra
proc read*(_: typedesc[GrowtopiaWorld_SpiritBoardExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_SpiritBoardExtra
proc read*(_: typedesc[GrowtopiaWorld_SpiritStorageUnitExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_SpiritStorageUnitExtra
proc read*(_: typedesc[GrowtopiaWorld_SpotlightExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_SpotlightExtra
proc read*(_: typedesc[GrowtopiaWorld_SteamEngineExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_SteamEngineExtra
proc read*(_: typedesc[GrowtopiaWorld_SteamOrganExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_SteamOrganExtra
proc read*(_: typedesc[GrowtopiaWorld_StorageBoxXtremeExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_StorageBoxXtremeExtra
proc read*(_: typedesc[GrowtopiaWorld_StorageBoxXtremeExtra_StorageItem], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_StorageBoxXtremeExtra): GrowtopiaWorld_StorageBoxXtremeExtra_StorageItem
proc read*(_: typedesc[GrowtopiaWorld_StormyCloudExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_StormyCloudExtra
proc read*(_: typedesc[GrowtopiaWorld_TemporaryPlatformExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_TemporaryPlatformExtra
proc read*(_: typedesc[GrowtopiaWorld_TesseractManipulatorExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_TesseractManipulatorExtra
proc read*(_: typedesc[GrowtopiaWorld_TombRobberExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_TombRobberExtra
proc read*(_: typedesc[GrowtopiaWorld_TrainingPortExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_TrainingPortExtra
proc read*(_: typedesc[GrowtopiaWorld_UnknownExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_UnknownExtra
proc read*(_: typedesc[GrowtopiaWorld_VendingMachineExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_VendingMachineExtra
proc read*(_: typedesc[GrowtopiaWorld_VipEntranceExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_VipEntranceExtra
proc read*(_: typedesc[GrowtopiaWorld_WeatherMachine1Extra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_WeatherMachine1Extra
proc read*(_: typedesc[GrowtopiaWorld_WeatherMachine2Extra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_WeatherMachine2Extra
proc read*(_: typedesc[GrowtopiaWorld_WorldObject], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld): GrowtopiaWorld_WorldObject
proc read*(_: typedesc[GrowtopiaWorld_WorldTile], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld): GrowtopiaWorld_WorldTile
proc read*(_: typedesc[GrowtopiaWorld_XenoniteExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_XenoniteExtra


proc read*(_: typedesc[GrowtopiaWorld], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): GrowtopiaWorld =
  template this: untyped = result
  this = new(GrowtopiaWorld)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let versionExpr = this.io.readU2le()
  this.version = versionExpr
  let unk1Expr = this.io.readU4le()
  this.unk1 = unk1Expr
  let nameExpr = GrowtopiaWorld_GtStr.read(this.io, this.root, this)
  this.name = nameExpr
  let widthExpr = this.io.readU4le()
  this.width = widthExpr
  let heightExpr = this.io.readU4le()
  this.height = heightExpr
  let numTilesExpr = this.io.readU4le()
  this.numTiles = numTilesExpr
  let unk2Expr = this.io.readBytes(int(5))
  this.unk2 = unk2Expr
  for i in 0 ..< int(this.numTiles):
    let it = GrowtopiaWorld_WorldTile.read(this.io, this.root, this)
    this.tiles.add(it)
  let unk3Expr = this.io.readBytes(int(12))
  this.unk3 = unk3Expr
  let numObjectsExpr = this.io.readU4le()
  this.numObjects = numObjectsExpr
  let lastObjectUidExpr = this.io.readU4le()
  this.lastObjectUid = lastObjectUidExpr
  for i in 0 ..< int(this.numObjects):
    let it = GrowtopiaWorld_WorldObject.read(this.io, this.root, this)
    this.objects.add(it)

proc fromFile*(_: typedesc[GrowtopiaWorld], filename: string): GrowtopiaWorld =
  GrowtopiaWorld.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_ARGB], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_SilkWormExtra): GrowtopiaWorld_ARGB =
  template this: untyped = result
  this = new(GrowtopiaWorld_ARGB)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let aExpr = this.io.readU1()
  this.a = aExpr
  let rExpr = this.io.readU1()
  this.r = rExpr
  let gExpr = this.io.readU1()
  this.g = gExpr
  let bExpr = this.io.readU1()
  this.b = bExpr

proc fromFile*(_: typedesc[GrowtopiaWorld_ARGB], filename: string): GrowtopiaWorld_ARGB =
  GrowtopiaWorld_ARGB.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_AchievementBlockExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_AchievementBlockExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_AchievementBlockExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let unk1Expr = this.io.readU4le()
  this.unk1 = unk1Expr
  let achievementIdExpr = this.io.readU1()
  this.achievementId = achievementIdExpr

proc fromFile*(_: typedesc[GrowtopiaWorld_AchievementBlockExtra], filename: string): GrowtopiaWorld_AchievementBlockExtra =
  GrowtopiaWorld_AchievementBlockExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_AdventureBeginsExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_AdventureBeginsExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_AdventureBeginsExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent


proc fromFile*(_: typedesc[GrowtopiaWorld_AdventureBeginsExtra], filename: string): GrowtopiaWorld_AdventureBeginsExtra =
  GrowtopiaWorld_AdventureBeginsExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_AngelicCountingCloudExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_AngelicCountingCloudExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_AngelicCountingCloudExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let stateExpr = GrowtopiaWorld_AngelicCountingCloudExtra_States(this.io.readU4le())
  this.state = stateExpr
  let unk1Expr = this.io.readU2le()
  this.unk1 = unk1Expr
  if this.state == growtopia_world.done_raffling:
    let asciiCodeExpr = this.io.readU1()
    this.asciiCode = asciiCodeExpr

proc fromFile*(_: typedesc[GrowtopiaWorld_AngelicCountingCloudExtra], filename: string): GrowtopiaWorld_AngelicCountingCloudExtra =
  GrowtopiaWorld_AngelicCountingCloudExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_AudioRackExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_AudioRackExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_AudioRackExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let noteExpr = GrowtopiaWorld_GtStr.read(this.io, this.root, this)
  this.note = noteExpr
  let volumeExpr = this.io.readU4le()
  this.volume = volumeExpr

proc fromFile*(_: typedesc[GrowtopiaWorld_AudioRackExtra], filename: string): GrowtopiaWorld_AudioRackExtra =
  GrowtopiaWorld_AudioRackExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_BalloonOMaticExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_BalloonOMaticExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_BalloonOMaticExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let totalRarityExpr = this.io.readU4le()
  this.totalRarity = totalRarityExpr
  let teamTypeExpr = this.io.readU1()
  this.teamType = teamTypeExpr

proc fromFile*(_: typedesc[GrowtopiaWorld_BalloonOMaticExtra], filename: string): GrowtopiaWorld_BalloonOMaticExtra =
  GrowtopiaWorld_BalloonOMaticExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_CborData], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_CborData =
  template this: untyped = result
  this = new(GrowtopiaWorld_CborData)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let lenDataExpr = this.io.readU4le()
  this.lenData = lenDataExpr
  let dataExpr = this.io.readBytes(int(this.lenData))
  this.data = dataExpr

proc fromFile*(_: typedesc[GrowtopiaWorld_CborData], filename: string): GrowtopiaWorld_CborData =
  GrowtopiaWorld_CborData.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_ChallengeTimerExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_ChallengeTimerExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_ChallengeTimerExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent


proc fromFile*(_: typedesc[GrowtopiaWorld_ChallengeTimerExtra], filename: string): GrowtopiaWorld_ChallengeTimerExtra =
  GrowtopiaWorld_ChallengeTimerExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_ChemsynthTankExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_ChemsynthTankExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_ChemsynthTankExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let currentChemIdExpr = this.io.readU4le()
  this.currentChemId = currentChemIdExpr
  let supposedChemIdExpr = this.io.readU4le()
  this.supposedChemId = supposedChemIdExpr

proc fromFile*(_: typedesc[GrowtopiaWorld_ChemsynthTankExtra], filename: string): GrowtopiaWorld_ChemsynthTankExtra =
  GrowtopiaWorld_ChemsynthTankExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_ContainmentFieldPowerNodeExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_ContainmentFieldPowerNodeExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_ContainmentFieldPowerNodeExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let timeMsExpr = this.io.readU4le()
  this.timeMs = timeMsExpr
  let numLinkedNodesExpr = this.io.readU4le()
  this.numLinkedNodes = numLinkedNodesExpr
  for i in 0 ..< int(this.numLinkedNodes):
    let it = this.io.readU4le()
    this.linkedNodes.add(it)

proc fromFile*(_: typedesc[GrowtopiaWorld_ContainmentFieldPowerNodeExtra], filename: string): GrowtopiaWorld_ContainmentFieldPowerNodeExtra =
  GrowtopiaWorld_ContainmentFieldPowerNodeExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_CookingOvenExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_CookingOvenExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_CookingOvenExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let tempLevelExpr = this.io.readU4le()
  this.tempLevel = tempLevelExpr
  let ingredientListSizeExpr = this.io.readU4le()
  this.ingredientListSize = ingredientListSizeExpr
  for i in 0 ..< int(this.ingredientListSize div 2):
    let it = GrowtopiaWorld_CookingOvenExtra_Ingredient.read(this.io, this.root, this)
    this.ingredients.add(it)
  let unk1Expr = this.io.readU4le()
  this.unk1 = unk1Expr
  let unk2Expr = this.io.readU4le()
  this.unk2 = unk2Expr
  let unk3Expr = this.io.readU4le()
  this.unk3 = unk3Expr

proc fromFile*(_: typedesc[GrowtopiaWorld_CookingOvenExtra], filename: string): GrowtopiaWorld_CookingOvenExtra =
  GrowtopiaWorld_CookingOvenExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_CookingOvenExtra_Ingredient], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_CookingOvenExtra): GrowtopiaWorld_CookingOvenExtra_Ingredient =
  template this: untyped = result
  this = new(GrowtopiaWorld_CookingOvenExtra_Ingredient)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let itemIdExpr = this.io.readU4le()
  this.itemId = itemIdExpr
  let timeAddedExpr = this.io.readU4le()
  this.timeAdded = timeAddedExpr

proc fromFile*(_: typedesc[GrowtopiaWorld_CookingOvenExtra_Ingredient], filename: string): GrowtopiaWorld_CookingOvenExtra_Ingredient =
  GrowtopiaWorld_CookingOvenExtra_Ingredient.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_CountryFlagExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_CountryFlagExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_CountryFlagExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  if this.parent.fg == 3394:
    let countryExpr = GrowtopiaWorld_GtStr.read(this.io, this.root, this)
    this.country = countryExpr

proc fromFile*(_: typedesc[GrowtopiaWorld_CountryFlagExtra], filename: string): GrowtopiaWorld_CountryFlagExtra =
  GrowtopiaWorld_CountryFlagExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_CrimeInProgressExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_CrimeInProgressExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_CrimeInProgressExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let crimeNameExpr = GrowtopiaWorld_GtStr.read(this.io, this.root, this)
  this.crimeName = crimeNameExpr
  let crimeIndexExpr = this.io.readU4le()
  this.crimeIndex = crimeIndexExpr
  let unk1Expr = this.io.readU1()
  this.unk1 = unk1Expr

proc fromFile*(_: typedesc[GrowtopiaWorld_CrimeInProgressExtra], filename: string): GrowtopiaWorld_CrimeInProgressExtra =
  GrowtopiaWorld_CrimeInProgressExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_CrystalExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_CrystalExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_CrystalExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let numCrystalsExpr = this.io.readU2le()
  this.numCrystals = numCrystalsExpr
  for i in 0 ..< int(this.numCrystals):
    let it = this.io.readU1()
    this.crystals.add(it)

proc fromFile*(_: typedesc[GrowtopiaWorld_CrystalExtra], filename: string): GrowtopiaWorld_CrystalExtra =
  GrowtopiaWorld_CrystalExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_CybotExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_CybotExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_CybotExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let numCommandsExpr = this.io.readU4le()
  this.numCommands = numCommandsExpr
  for i in 0 ..< int(this.numCommands):
    let it = GrowtopiaWorld_CybotExtra_Command.read(this.io, this.root, this)
    this.commands.add(it)
  let timerExpr = this.io.readU4le()
  this.timer = timerExpr
  let isActivatedExpr = this.io.readU4le()
  this.isActivated = isActivatedExpr

proc fromFile*(_: typedesc[GrowtopiaWorld_CybotExtra], filename: string): GrowtopiaWorld_CybotExtra =
  GrowtopiaWorld_CybotExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_CybotExtra_Command], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_CybotExtra): GrowtopiaWorld_CybotExtra_Command =
  template this: untyped = result
  this = new(GrowtopiaWorld_CybotExtra_Command)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let commandIdExpr = this.io.readU4le()
  this.commandId = commandIdExpr
  let isCommandUsedExpr = this.io.readU4le()
  this.isCommandUsed = isCommandUsedExpr
  let unk1Expr = this.io.readBytes(int(7))
  this.unk1 = unk1Expr

proc fromFile*(_: typedesc[GrowtopiaWorld_CybotExtra_Command], filename: string): GrowtopiaWorld_CybotExtra_Command =
  GrowtopiaWorld_CybotExtra_Command.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_DataBedrockExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_DataBedrockExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_DataBedrockExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let unk1Expr = this.io.readBytes(int(17))
  this.unk1 = unk1Expr
  let pad1Expr = this.io.readBytes(int(4))
  this.pad1 = pad1Expr

proc fromFile*(_: typedesc[GrowtopiaWorld_DataBedrockExtra], filename: string): GrowtopiaWorld_DataBedrockExtra =
  GrowtopiaWorld_DataBedrockExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_DiceExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_DiceExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_DiceExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let symbolExpr = this.io.readU1()
  this.symbol = symbolExpr

proc fromFile*(_: typedesc[GrowtopiaWorld_DiceExtra], filename: string): GrowtopiaWorld_DiceExtra =
  GrowtopiaWorld_DiceExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_DisplayBlockExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_DisplayBlockExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_DisplayBlockExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let itemIdExpr = this.io.readU4le()
  this.itemId = itemIdExpr

proc fromFile*(_: typedesc[GrowtopiaWorld_DisplayBlockExtra], filename: string): GrowtopiaWorld_DisplayBlockExtra =
  GrowtopiaWorld_DisplayBlockExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_DnaExtractorExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_DnaExtractorExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_DnaExtractorExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent


proc fromFile*(_: typedesc[GrowtopiaWorld_DnaExtractorExtra], filename: string): GrowtopiaWorld_DnaExtractorExtra =
  GrowtopiaWorld_DnaExtractorExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_DoorExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_DoorExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_DoorExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let labelExpr = GrowtopiaWorld_GtStr.read(this.io, this.root, this)
  this.label = labelExpr
  let flagsExpr = this.io.readU1()
  this.flags = flagsExpr

proc fromFile*(_: typedesc[GrowtopiaWorld_DoorExtra], filename: string): GrowtopiaWorld_DoorExtra =
  GrowtopiaWorld_DoorExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_FishTankPortExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_FishTankPortExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_FishTankPortExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let flagsExpr = this.io.readU1()
  this.flags = flagsExpr
  let fishDataLengthExpr = this.io.readU4le()
  this.fishDataLength = fishDataLengthExpr
  for i in 0 ..< int(this.fishDataLength div 2):
    let it = GrowtopiaWorld_FishTankPortExtra_FishInfo.read(this.io, this.root, this)
    this.fishes.add(it)

proc fromFile*(_: typedesc[GrowtopiaWorld_FishTankPortExtra], filename: string): GrowtopiaWorld_FishTankPortExtra =
  GrowtopiaWorld_FishTankPortExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_FishTankPortExtra_FishInfo], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_FishTankPortExtra): GrowtopiaWorld_FishTankPortExtra_FishInfo =
  template this: untyped = result
  this = new(GrowtopiaWorld_FishTankPortExtra_FishInfo)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let itemIdExpr = this.io.readU4le()
  this.itemId = itemIdExpr
  let lbsExpr = this.io.readU4le()
  this.lbs = lbsExpr

proc fromFile*(_: typedesc[GrowtopiaWorld_FishTankPortExtra_FishInfo], filename: string): GrowtopiaWorld_FishTankPortExtra_FishInfo =
  GrowtopiaWorld_FishTankPortExtra_FishInfo.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_FishWallMountExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_FishWallMountExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_FishWallMountExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let labelExpr = GrowtopiaWorld_GtStr.read(this.io, this.root, this)
  this.label = labelExpr
  let itemIdExpr = this.io.readU4le()
  this.itemId = itemIdExpr
  let lbsExpr = this.io.readU1()
  this.lbs = lbsExpr

proc fromFile*(_: typedesc[GrowtopiaWorld_FishWallMountExtra], filename: string): GrowtopiaWorld_FishWallMountExtra =
  GrowtopiaWorld_FishWallMountExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_ForgeExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_ForgeExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_ForgeExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let temperatureExpr = this.io.readU4le()
  this.temperature = temperatureExpr

proc fromFile*(_: typedesc[GrowtopiaWorld_ForgeExtra], filename: string): GrowtopiaWorld_ForgeExtra =
  GrowtopiaWorld_ForgeExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_FossilPrepStationExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_FossilPrepStationExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_FossilPrepStationExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let unk1Expr = this.io.readU4le()
  this.unk1 = unk1Expr

proc fromFile*(_: typedesc[GrowtopiaWorld_FossilPrepStationExtra], filename: string): GrowtopiaWorld_FossilPrepStationExtra =
  GrowtopiaWorld_FossilPrepStationExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_FriendsEntranceExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_FriendsEntranceExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_FriendsEntranceExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let ownerUseridExpr = this.io.readU4le()
  this.ownerUserid = ownerUseridExpr
  let unk1Expr = this.io.readBytes(int(2))
  this.unk1 = unk1Expr
  let numAllowedFriendsUseridExpr = this.io.readU2le()
  this.numAllowedFriendsUserid = numAllowedFriendsUseridExpr
  for i in 0 ..< int(this.numAllowedFriendsUserid):
    let it = this.io.readU4le()
    this.allowedFriendsUserid.add(it)

proc fromFile*(_: typedesc[GrowtopiaWorld_FriendsEntranceExtra], filename: string): GrowtopiaWorld_FriendsEntranceExtra =
  GrowtopiaWorld_FriendsEntranceExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_GameGeneratorExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_GameGeneratorExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_GameGeneratorExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent


proc fromFile*(_: typedesc[GrowtopiaWorld_GameGeneratorExtra], filename: string): GrowtopiaWorld_GameGeneratorExtra =
  GrowtopiaWorld_GameGeneratorExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_GameGraveExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_GameGraveExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_GameGraveExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let teamIdExpr = this.io.readU1()
  this.teamId = teamIdExpr

proc fromFile*(_: typedesc[GrowtopiaWorld_GameGraveExtra], filename: string): GrowtopiaWorld_GameGraveExtra =
  GrowtopiaWorld_GameGraveExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_GeigerChargerExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_GeigerChargerExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_GeigerChargerExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let unk1Expr = this.io.readBytes(int(4))
  this.unk1 = unk1Expr

proc fromFile*(_: typedesc[GrowtopiaWorld_GeigerChargerExtra], filename: string): GrowtopiaWorld_GeigerChargerExtra =
  GrowtopiaWorld_GeigerChargerExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_GivingTreeExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_GivingTreeExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_GivingTreeExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let harvestedExpr = this.io.readU1()
  this.harvested = harvestedExpr
  let ageExpr = this.io.readU2le()
  this.age = ageExpr
  let unk1Expr = this.io.readU2le()
  this.unk1 = unk1Expr
  let decorationPercentageExpr = this.io.readU1()
  this.decorationPercentage = decorationPercentageExpr

proc fromFile*(_: typedesc[GrowtopiaWorld_GivingTreeExtra], filename: string): GrowtopiaWorld_GivingTreeExtra =
  GrowtopiaWorld_GivingTreeExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_GrowscanExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_GrowscanExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_GrowscanExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let unk1Expr = this.io.readU1()
  this.unk1 = unk1Expr

proc fromFile*(_: typedesc[GrowtopiaWorld_GrowscanExtra], filename: string): GrowtopiaWorld_GrowscanExtra =
  GrowtopiaWorld_GrowscanExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_GtStr], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): GrowtopiaWorld_GtStr =
  template this: untyped = result
  this = new(GrowtopiaWorld_GtStr)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let lenDataExpr = this.io.readU2le()
  this.lenData = lenDataExpr
  let strExpr = encode(this.io.readBytes(int(this.lenData)), "ASCII")
  this.str = strExpr

proc fromFile*(_: typedesc[GrowtopiaWorld_GtStr], filename: string): GrowtopiaWorld_GtStr =
  GrowtopiaWorld_GtStr.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_GuildExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_GuildExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_GuildExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let unk1Expr = this.io.readBytes(int(17))
  this.unk1 = unk1Expr

proc fromFile*(_: typedesc[GrowtopiaWorld_GuildExtra], filename: string): GrowtopiaWorld_GuildExtra =
  GrowtopiaWorld_GuildExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_HeartMonitorExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_HeartMonitorExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_HeartMonitorExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let userIdExpr = this.io.readU4le()
  this.userId = userIdExpr
  let growIdExpr = GrowtopiaWorld_GtStr.read(this.io, this.root, this)
  this.growId = growIdExpr

proc fromFile*(_: typedesc[GrowtopiaWorld_HeartMonitorExtra], filename: string): GrowtopiaWorld_HeartMonitorExtra =
  GrowtopiaWorld_HeartMonitorExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_HowlerExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_HowlerExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_HowlerExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent


proc fromFile*(_: typedesc[GrowtopiaWorld_HowlerExtra], filename: string): GrowtopiaWorld_HowlerExtra =
  GrowtopiaWorld_HowlerExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_InfinityWeatherMachineExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_InfinityWeatherMachineExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_InfinityWeatherMachineExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let intervalMinsExpr = this.io.readU4le()
  this.intervalMins = intervalMinsExpr
  let numWeatherMachinesExpr = this.io.readU4le()
  this.numWeatherMachines = numWeatherMachinesExpr
  for i in 0 ..< int(this.numWeatherMachines):
    let it = this.io.readU4le()
    this.weatherMachines.add(it)

proc fromFile*(_: typedesc[GrowtopiaWorld_InfinityWeatherMachineExtra], filename: string): GrowtopiaWorld_InfinityWeatherMachineExtra =
  GrowtopiaWorld_InfinityWeatherMachineExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_ItemSuckerExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_ItemSuckerExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_ItemSuckerExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let itemIdExpr = this.io.readU4le()
  this.itemId = itemIdExpr
  let itemAmountExpr = this.io.readU4le()
  this.itemAmount = itemAmountExpr
  let flagsExpr = this.io.readU2le()
  this.flags = flagsExpr
  let itemLimitExpr = this.io.readU4le()
  this.itemLimit = itemLimitExpr

proc fromFile*(_: typedesc[GrowtopiaWorld_ItemSuckerExtra], filename: string): GrowtopiaWorld_ItemSuckerExtra =
  GrowtopiaWorld_ItemSuckerExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_KrakensGalaticBlockExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_KrakensGalaticBlockExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_KrakensGalaticBlockExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let patternNumberExpr = this.io.readU1()
  this.patternNumber = patternNumberExpr
  let unk1Expr = this.io.readBytes(int(4))
  this.unk1 = unk1Expr
  let colorRgbExpr = this.io.readBytes(int(3))
  this.colorRgb = colorRgbExpr

proc fromFile*(_: typedesc[GrowtopiaWorld_KrakensGalaticBlockExtra], filename: string): GrowtopiaWorld_KrakensGalaticBlockExtra =
  GrowtopiaWorld_KrakensGalaticBlockExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_LobsterTrapExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_LobsterTrapExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_LobsterTrapExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent


proc fromFile*(_: typedesc[GrowtopiaWorld_LobsterTrapExtra], filename: string): GrowtopiaWorld_LobsterTrapExtra =
  GrowtopiaWorld_LobsterTrapExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_LockBotExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_LockBotExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_LockBotExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let ageExpr = this.io.readU4le()
  this.age = ageExpr

proc fromFile*(_: typedesc[GrowtopiaWorld_LockBotExtra], filename: string): GrowtopiaWorld_LockBotExtra =
  GrowtopiaWorld_LockBotExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_LockExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_LockExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_LockExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let flagExpr = this.io.readU1()
  this.flag = flagExpr
  let ownerUserIdExpr = this.io.readU4le()
  this.ownerUserId = ownerUserIdExpr
  let numAuthorizedUseridsExpr = this.io.readU4le()
  this.numAuthorizedUserids = numAuthorizedUseridsExpr

  ##[
  if you encounter negative user id, it is a world BPM. Kaitai doesnt support
complex logic yet. 

  ]##
  for i in 0 ..< int(this.numAuthorizedUserids):
    let it = this.io.readS4le()
    this.authorizedUserids.add(it)
  let minimumLevelExpr = this.io.readU4le()
  this.minimumLevel = minimumLevelExpr
  let worldTimerExpr = this.io.readU4le()
  this.worldTimer = worldTimerExpr
  if this.parent.fg == 5814:
    let guildLocksUnkExpr = this.io.readBytes(int(16))
    this.guildLocksUnk = guildLocksUnkExpr

proc fromFile*(_: typedesc[GrowtopiaWorld_LockExtra], filename: string): GrowtopiaWorld_LockExtra =
  GrowtopiaWorld_LockExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_MagicEggExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_MagicEggExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_MagicEggExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let eggAmountExpr = this.io.readU4le()
  this.eggAmount = eggAmountExpr

proc fromFile*(_: typedesc[GrowtopiaWorld_MagicEggExtra], filename: string): GrowtopiaWorld_MagicEggExtra =
  GrowtopiaWorld_MagicEggExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_MannequinExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_MannequinExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_MannequinExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let labelExpr = GrowtopiaWorld_GtStr.read(this.io, this.root, this)
  this.label = labelExpr
  let unk1Expr = this.io.readU1()
  this.unk1 = unk1Expr
  let unk2Expr = this.io.readU2le()
  this.unk2 = unk2Expr
  let unk3Expr = this.io.readU2le()
  this.unk3 = unk3Expr
  let hatExpr = this.io.readU2le()
  this.hat = hatExpr
  let shirtExpr = this.io.readU2le()
  this.shirt = shirtExpr
  let pantsExpr = this.io.readU2le()
  this.pants = pantsExpr
  let bootsExpr = this.io.readU2le()
  this.boots = bootsExpr
  let faceExpr = this.io.readU2le()
  this.face = faceExpr
  let handExpr = this.io.readU2le()
  this.hand = handExpr
  let backExpr = this.io.readU2le()
  this.back = backExpr
  let hairExpr = this.io.readU2le()
  this.hair = hairExpr
  let neckExpr = this.io.readU2le()
  this.neck = neckExpr

proc fromFile*(_: typedesc[GrowtopiaWorld_MannequinExtra], filename: string): GrowtopiaWorld_MannequinExtra =
  GrowtopiaWorld_MannequinExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_PaintingEaselExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_PaintingEaselExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_PaintingEaselExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let itemIdExpr = this.io.readU4le()
  this.itemId = itemIdExpr
  let labelExpr = GrowtopiaWorld_GtStr.read(this.io, this.root, this)
  this.label = labelExpr

proc fromFile*(_: typedesc[GrowtopiaWorld_PaintingEaselExtra], filename: string): GrowtopiaWorld_PaintingEaselExtra =
  GrowtopiaWorld_PaintingEaselExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_PetBattleCageExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_PetBattleCageExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_PetBattleCageExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let labelExpr = GrowtopiaWorld_GtStr.read(this.io, this.root, this)
  this.label = labelExpr
  let basePetExpr = this.io.readU4le()
  this.basePet = basePetExpr
  let combinedPet1Expr = this.io.readU4le()
  this.combinedPet1 = combinedPet1Expr
  let combinedPet2Expr = this.io.readU4le()
  this.combinedPet2 = combinedPet2Expr

proc fromFile*(_: typedesc[GrowtopiaWorld_PetBattleCageExtra], filename: string): GrowtopiaWorld_PetBattleCageExtra =
  GrowtopiaWorld_PetBattleCageExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_PetTrainerExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_PetTrainerExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_PetTrainerExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let nameExpr = GrowtopiaWorld_GtStr.read(this.io, this.root, this)
  this.name = nameExpr
  let numPetsExpr = this.io.readU4le()
  this.numPets = numPetsExpr
  let unk1Expr = this.io.readU4le()
  this.unk1 = unk1Expr
  for i in 0 ..< int(this.numPets):
    let it = this.io.readU4le()
    this.pets.add(it)

proc fromFile*(_: typedesc[GrowtopiaWorld_PetTrainerExtra], filename: string): GrowtopiaWorld_PetTrainerExtra =
  GrowtopiaWorld_PetTrainerExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_PhoneBoothExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_PhoneBoothExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_PhoneBoothExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let hatExpr = this.io.readU2le()
  this.hat = hatExpr
  let shirtExpr = this.io.readU2le()
  this.shirt = shirtExpr
  let pantsExpr = this.io.readU2le()
  this.pants = pantsExpr
  let shoesExpr = this.io.readU2le()
  this.shoes = shoesExpr
  let faceExpr = this.io.readU2le()
  this.face = faceExpr
  let handExpr = this.io.readU2le()
  this.hand = handExpr
  let backExpr = this.io.readU2le()
  this.back = backExpr
  let hairExpr = this.io.readU2le()
  this.hair = hairExpr
  let neckExpr = this.io.readU2le()
  this.neck = neckExpr

proc fromFile*(_: typedesc[GrowtopiaWorld_PhoneBoothExtra], filename: string): GrowtopiaWorld_PhoneBoothExtra =
  GrowtopiaWorld_PhoneBoothExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_PineappleGuzzlerExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_PineappleGuzzlerExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_PineappleGuzzlerExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let pineappleFedExpr = this.io.readU4le()
  this.pineappleFed = pineappleFedExpr

proc fromFile*(_: typedesc[GrowtopiaWorld_PineappleGuzzlerExtra], filename: string): GrowtopiaWorld_PineappleGuzzlerExtra =
  GrowtopiaWorld_PineappleGuzzlerExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_PortraitExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_PortraitExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_PortraitExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let labelExpr = GrowtopiaWorld_GtStr.read(this.io, this.root, this)
  this.label = labelExpr
  let unk1Expr = this.io.readU4le()
  this.unk1 = unk1Expr
  let unk2Expr = this.io.readU4le()
  this.unk2 = unk2Expr
  let unk3Expr = this.io.readBytes(int(5))
  this.unk3 = unk3Expr
  let unk4Expr = this.io.readU1()
  this.unk4 = unk4Expr
  let unk5Expr = this.io.readU2le()
  this.unk5 = unk5Expr
  let faceExpr = this.io.readU2le()
  this.face = faceExpr
  let hatExpr = this.io.readU2le()
  this.hat = hatExpr
  let hairExpr = this.io.readU2le()
  this.hair = hairExpr
  let unk6Expr = this.io.readU4le()
  this.unk6 = unk6Expr
  if this.hat == 12958:
    let infinityCrownDataExpr = GrowtopiaWorld_GtStr.read(this.io, this.root, this)
    this.infinityCrownData = infinityCrownDataExpr

proc fromFile*(_: typedesc[GrowtopiaWorld_PortraitExtra], filename: string): GrowtopiaWorld_PortraitExtra =
  GrowtopiaWorld_PortraitExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_ProviderExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_ProviderExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_ProviderExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let ageExpr = this.io.readU4le()
  this.age = ageExpr
  if this.parent.fg == 10656:
    let pad1Expr = this.io.readBytes(int(4))
    this.pad1 = pad1Expr

proc fromFile*(_: typedesc[GrowtopiaWorld_ProviderExtra], filename: string): GrowtopiaWorld_ProviderExtra =
  GrowtopiaWorld_ProviderExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_SafeVaultExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_SafeVaultExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_SafeVaultExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent


proc fromFile*(_: typedesc[GrowtopiaWorld_SafeVaultExtra], filename: string): GrowtopiaWorld_SafeVaultExtra =
  GrowtopiaWorld_SafeVaultExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_SeedExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_SeedExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_SeedExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let ageExpr = this.io.readU4le()
  this.age = ageExpr
  let fruitCountExpr = this.io.readU1()
  this.fruitCount = fruitCountExpr

proc fromFile*(_: typedesc[GrowtopiaWorld_SeedExtra], filename: string): GrowtopiaWorld_SeedExtra =
  GrowtopiaWorld_SeedExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_SewingMachineExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_SewingMachineExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_SewingMachineExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let numBoltIdsExpr = this.io.readU4le()
  this.numBoltIds = numBoltIdsExpr
  for i in 0 ..< int(this.numBoltIds):
    let it = this.io.readU4le()
    this.boltIds.add(it)

proc fromFile*(_: typedesc[GrowtopiaWorld_SewingMachineExtra], filename: string): GrowtopiaWorld_SewingMachineExtra =
  GrowtopiaWorld_SewingMachineExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_ShelfExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_ShelfExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_ShelfExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let topLeftItemIdExpr = this.io.readU4le()
  this.topLeftItemId = topLeftItemIdExpr
  let topRightItemIdExpr = this.io.readU4le()
  this.topRightItemId = topRightItemIdExpr
  let bottomLeftItemIdExpr = this.io.readU4le()
  this.bottomLeftItemId = bottomLeftItemIdExpr
  let bottomRightItemIdExpr = this.io.readU4le()
  this.bottomRightItemId = bottomRightItemIdExpr

proc fromFile*(_: typedesc[GrowtopiaWorld_ShelfExtra], filename: string): GrowtopiaWorld_ShelfExtra =
  GrowtopiaWorld_ShelfExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_SignExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_SignExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_SignExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let labelExpr = GrowtopiaWorld_GtStr.read(this.io, this.root, this)
  this.label = labelExpr
  let pad1Expr = this.io.readBytes(int(4))
  this.pad1 = pad1Expr

proc fromFile*(_: typedesc[GrowtopiaWorld_SignExtra], filename: string): GrowtopiaWorld_SignExtra =
  GrowtopiaWorld_SignExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_SilkWormExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_SilkWormExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_SilkWormExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let flagsExpr = this.io.readU1()
  this.flags = flagsExpr
  let nameExpr = GrowtopiaWorld_GtStr.read(this.io, this.root, this)
  this.name = nameExpr
  let ageSecExpr = this.io.readU4le()
  this.ageSec = ageSecExpr
  let unk1Expr = this.io.readU4le()
  this.unk1 = unk1Expr
  let unk2Expr = this.io.readU4le()
  this.unk2 = unk2Expr
  let canBeFedExpr = this.io.readU1()
  this.canBeFed = canBeFedExpr
  let foodSaturationExpr = this.io.readU4le()
  this.foodSaturation = foodSaturationExpr
  let waterSaturationExpr = this.io.readU4le()
  this.waterSaturation = waterSaturationExpr
  let colorArgbExpr = GrowtopiaWorld_ARGB.read(this.io, this.root, this)
  this.colorArgb = colorArgbExpr
  let sickDurationExpr = this.io.readU4le()
  this.sickDuration = sickDurationExpr

proc fromFile*(_: typedesc[GrowtopiaWorld_SilkWormExtra], filename: string): GrowtopiaWorld_SilkWormExtra =
  GrowtopiaWorld_SilkWormExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_SolarCollectorExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_SolarCollectorExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_SolarCollectorExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let unk1Expr = this.io.readBytes(int(5))
  this.unk1 = unk1Expr

proc fromFile*(_: typedesc[GrowtopiaWorld_SolarCollectorExtra], filename: string): GrowtopiaWorld_SolarCollectorExtra =
  GrowtopiaWorld_SolarCollectorExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_SpiritBoardExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_SpiritBoardExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_SpiritBoardExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let playerRequiredExpr = this.io.readU4le()
  this.playerRequired = playerRequiredExpr
  let unk1Expr = GrowtopiaWorld_GtStr.read(this.io, this.root, this)
  this.unk1 = unk1Expr
  let commandExpr = GrowtopiaWorld_GtStr.read(this.io, this.root, this)
  this.command = commandExpr
  let numRequiredItemsExpr = this.io.readU4le()
  this.numRequiredItems = numRequiredItemsExpr
  for i in 0 ..< int(this.numRequiredItems):
    let it = this.io.readU4le()
    this.requiredItems.add(it)

proc fromFile*(_: typedesc[GrowtopiaWorld_SpiritBoardExtra], filename: string): GrowtopiaWorld_SpiritBoardExtra =
  GrowtopiaWorld_SpiritBoardExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_SpiritStorageUnitExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_SpiritStorageUnitExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_SpiritStorageUnitExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let ghostJarCountExpr = this.io.readU4le()
  this.ghostJarCount = ghostJarCountExpr

proc fromFile*(_: typedesc[GrowtopiaWorld_SpiritStorageUnitExtra], filename: string): GrowtopiaWorld_SpiritStorageUnitExtra =
  GrowtopiaWorld_SpiritStorageUnitExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_SpotlightExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_SpotlightExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_SpotlightExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent


proc fromFile*(_: typedesc[GrowtopiaWorld_SpotlightExtra], filename: string): GrowtopiaWorld_SpotlightExtra =
  GrowtopiaWorld_SpotlightExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_SteamEngineExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_SteamEngineExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_SteamEngineExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let temperatureExpr = this.io.readU4le()
  this.temperature = temperatureExpr

proc fromFile*(_: typedesc[GrowtopiaWorld_SteamEngineExtra], filename: string): GrowtopiaWorld_SteamEngineExtra =
  GrowtopiaWorld_SteamEngineExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_SteamOrganExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_SteamOrganExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_SteamOrganExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let instrumentTypeExpr = this.io.readU1()
  this.instrumentType = instrumentTypeExpr
  let noteExpr = this.io.readU4le()
  this.note = noteExpr

proc fromFile*(_: typedesc[GrowtopiaWorld_SteamOrganExtra], filename: string): GrowtopiaWorld_SteamOrganExtra =
  GrowtopiaWorld_SteamOrganExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_StorageBoxXtremeExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_StorageBoxXtremeExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_StorageBoxXtremeExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let dataLenExpr = this.io.readU2le()
  this.dataLen = dataLenExpr
  for i in 0 ..< int(this.dataLen div 13):
    let it = GrowtopiaWorld_StorageBoxXtremeExtra_StorageItem.read(this.io, this.root, this)
    this.items.add(it)

proc fromFile*(_: typedesc[GrowtopiaWorld_StorageBoxXtremeExtra], filename: string): GrowtopiaWorld_StorageBoxXtremeExtra =
  GrowtopiaWorld_StorageBoxXtremeExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_StorageBoxXtremeExtra_StorageItem], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_StorageBoxXtremeExtra): GrowtopiaWorld_StorageBoxXtremeExtra_StorageItem =
  template this: untyped = result
  this = new(GrowtopiaWorld_StorageBoxXtremeExtra_StorageItem)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let pad1Expr = this.io.readBytes(int(3))
  this.pad1 = pad1Expr
  let itemIdExpr = this.io.readU4le()
  this.itemId = itemIdExpr
  let pad2Expr = this.io.readBytes(int(2))
  this.pad2 = pad2Expr
  let itemAmtExpr = this.io.readU4le()
  this.itemAmt = itemAmtExpr

proc fromFile*(_: typedesc[GrowtopiaWorld_StorageBoxXtremeExtra_StorageItem], filename: string): GrowtopiaWorld_StorageBoxXtremeExtra_StorageItem =
  GrowtopiaWorld_StorageBoxXtremeExtra_StorageItem.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_StormyCloudExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_StormyCloudExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_StormyCloudExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let stingDurationExpr = this.io.readU4le()
  this.stingDuration = stingDurationExpr
  let isSolidExpr = this.io.readU4le()
  this.isSolid = isSolidExpr
  let nonSolidDurationExpr = this.io.readU4le()
  this.nonSolidDuration = nonSolidDurationExpr

proc fromFile*(_: typedesc[GrowtopiaWorld_StormyCloudExtra], filename: string): GrowtopiaWorld_StormyCloudExtra =
  GrowtopiaWorld_StormyCloudExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_TemporaryPlatformExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_TemporaryPlatformExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_TemporaryPlatformExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let unk1Expr = this.io.readU4le()
  this.unk1 = unk1Expr

proc fromFile*(_: typedesc[GrowtopiaWorld_TemporaryPlatformExtra], filename: string): GrowtopiaWorld_TemporaryPlatformExtra =
  GrowtopiaWorld_TemporaryPlatformExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_TesseractManipulatorExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_TesseractManipulatorExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_TesseractManipulatorExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let gemsLeftExpr = this.io.readU4le()
  this.gemsLeft = gemsLeftExpr
  let nextUpdateMsExpr = this.io.readU4le()
  this.nextUpdateMs = nextUpdateMsExpr
  let itemIdExpr = this.io.readU4le()
  this.itemId = itemIdExpr
  let enabledExpr = this.io.readU4le()
  this.enabled = enabledExpr

proc fromFile*(_: typedesc[GrowtopiaWorld_TesseractManipulatorExtra], filename: string): GrowtopiaWorld_TesseractManipulatorExtra =
  GrowtopiaWorld_TesseractManipulatorExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_TombRobberExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_TombRobberExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_TombRobberExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent


proc fromFile*(_: typedesc[GrowtopiaWorld_TombRobberExtra], filename: string): GrowtopiaWorld_TombRobberExtra =
  GrowtopiaWorld_TombRobberExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_TrainingPortExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_TrainingPortExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_TrainingPortExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let fishLbExpr = this.io.readU4le()
  this.fishLb = fishLbExpr
  let statusExpr = this.io.readU2le()
  this.status = statusExpr
  let itemIdExpr = this.io.readU4le()
  this.itemId = itemIdExpr
  let totalExpExpr = this.io.readU4le()
  this.totalExp = totalExpExpr
  let unk1Expr = this.io.readBytes(int(8))
  this.unk1 = unk1Expr
  let fishLevelExpr = this.io.readU4le()
  this.fishLevel = fishLevelExpr
  let unk2Expr = this.io.readU4le()
  this.unk2 = unk2Expr
  let unk3Expr = this.io.readBytes(int(5))
  this.unk3 = unk3Expr

proc fromFile*(_: typedesc[GrowtopiaWorld_TrainingPortExtra], filename: string): GrowtopiaWorld_TrainingPortExtra =
  GrowtopiaWorld_TrainingPortExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_UnknownExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_UnknownExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_UnknownExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  This type is just to error out kaitai. So if you encounter any error, 
please either give the world name or dump the world and submit it to me
(81739844+badewen@users.noreply.github.com).  

  ]##
  let thisIsJustToErrorOutKaitaiPlsExpr = this.io.readBytesFull()
  this.thisIsJustToErrorOutKaitaiPls = thisIsJustToErrorOutKaitaiPlsExpr

proc fromFile*(_: typedesc[GrowtopiaWorld_UnknownExtra], filename: string): GrowtopiaWorld_UnknownExtra =
  GrowtopiaWorld_UnknownExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_VendingMachineExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_VendingMachineExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_VendingMachineExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let itemIdExpr = this.io.readU4le()
  this.itemId = itemIdExpr
  let priceExpr = this.io.readS4le()
  this.price = priceExpr

proc fromFile*(_: typedesc[GrowtopiaWorld_VendingMachineExtra], filename: string): GrowtopiaWorld_VendingMachineExtra =
  GrowtopiaWorld_VendingMachineExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_VipEntranceExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_VipEntranceExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_VipEntranceExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let unk1Expr = this.io.readU1()
  this.unk1 = unk1Expr
  let ownerUseridExpr = this.io.readU4le()
  this.ownerUserid = ownerUseridExpr
  let numAllowedUseridsExpr = this.io.readU4le()
  this.numAllowedUserids = numAllowedUseridsExpr
  for i in 0 ..< int(this.numAllowedUserids):
    let it = this.io.readU4le()
    this.allowedUserids.add(it)

proc fromFile*(_: typedesc[GrowtopiaWorld_VipEntranceExtra], filename: string): GrowtopiaWorld_VipEntranceExtra =
  GrowtopiaWorld_VipEntranceExtra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_WeatherMachine1Extra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_WeatherMachine1Extra =
  template this: untyped = result
  this = new(GrowtopiaWorld_WeatherMachine1Extra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let settingsExpr = this.io.readBytes(int(4))
  this.settings = settingsExpr

proc fromFile*(_: typedesc[GrowtopiaWorld_WeatherMachine1Extra], filename: string): GrowtopiaWorld_WeatherMachine1Extra =
  GrowtopiaWorld_WeatherMachine1Extra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_WeatherMachine2Extra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_WeatherMachine2Extra =
  template this: untyped = result
  this = new(GrowtopiaWorld_WeatherMachine2Extra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let itemIdExpr = this.io.readU4le()
  this.itemId = itemIdExpr
  let gravityExpr = this.io.readU4le()
  this.gravity = gravityExpr
  let flagExpr = this.io.readU1()
  this.flag = flagExpr

proc fromFile*(_: typedesc[GrowtopiaWorld_WeatherMachine2Extra], filename: string): GrowtopiaWorld_WeatherMachine2Extra =
  GrowtopiaWorld_WeatherMachine2Extra.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_WorldObject], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld): GrowtopiaWorld_WorldObject =
  template this: untyped = result
  this = new(GrowtopiaWorld_WorldObject)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let itemIdExpr = this.io.readU2le()
  this.itemId = itemIdExpr
  let xExpr = this.io.readF4le()
  this.x = xExpr
  let yExpr = this.io.readF4le()
  this.y = yExpr
  let amountExpr = this.io.readU1()
  this.amount = amountExpr
  let flagExpr = this.io.readU1()
  this.flag = flagExpr
  let uidExpr = this.io.readU4le()
  this.uid = uidExpr

proc fromFile*(_: typedesc[GrowtopiaWorld_WorldObject], filename: string): GrowtopiaWorld_WorldObject =
  GrowtopiaWorld_WorldObject.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_WorldTile], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld): GrowtopiaWorld_WorldTile =
  template this: untyped = result
  this = new(GrowtopiaWorld_WorldTile)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let fgExpr = this.io.readU2le()
  this.fg = fgExpr
  let bgExpr = this.io.readU2le()
  this.bg = bgExpr

  ##[
  This type is just to error out kaitai. If this is 
encountered, then maybe there was a parsing error.
Please report :)

  ]##
  if  ((this.fg > 25000) or (this.bg > 25000)) :
    let invalidTileFgBgKaitaiCrasherExpr = this.io.readBytesFull()
    this.invalidTileFgBgKaitaiCrasher = invalidTileFgBgKaitaiCrasherExpr
  let parentBlockIndexExpr = this.io.readU2le()
  this.parentBlockIndex = parentBlockIndexExpr
  let flagExpr = this.io.readU2le()
  this.flag = flagExpr
  if (this.flag and 2) == 2:
    let parentLockExpr = this.io.readU2le()
    this.parentLock = parentLockExpr
  if (this.flag and 1) == 1:
    let extraDataTypeExpr = this.io.readU1()
    this.extraDataType = extraDataTypeExpr
  if (this.flag and 1) == 1:
    block:
      let on = this.extraDataType
      if on == 1:
        let tileExtraExpr = GrowtopiaWorld_DoorExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 10:
        let tileExtraExpr = GrowtopiaWorld_AchievementBlockExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 11:
        let tileExtraExpr = GrowtopiaWorld_HeartMonitorExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 14:
        let tileExtraExpr = GrowtopiaWorld_MannequinExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 15:
        let tileExtraExpr = GrowtopiaWorld_MagicEggExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 16:
        let tileExtraExpr = GrowtopiaWorld_GameGraveExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 17:
        let tileExtraExpr = GrowtopiaWorld_GameGeneratorExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 18:
        let tileExtraExpr = GrowtopiaWorld_XenoniteExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 19:
        let tileExtraExpr = GrowtopiaWorld_PhoneBoothExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 2:
        let tileExtraExpr = GrowtopiaWorld_SignExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 20:
        let tileExtraExpr = GrowtopiaWorld_CrystalExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 21:
        let tileExtraExpr = GrowtopiaWorld_CrimeInProgressExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 22:
        let tileExtraExpr = GrowtopiaWorld_SpotlightExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 23:
        let tileExtraExpr = GrowtopiaWorld_DisplayBlockExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 24:
        let tileExtraExpr = GrowtopiaWorld_VendingMachineExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 25:
        let tileExtraExpr = GrowtopiaWorld_FishTankPortExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 26:
        let tileExtraExpr = GrowtopiaWorld_SolarCollectorExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 27:
        let tileExtraExpr = GrowtopiaWorld_ForgeExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 28:
        let tileExtraExpr = GrowtopiaWorld_GivingTreeExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 3:
        let tileExtraExpr = GrowtopiaWorld_LockExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 30:
        let tileExtraExpr = GrowtopiaWorld_SteamOrganExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 31:
        let tileExtraExpr = GrowtopiaWorld_SilkWormExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 32:
        let tileExtraExpr = GrowtopiaWorld_SewingMachineExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 33:
        let tileExtraExpr = GrowtopiaWorld_CountryFlagExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 34:
        let tileExtraExpr = GrowtopiaWorld_LobsterTrapExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 35:
        let tileExtraExpr = GrowtopiaWorld_PaintingEaselExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 36:
        let tileExtraExpr = GrowtopiaWorld_PetBattleCageExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 37:
        let tileExtraExpr = GrowtopiaWorld_PetTrainerExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 38:
        let tileExtraExpr = GrowtopiaWorld_SteamEngineExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 39:
        let tileExtraExpr = GrowtopiaWorld_LockBotExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 4:
        let tileExtraExpr = GrowtopiaWorld_SeedExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 40:
        let tileExtraExpr = GrowtopiaWorld_WeatherMachine1Extra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 41:
        let tileExtraExpr = GrowtopiaWorld_SpiritStorageUnitExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 42:
        let tileExtraExpr = GrowtopiaWorld_DataBedrockExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 43:
        let tileExtraExpr = GrowtopiaWorld_ShelfExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 44:
        let tileExtraExpr = GrowtopiaWorld_VipEntranceExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 45:
        let tileExtraExpr = GrowtopiaWorld_ChallengeTimerExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 47:
        let tileExtraExpr = GrowtopiaWorld_FishWallMountExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 48:
        let tileExtraExpr = GrowtopiaWorld_PortraitExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 49:
        let tileExtraExpr = GrowtopiaWorld_WeatherMachine2Extra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 50:
        let tileExtraExpr = GrowtopiaWorld_FossilPrepStationExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 51:
        let tileExtraExpr = GrowtopiaWorld_DnaExtractorExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 52:
        let tileExtraExpr = GrowtopiaWorld_HowlerExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 53:
        let tileExtraExpr = GrowtopiaWorld_ChemsynthTankExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 54:
        let tileExtraExpr = GrowtopiaWorld_StorageBoxXtremeExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 55:
        let tileExtraExpr = GrowtopiaWorld_CookingOvenExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 56:
        let tileExtraExpr = GrowtopiaWorld_AudioRackExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 57:
        let tileExtraExpr = GrowtopiaWorld_GeigerChargerExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 58:
        let tileExtraExpr = GrowtopiaWorld_AdventureBeginsExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 59:
        let tileExtraExpr = GrowtopiaWorld_TombRobberExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 60:
        let tileExtraExpr = GrowtopiaWorld_BalloonOMaticExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 61:
        let tileExtraExpr = GrowtopiaWorld_TrainingPortExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 62:
        let tileExtraExpr = GrowtopiaWorld_ItemSuckerExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 63:
        let tileExtraExpr = GrowtopiaWorld_CybotExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 65:
        let tileExtraExpr = GrowtopiaWorld_GuildExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 66:
        let tileExtraExpr = GrowtopiaWorld_GrowscanExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 67:
        let tileExtraExpr = GrowtopiaWorld_ContainmentFieldPowerNodeExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 68:
        let tileExtraExpr = GrowtopiaWorld_SpiritBoardExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 69:
        let tileExtraExpr = GrowtopiaWorld_TesseractManipulatorExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 72:
        let tileExtraExpr = GrowtopiaWorld_StormyCloudExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 73:
        let tileExtraExpr = GrowtopiaWorld_TemporaryPlatformExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 74:
        let tileExtraExpr = GrowtopiaWorld_SafeVaultExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 75:
        let tileExtraExpr = GrowtopiaWorld_AngelicCountingCloudExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 77:
        let tileExtraExpr = GrowtopiaWorld_InfinityWeatherMachineExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 79:
        let tileExtraExpr = GrowtopiaWorld_PineappleGuzzlerExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 8:
        let tileExtraExpr = GrowtopiaWorld_DiceExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 80:
        let tileExtraExpr = GrowtopiaWorld_KrakensGalaticBlockExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 81:
        let tileExtraExpr = GrowtopiaWorld_FriendsEntranceExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      elif on == 9:
        let tileExtraExpr = GrowtopiaWorld_ProviderExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
      else:
        let tileExtraExpr = GrowtopiaWorld_UnknownExtra.read(this.io, this.root, this)
        this.tileExtra = tileExtraExpr
  if  (( (((this.flag and 1) == 1) and (this.extraDataType == 36)) ) or (this.fg == 15546) or (this.fg == 14666) or (this.fg == 14962) or (this.fg == 14662)) :
    let cborDataExpr = GrowtopiaWorld_CborData.read(this.io, this.root, this)
    this.cborData = cborDataExpr

proc fromFile*(_: typedesc[GrowtopiaWorld_WorldTile], filename: string): GrowtopiaWorld_WorldTile =
  GrowtopiaWorld_WorldTile.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[GrowtopiaWorld_XenoniteExtra], io: KaitaiStream, root: KaitaiStruct, parent: GrowtopiaWorld_WorldTile): GrowtopiaWorld_XenoniteExtra =
  template this: untyped = result
  this = new(GrowtopiaWorld_XenoniteExtra)
  let root = if root == nil: cast[GrowtopiaWorld](this) else: cast[GrowtopiaWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  let unk1Expr = this.io.readBytes(int(5))
  this.unk1 = unk1Expr

proc fromFile*(_: typedesc[GrowtopiaWorld_XenoniteExtra], filename: string): GrowtopiaWorld_XenoniteExtra =
  GrowtopiaWorld_XenoniteExtra.read(newKaitaiFileStream(filename), nil, nil)

