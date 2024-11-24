#pragma once

#include <string>

// plies cwredwit, me put 10+ houws REing fwags awnd ewnuwms

enum class eItemInfoMaterialType : uint8_t
{
    Wooden,
    Glass,
    Rock,
    Metal, // idk what to name, portculis and stuff.
};

struct ItemInfoFlag
{
    uint16_t Flippable : 1;
    uint16_t Editable : 1;
    uint16_t Seedless : 1;
    uint16_t Permanent : 1;
    uint16_t Dropless : 1;
    uint16_t NoSelf : 1;
    uint16_t NoShadow : 1;
    uint16_t WorldLocked : 1;
    uint16_t Beta : 1;
    uint16_t AutoPickup : 1;
    uint16_t Mod : 1;
    uint16_t RandomGrow : 1;
    uint16_t Public : 1;
    uint16_t Foreground : 1;
    uint16_t Holiday : 1;
    uint16_t Untradeable : 1;
};

// idk for now
struct FXFlags
{
    uint32_t MultiAnimStart : 1;
    uint32_t MultiAnim2Start : 1;
    uint32_t PingPongAnimStart : 1;
    uint32_t OverlayObject : 1;
    uint32_t RenderFXVariantVersion : 1;
    uint32_t OffsetUp : 1;
    uint32_t DualLayer : 1;
    uint32_t UseSkinTint : 1;
    uint32_t SeedTintLayer1 : 1;
    uint32_t SeedTintLayer2 : 1;
    uint32_t RainbowTintLayer1 : 1;
    uint32_t RainbowTintLayer2 : 1;
    uint32_t Glow : 1;
    uint32_t NoArms : 1;
    uint32_t RenderOffHand : 1;
    uint32_t FrontArmPunch : 1;
    uint32_t SlowFallObject : 1;
    uint32_t ReplacementSprite : 1;
    uint32_t OrbFloat : 1;
};

struct ItemInfoFlag3
{
    uint16_t MultiFrame : 1; // the frame is dictated by extra option string
    uint16_t ReverseFrame : 1; // reverse the frame order instead of returning to the first frame immediately
    // idk the rest. Lazy
};

// lets go bits by bits
// this is internally named flags2 in growtopia
struct ItemInfoFlag2
{
    uint32_t RobotDeadly : 1;       
    uint32_t RobotShootLeft : 1;
    uint32_t RobotShootRight : 1;
    uint32_t RobotShootDown : 1;
    uint32_t RobotShootUp : 1;
    uint32_t RobotCanShoot : 1;
    uint32_t RobotLava : 1;
    uint32_t RobotPointy : 1;
    uint32_t RobotShootDeadly : 1;
    uint32_t GuildItem : 1;
    uint32_t GuildFlag : 1;
    uint32_t StarshipHelm : 1;
    uint32_t StarshipReactor : 1;
    uint32_t StarshipViewScreen : 1;
    uint32_t SuperMod : 1;
    uint32_t TileDeadlyIfOn : 1;
    uint32_t LongHandItem64x32 : 1;
    uint32_t Gemless : 1;
    uint32_t Transmutable : 1;
    uint32_t DungeonItem : 1;
    uint32_t PVEMelee : 1;
    uint32_t PVERanged : 1;
    uint32_t PVEAutoAim : 1;
    uint32_t OneInWorld : 1;
    uint32_t OnlyForWorldOwner : 1;
    uint32_t NoUpgrade : 1;
    uint32_t ExtinguishFire : 1;
    uint32_t ExtinguishFireNoDamage : 1;
    uint32_t NeedReceptionDesk : 1;
    uint32_t UsePaint : 1;
};


// dont know where this is but might get discovered later. 
//struct ItemInfoFlags5 {
//    uint32_t ServerFlagAltMode : 1;
//};

enum class eItemInfoItemType : uint8_t
{
    AnyButSeed = (uint8_t)-2,
    Any = (uint8_t)-1,
    Fist = 0,
    Wrench = 1,
    UserDoor = 2,
    Lock = 3,
    Gems = 4,
    Treasure = 5,
    Deadly = 6,
    Trampoline = 7,
    Consumable = 8,
    Gateway = 9,
    Sign = 10,
    SfxWithExtraFrame = 11,
    Boombox = 12,
    Door = 13,
    Platform = 14,
    Bedrock = 15,
    Lava = 16,
    Normal = 17,
    Background = 18,
    Seed = 19,
    Clothes = 20,
    NormalWithExtraFrame = 21,
    BackgdSfxExtraFrame = 22,
    BackBoombox = 23,
    Bouncy = 24,
    Pointy = 25,
    Portal = 26,
    Checkpoint = 27,
    Musicnote = 28,
    Ice = 29,
    Switcheroo = 31,
    Chest = 32,
    Mailbox = 33,
    Bulletin = 34,
    Pinata = 35,
    Dice = 36,
    Component = 37,
    Provider = 38,
    Lab = 39,
    Achievement = 40,
    WeatherMachine = 41,
    Scoreboard = 42,
    Sungate = 43,
    Profile = 44,
    DeadlyIfOn = 45,
    Heartmonitor = 46,
    DonationBox = 47,
    Toybox = 48,
    Mannequin = 49,
    Camera = 50,
    Magicegg = 51,
    Team = 52,
    GameGen = 53,
    Xenonite = 54,
    Dressup = 55,
    Crystal = 56,
    Burglar = 57,
    Compactor = 58,
    Spotlight = 59,
    Wind = 60,
    DisplayBlock = 61,
    Vending = 62,
    Fishtank = 63,
    Petfish = 64,
    Solar = 65,
    Forge = 66,
    GivingTree = 67,
    GivingTreeStump = 68,
    Steampunk = 69,
    SteamLavaIfOn = 70,
    SteamOrgan = 71,
    Tamagotchi = 72,
    Sewing = 73,
    Flag = 74,
    LobsterTrap = 75,
    Artcanvas = 76,
    BattleCage = 77,
    PetTrainer = 78,
    SteamEngine = 79,
    LockBot = 80,
    WeatherSpecial = 81,
    SpiritStorage = 82,
    DisplayShelf = 83,
    VipDoor = 84,
    ChalTimer = 85,
    ChalFlag = 86,
    FishMount = 87,
    Portrait = 88,
    WeatherSpecial2 = 89,
    Fossil = 90,
    FossilPrep = 91,
    DnaMachine = 92,
    Blaster = 93,
    Valhowla = 94,
    Chemsynth = 95,
    Chemtank = 96,
    Storage = 97,
    Oven = 98,
    SuperMusic = 99,
    Geigercharge = 100,
    AdventureReset = 101,
    TombRobber = 102,
    Faction = 103,
    RedFaction = 104,
    GreenFaction = 105,
    BlueFaction = 106,
    Artifact = 107,
    TrampolineMomentum = 108,
    FishgotchiTank = 109,
    FishingBlock = 110,
    ItemSucket = 111,
    ItemPlanter = 112,
    Robot = 113,
    Command = 114,
    Ticket = 115,
    StatsBlock = 116,
    FieldNode = 117,
    OuijaBoard = 118,
    ArchitectMachine = 119,
    Starship = 120,
    AutoActionBreak = 123,
    AutoActionHarvest = 124,
    AutoActionHarvestSuck = 125,
    LightningIfOn = 126,
    PhasedBlock = 127,
    Mud = 128,
    RootCutting = 129,
    PasswordStorage = 130,
    PhasedBlock2 = 131,
    Bomb = 132,
    WeatherInfinity = 134,
    Slime = 135,
    Acid = 136,
    Completionist = 137,
    PunchToggle = 138,
    AnzuBlock = 139,
    FeedingBlock = 140,
    KrankensBlock = 141,
    FriendsEntrance = 142,
    Pearls = 143,
};

enum class eItemInfoVisualEffect : uint8_t
{
    None = 1,
    FlameLick = 1,
    Smoking = 2,
    GlowTint1 = 3,
    Anim = 4,
    Bubbles = 5,
    Pet = 6,
    PetAnim = 7,
    NoArms = 8,
    Wavey = 9,
    WaveyAnim = 10,
    Botharms = 11,
    Lowhair = 12,
    Underface = 13,
    Skintint = 14,
    Mask = 15,
    AnimMask = 16,
    LowhairMask = 17,
    Ghost = 18,
    BubbleMachine = 46,
    Pulse = 19,
    Colorize = 20,
    ColorizeToShirt = 21,
    ColorizeAnim = 22,
    Highface = 23,
    HighfaceAnim = 24,
    RainbowShift = 25,
    Backfore = 26,
    ColorizeWithSkin = 27,
    NoRender = 28,
    Spin = 29,
    Offhand = 30,
    Winged = 31,
    Sink = 32,
    Darkness = 33,
    Lightsource = 34,
    LightIfOn = 35,
    Discolor = 36,
    StepSpin = 37,
    Petcolored = 38,
    Silkfoot = 39,
    Tilty = 40,
    TiltyDark = 41,
    NextFrameIfOn = 42,
    Wobble = 43,
    Scroll = 44,
    LightsourcePulse = 45,
    Verylowhair = 47,
    VerylowhairMask = 48,
};

enum class eItemInfoTextureType : uint8_t
{
    None = 1,
    EightDirection,
    Horizontal,
    AttachedToWall,
    FourDirection,
    Randomized,
    Vertical,
    HorizontalCavePlatform,
    AttachedToWallGround,
    Diagonal,
};
     
enum class eItemInfoCollisionType : uint8_t
{
    None,
    Full,
    JumpThrough,
    Gateway,
    CollideIfOff,
    OneWay,
    VIPDoor,
    JumpDown,
    Adventure,
    CollideIfOn,
    Faction,
    Guild,
    Cloud,
    FriendEntrance
};
     
enum class eItemInfoSeedBase : uint8_t
{
    None,
    ShadeUpper,
    Empty,
    Rough,
    Lines,
    Empty2,
    Rough2,
    Rough3,
    Lines2,
    CircleCenter,
    CircleCenter2,
    Empty3,
    DarkBottom,
    ShadeTop,
    Empty4,
    Cracked,
};
     
enum class eItemInfoSeedOverlay : uint8_t
{
    Lines,
    Stripey = 2,
    PolkaDot = 4,
    ShadeHalf = 6,
    Cross = 8,
    JaggedLine = 10,
    WaveyLines = 12,
    DiagonalLines = 14,
};
     
enum class eItemInfoTreeBase : uint8_t
{
    BranchTree,
    Roots,
    Roots2,
    BigTrunk,
    BranchTree2,
    NoRoots,
    BentSlightly,
    VineLikePlant,
};
     
enum class eItemInfoTreeLeaves : uint8_t
{
    FlatLeaves = 0,
    BigTriangularLeaves = 2,
    BigCircleLeaves = 4,
    CircularLeaves = 6,
};

struct eItemInfoColor
{
    uint8_t A;
    uint8_t R;
    uint8_t G;
    uint8_t B;
};

enum class eItemInfoClothingType : uint8_t
{
    None,
    Shirt,
    Pants,
    Shoes,
    Face,
    Hand,
    Back,
    Hair,
    Neck
};


// Most of the new field is discovered by https://github.com/FakeLeq
struct ItemInfo
{
    uint32_t ItemID;
    ItemInfoFlag Flags;
    eItemInfoItemType ItemType;
    eItemInfoMaterialType MaterialType;
    std::string ItemName;
    std::string TextureFilePath;
    int32_t TextureFileHash;
    eItemInfoVisualEffect VisualEffect;
    uint32_t CookingIngredientType;
    uint8_t TextureCoordX;
    uint8_t TextureCoordY;
    eItemInfoTextureType TextureType;
    uint8_t IsStripeyWallpaper;
    eItemInfoCollisionType CollisionType;
    uint8_t Health;
    uint32_t ResetTime;
    eItemInfoClothingType ClothingType;
    uint16_t Rarity;
    uint8_t MaxAmount;
    std::string ExtraFile;
    uint32_t ExtraFileHash;
    uint32_t AnimationTime;
    std::string PetName;
    std::string PetPrefix;
    std::string PetSuffix;
    std::string PetAbility;
    eItemInfoSeedBase SeedBase;
    eItemInfoSeedOverlay SeedOverlay;
    eItemInfoTreeBase TreeBase;
    eItemInfoTreeLeaves TreeLeaves;
    eItemInfoColor SeedColor;
    eItemInfoColor SeedOverlayColor;
    uint32_t Ingredient; // unused now.
    uint32_t GrowTime;
    ItemInfoFlag3 Flags3; // idk 
    uint16_t IsRayman;
    std::string ExtraOption;
    std::string TextureFile2;
    std::string ExtraOption2;
    uint8_t __Unk_1[8];
    ItemInfoFlag2 Flags2;
    uint8_t __Unk_2[60];
    uint32_t DomainRange; 
    uint32_t VaultCapacity; 
    std::string PunchOptions;
    uint8_t __Unk_3[4];
    uint8_t BodyPartList[9];
    uint8_t __Unk_4[8];
    uint8_t CanSit;
    uint32_t MovePlayerHorizontal;
    uint32_t MovePlayerVertical;
    uint32_t ChairTextureX;
    uint32_t ChairTextureY;
    uint32_t MoveChairLegHorizontal;
    uint32_t MoveChairLegVertical;
    std::string SitTextureFile;
    std::string RendererFilePath;
    uint8_t __Unk_5[4];
    int32_t RendererFileHash;
    uint8_t __Unk_6[6]; // v19
};