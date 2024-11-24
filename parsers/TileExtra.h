#pragma once

#include <vector>
#include <string>

// kinda outdated lol, but it is still good enough
enum eWorldTileExtraType : uint8_t {
    None = 0,
    Door = 1,
    Sign = 2, // this was used by mailbox, bulletin board, cctv. (why ubisoft??)
    Lock = 3,
    Seed = 4,
    Dice = 8,
    Provider = 9,
    AchievementBlock = 10,
    HeartMonitor = 11,
    Mannequin = 14,
    MagicEgg = 15,
    GameGrave = 16,
    GameGenerator = 17,
    Xenonite = 18,
    PhoneBooth = 19,
    Crystal = 20,
    CrimeInProgress = 21,
    Spotlight = 22,
    DisplayBlock = 23,
    VendingMachine = 24,
    FishTankPort = 25,
    SolarCollector = 26,
    Forge = 27,
    GivingTree = 28,
    SteamOrgan = 30,
    SilkWorm = 31,
    SewingMachine = 32,
    CountryFlag = 33,
    LobsterTrap = 34,
    PaintingEasel = 35,
    PetBattleCage = 36,
    PetTrainer = 37,
    SteamEngine = 38,
    LockBot = 39,
    WeatherMachine = 40,
    SpiritStorageUnit = 41,
    DataBedrock = 42,
    Shelf = 43,
    VipEntrance = 44,
    ChallengeTimer = 45,
    FishWallMount = 47,
    Portrait = 48,
    GuildWeatherMachine = 49,
    FossilPrepStation = 50,
    DnaExtractor = 51,
    Howler = 52,
    ChemsynthTank = 53,
    StorageBlock = 54,
    CookingOven = 55,
    AudioRack = 56, // apparently ubisoft uses this for lucky token??? wtf dev??
    GeigerCharger = 57,
    AdventureBegins = 58,
    TombRobber = 59,
    BalloonOMatic = 60,
    TrainingPort = 61,
    ItemSucker = 62,
    CyBot = 63,
    GuildItem = 65,
    Growscan = 66,
    ContainmentFieldPowerNode = 67,
    SpiritBoard = 68,

    // UNDOCUMENTED
    TesseractManipulator = 69,
    HeartOfGaia = 70,
    TechnoOrganicEngine = 71,
    // UNDOCUMENTED

    StormyCloud = 72,
    TemporaryPlatform = 73,
    SafeVault = 74,
    AngelicCountingCloud = 75,
    InfinityWeatherMachine = 77,
    PineappleGuzzler = 79,
    KrakenGalaticBlock = 80,
    FriendsEntrance = 81,
};

struct WorldTileDoorExtra {
    std::string Label;
    uint8_t Unk1;
};

struct WorldTileSignExtra {
    std::string Label;
};

struct WorldTileLockExtra {
    uint8_t Flags;
    uint8_t MinimumLevel;
    uint32_t OwnerId;
    uint8_t UnkArr[7];
    std::vector<uint32_t> AccessList;
};

struct WorldTileSeedExtra {
    uint32_t TimeLeft;
    uint8_t FruitCount;
};

struct WorldTileDiceExtra {
    uint8_t Pattern;
};

struct WorldTileProviderExtra {
    uint32_t TimeLeft;
};

struct WorldTileAchievementBlockExtra {
    uint32_t UserId;
    uint8_t Achievement;
};

struct WorldTileHeartMonitorExtra {
    std::string Name;
    uint32_t UserId;
};

struct WorldTileMannequinExtra {
    std::string Label;
    uint8_t Unk1;
    uint16_t Unk2;
    uint16_t Unk3;
    uint16_t Hat;
    uint16_t Shirt;
    uint16_t Pants;
    uint16_t Boots;
    uint16_t Face;
    uint16_t Hand;
    uint16_t Back;
    uint16_t Hair;
    uint16_t Neck;
};

struct WorldTileMagicEggExtra {
    uint32_t EggAmount;
};

struct WorldTileGameGraveExtra {
    uint8_t Team;
};

struct WorldTileGameGeneratorExtra {};

struct WorldTileXenoniteExtra {
    uint8_t Unk1[5];
};

struct WorldTilePhoneBoothExtra {
    uint16_t Hat;
    uint16_t Shirt;
    uint16_t Pants;
    uint16_t Shoes;
    uint16_t Face;
    uint16_t Hand;
    uint16_t Back;
    uint16_t Hair;
    uint16_t Neck;
};

struct WorldTileCrystalExtra {
    std::vector<uint8_t> Crystals;
};

struct WorldTileCrimeInProgressExtra {
    std::string Name;
    // there are alot of unk field, but it doesnt matter.
};

struct WorldTileSpotlightExtra {};

struct WorldTileDisplayBlockExtra {
    uint32_t ItemId;
};

struct WorldTileVendingMachineExtra {
    uint32_t ItemId;
    int32_t Price;
};

struct WorldTileFishTankPortExtra {
    uint8_t Flags;
    struct FishInfo {
        uint32_t FishItemId, Lbs;
    };
    std::vector<FishInfo> Fishes;
};

struct WorldTileSolarCollectorExtra {
    uint8_t Unk1[5];
};

struct WorldTileForgeExtra {
    uint32_t Temperature;
};

struct WorldTileGivingTreeExtra {
    uint8_t Harvested;
    uint8_t DecorationPercent;
    uint32_t Unk1;
};

struct WorldTileSilkWormExtra {
    uint8_t Type;
    std::string Name;
    uint32_t Age;
    uint32_t Unk1;
    uint32_t Unk2;
    uint8_t CanBeFed;
    uint32_t FoodSaturation;
    uint32_t WaterSaturation;
    struct {
        uint8_t A;
        uint8_t R;
        uint8_t G;
        uint8_t B;
    } Color;
    uint32_t SickDuration;
};

struct WorldTileSteamOrganExtra {
    uint8_t InstrumentType;
    uint32_t Note;
};

struct WorldTileSewingMachineExtra {
    std::vector<uint32_t> BoltIdList;
};

struct WorldTileCountryFlagExtra {
    std::string Country;
};

struct WorldTileLobsterTrapExtra {};

struct WorldTilePaintingEaselExtra {
    uint32_t ItemId;
    std::string Label;
};

struct WorldTilePetBattleCageExtra {
    std::string Label;
    uint32_t BasePet;
    uint32_t CombinedPet1;
    uint32_t CombinedPet2;
};

struct WorldTilePetTrainerExtra {
    using PetItemId = uint32_t;
    std::string Name;
    uint32_t PetTrainerCount;
    // more info in the growtopia-things repos
    std::vector<PetItemId> PetList;
};

struct WorldTileSteamEngineExtra {
    uint32_t Temperature;
};

struct WorldTileLockBotExtra {
    uint32_t TimePassedSec;
};

struct WorldTileWeatherMachineExtra {
    // spinning, invert, etc idk
    uint32_t Flags;
};

struct WorldTileSpiritStorageUnitExtra {
    uint32_t JarCount;
};

struct WorldTileDataBedrockExtra {
    uint8_t Unk1[21];
};

struct WorldTileShelfExtra {
    uint32_t TopLeft, TopRight;
    uint32_t BottomLeft, BottomRight;
};

struct WorldTileVipEntranceExtra {
    uint8_t Unk1;
    uint32_t OwnerId;
    std::vector<uint32_t> AllowedIdList;
};

struct WorldTileChallengeTimerExtra {};

struct WorldTileFishWallMountExtra {
    std::string Label;
    uint32_t ItemID;
    uint8_t FishLb;
};

struct WorldTilePortraitExtra {
    std::string Label;
    uint32_t Unk1, Unk2, Unk3, Unk4;
    uint32_t Face, Hat, Hair;
    // Eyecolor and eye??
    uint16_t Unk5, Unk6;
};

struct WorldTileGuildWeatherMachineExtra {
    uint32_t Unk1;
    uint32_t Gravity;
    uint8_t Flags;
};

struct WorldTileFossilPrepStationExtra {
    uint32_t Unk1;
};

struct WorldTileDnaExtractorExtra {};

struct WorldTileHowlerExtra {};

struct WorldTileChemsynthTankExtra {
    uint32_t CurrentChem;
    uint32_t TargetChem;
};

struct WorldTileStorageBlockExtra {
    struct ItemInfo {
        uint32_t ItemId, ItemAmount;
    };
    std::vector<ItemInfo> Items;
};

struct WorldTileCookingOvenExtra {
    struct IngredientInfo {
        uint32_t ItemID, TimeAdded;
    };
    
    uint32_t TemperatureLevel;
    std::vector<IngredientInfo> Ingredients;
    uint32_t Unk1, Unk2, Unk3;
};

struct WorldTileAudioRackExtra {
    std::string Note;
    uint32_t Volume;
};

struct WorldTileGeigerChargerExtra {
    uint32_t Unk1;
};

struct WorldTileAdventureBeginsExtra {};

struct WorldTileTombRobberExtra {};

struct WorldTileBalloonOMaticExtra {
    uint32_t TotalRarity;
    uint8_t TeamType;
};

struct WorldTileTrainingPortExtra {
    uint32_t FishLb;
    uint16_t FishStatus;
    uint32_t FishId;
    uint32_t FishTotalExp;
    uint8_t Unk1[8];
    uint32_t FishLevel;
    uint32_t Unk2;
    uint8_t Unk3[5];
};

struct WorldTileItemSuckerExtra {
    uint32_t ItemIdToSuck;
    uint32_t ItemAmount;
    uint16_t Flags;
    uint32_t Limit;
};

struct WorldTileCyBotExtra {
    struct CommandData {
        uint32_t CommandID;
        uint32_t IsCommandUsed;
        uint8_t Unk1[7];
    };
    uint32_t SyncTimer;
    uint32_t Activated;
    std::vector<CommandData> CommandDatas;
};

struct WorldTileGuildItemExtra {
    uint8_t Unk1[17];
};

struct WorldTileGrowscanExtra {
    uint8_t Unk1;
};

struct WorldTileContainmentFieldPowerNodeExtra {
    uint32_t GhostJarCount;
    std::vector<uint32_t> Unk1;
};

struct WorldTileSpiritBoardExtra {
    uint32_t Unk1;
    uint32_t Unk2;
    uint32_t Unk3;
};

struct WorldTileStormyCloudExtra {
    uint32_t StingDuration;
    uint32_t IsSolid;
    uint32_t NonSolidDuration;
};

struct WorldTileTemporaryPlatformExtra {
    uint32_t Unk1;
};

struct WorldTileSafeVaultExtra {};

struct WorldTileAngelicCountingCloudExtra {
    uint32_t IsRaffling;
    uint16_t Unk1;
    uint8_t AsciiCode; // offset 1 to get correct code
};

struct WorldTileInfinityWeatherMachineExtra {
    uint32_t IntervalMinutes;
    std::vector<uint32_t> WeatherMachineList;
};

struct WorldTilePineappleGuzzlerExtra {
    // the field is unknown
};

struct WorldTileKrakenGalaticBlockExtra {
    uint8_t PatternIndex;
    uint32_t Unk1;
    uint8_t R, G, B;
};

struct WorldTileFriendsEntranceExtra {
    uint32_t OwnerUserId;
    uint16_t Unk1;
    std::vector<uint32_t> AllowedUserList;
};