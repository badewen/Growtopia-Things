#pragma once

#include <vector>
#include <string>

#include "TileExtra.h"

enum eWeatherType : uint16_t
{
    Default = 0,
    Sunset = 1,
    Night = 2,
    Desert = 3,
    Sunny = 4,
    RainyCity = 5,
    Harvest = 6,
    Mars = 7,
    Spooky = 8,
    Maw = 9,
    Blank = 10,
    Snowy = 11,
    Growch = 12,
    GrowchHappy = 13,
    Undersea = 14,
    Warp = 15,
    Comet = 16,
    Comet2 = 17,
    Party = 18,
    Pineapple = 19,
    SnowyNight = 20,
    Spring = 21,
    Wolf = 22,
    NotInitialized = 23,
    PurpleHaze = 24,
    FireHaze = 25,
    GreenHaze = 26,
    AquaHaze = 27,
    CustomHaze = 28,
    CustomItems = 29,
    Pagoda = 30,
    Apocalypse = 31,
    Jungle = 32,
    BalloonWarz = 33,
    Background = 34,
    Autumn = 35,
    Heart = 36,
    Stpatricks = 37,
    IceAge = 38,
    Volcano = 39,
    FloatingIslands = 40,
    Mascot = 41,
    DigitalRain = 42,
    Monochrome = 43,
    Treasure = 44,
    Surgery = 45,
    Bountiful = 46,
    Meteor = 47,
    Stars = 48,
    Ascended = 49,
    Destroyed = 50,
    GrowtopiaSign = 51,
    Dungeon = 52,
    LegendaryCity = 53,
    BloodDragon = 54,
    PopCity = 55,
    Anzu = 56,
    TmntCity = 57,
    RadCity = 58,
    Plaza = 59,
    Nebula = 60,
    Protostar = 61,
    DarkMountains = 62,
    Ac15 = 63,
    MountGrowmore = 64,
    CrackInReality = 65,
    LnyNian = 66,
    RaymanLock = 67,
    Steampunk = 68,
    RealmOfSpirits = 69,
    BlackHole = 70,
    Gems = 71,
    HolidayHaven = 72,
    FenyxLock = 73,
    EnchantedLock = 74,
    RoyalEnchantedLock = 75,
    NeptunesAtlantis = 76,
    PinuskiPetalPurrfectHaven = 77,
    CandyLand = 78,
};


enum eWorldNPCType : uint8_t {
    NpcNone,
    Ghost,
    GhostJar,
    BeeSwarm,
    HarvestGhost,
    GrowGa,
    GhostShark,
    XmasGhost,
    Blast,
    Pinata,
    GhostCaptureMachine,
    BossGhost,
    MindControlGhost,
    GhostBeGone,
    HuntedTurkey,
    Trickster,
    ThanksgivingTurkeyBoss,
    ThanksgivingTurketBossFeatherProjectile,
    AttackerMinionTurkey,
    BeachEnemy
};

struct WorldNPC
{
    uint8_t Index;
    eWorldNPCType Type;
    float PosX, PosY;
    float TargetX, TargetY;
    float Speed;
};

struct WorldObjectFlag {
    uint8_t ShrinkOnTaken : 1;
    uint8_t Unk1 : 2;
    uint8_t RadioactiveItem : 1;
};

struct WorldObject
{
    uint32_t ObjectID;
    uint32_t ItemID;
    uint32_t ItemAmount;
    float PosX, PosY;
    WorldObjectFlag Flags;
};

struct WorldTileFlag {
    uint16_t HasTileExtra       : 1;
    uint16_t HasParent          : 1;
    uint16_t WasSpliced         : 1;
    uint16_t WillSpawnSeedsToo  : 1;
    uint16_t IsSeedling         : 1;
    uint16_t FlippedX           : 1;
    uint16_t On                 : 1;
    uint16_t Public             : 1;
    uint16_t BGIsOn             : 1;
    uint16_t FGAltMode          : 1;
    uint16_t Water              : 1;
    uint16_t Glued              : 1;
    uint16_t OnFire             : 1;
    uint16_t Red                : 1;
    uint16_t Green              : 1;
    uint16_t Blue               : 1;
};


// opeitonal here means that the field is not always present
struct WorldTile 
{
    uint16_t FG;
    uint16_t BG;
    uint16_t ParentTileIndex;
    WorldTileFlag Flag;
    // OPTIONAL: if HasParent is set
     uint16_t ParentIndex2; // idk why lol
    // OPTIONAL: if HasTileExtra is set
     uint16_t eWorldTileExtraType;

    // OPTIONAL: if HasTileExtra is set. Depends on eWorldTileExtraType.
    // How to parse those? well read the python script world_parser.py
    union {
        WorldTileDoorExtra DoorExtra;
        WorldTileSignExtra SignExtra;
        WorldTileLockExtra LockExtra;
        WorldTileSeedExtra SeedExtra;
        WorldTileDiceExtra DiceExtra;
        WorldTileProviderExtra ProviderExtra;
        WorldTileAchievementBlockExtra AchievementBlockExtra;
        WorldTileHeartMonitorExtra HeartMonitorExtra;
        WorldTileMannequinExtra MannequinExtra;
        WorldTileMagicEggExtra MagicEggExtra;
        WorldTileGameGraveExtra GameGraveExtra;
        WorldTileGameGeneratorExtra GameGeneratorExtra;
        WorldTileXenoniteExtra XenoniteExtra;
        WorldTilePhoneBoothExtra PhoneBoothExtra;
        WorldTileSpotlightExtra SpotlightExtra;
        WorldTileDisplayBlockExtra DisplayBlockExtra;
        WorldTileVendingMachineExtra VendingMachineExtra;
        WorldTileFishTankPortExtra FishTankPortExtra;
        WorldTileForgeExtra ForgeExtra;
        WorldTileGivingTreeExtra GivingTreeExtra;
        WorldTileSteamOrganExtra SteamOrganExtra;
        WorldTileSilkWormExtra SilkWormExtra;
        WorldTileSewingMachineExtra SewingMachineExtra;
        WorldTileCountryFlagExtra CountryFlagExtra;
        WorldTileLobsterTrapExtra LobsterTrapExtra;
        WorldTilePaintingEaselExtra PaintingEaselExtra;
        WorldTilePetBattleCageExtra PetBattleCageExtra;
        WorldTilePetTrainerExtra PetTrainerExtra;
        WorldTileWeatherMachineExtra WeatherMachineExtra;
        WorldTileSpiritStorageUnitExtra SpiritStorageUnitExtra;
        WorldTileDataBedrockExtra DataBedrockExtra;
        WorldTileShelfExtra ShelfExtra;
        WorldTileVipEntranceExtra VipEntranceExtra;
        WorldTileChallengeTimerExtra ChallengeTimerExtra;
        WorldTileFishWallMountExtra FishWallMountExtra;
        WorldTilePortraitExtra PortraitExtra;
        WorldTileGuildWeatherMachineExtra GuildWeatherMachineExtra;
        WorldTileFossilPrepStationExtra FossilPrepStationExtra;
        WorldTileDnaExtractorExtra DnaExtractorExtra;
        WorldTileHowlerExtra HowlerExtra;
        WorldTileChemsynthTankExtra ChemsynthTankExtra;
        WorldTileStorageBlockExtra StorageBlockExtra;
        WorldTileCookingOvenExtra CookingOvenExtra;
        WorldTileAudioRackExtra AudioRackExtra;
        WorldTileAdventureBeginsExtra AdventureBeginsExtra;
        WorldTileTombRobberExtra TombRobberExtra;
        WorldTileBalloonOMaticExtra BalloonOMaticExtra;
        WorldTileTrainingPortExtra TrainingPortExtra;
        WorldTileGuildItemExtra GuildItemExtra;
        WorldTileKrakenGalaticBlockExtra KrakenGalaticBlockExtra;
        WorldTileFriendsEntranceExtra FriendsEntranceExtra;
        WorldTileCrystalExtra CrystalExtra;
        WorldTileCrimeInProgressExtra CrimeInProgressExtra;
        WorldTileSolarCollectorExtra SolarCollectorExtra;
        WorldTileSteamEngineExtra SteamEngineExtra;
        WorldTileLockBotExtra LockBotExtra;
        WorldTileGeigerChargerExtra GeigerChargerExtra;
        WorldTileItemSuckerExtra ItemSuckerExtra;
        WorldTileCyBotExtra CyBotExtra;
        WorldTileGrowscanExtra GrowscanExtra;
        WorldTileContainmentFieldPowerNodeExtra ContainmentFieldPowerNodeExtra;
        WorldTileSpiritBoardExtra SpiritBoardExtra;
        WorldTileStormyCloudExtra StormyCloudExtra;
        WorldTileTemporaryPlatformExtra TemporaryPlatformExtra;
        WorldTileSafeVaultExtra SafeVaultExtra;
        WorldTileAngelicCountingCloudExtra AngelicCountingCloudExtra;
        WorldTileInfinityWeatherMachineExtra InfinityWeatherMachineExtra;
        WorldTilePineappleGuzzlerExtra PineappleGuzzlerExtra;
    } ExtraTileData;
};

struct World
{
    uint8_t __Unk_1[6]; // i forgor lol
    std::string WorldName;
    uint32_t Width;
    uint32_t Height;
    uint32_t TotalTiles;
    uint8_t __Unk_2[5];
    std::vector<WorldTile> Tiles;
    uint8_t __Unk_3[12];
    uint32_t ObjectCount;
    uint32_t LastObjectId;
    std::vector<WorldObject> Objects;
    eWeatherType BaseWeather;
    uint8_t __Unk_4[2];
    eWeatherType CurrentWeather;
    uint8_t __unk_5[6];
};