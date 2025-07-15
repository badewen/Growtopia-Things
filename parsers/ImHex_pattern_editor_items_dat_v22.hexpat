// for v21

#pragma pattern_limit 3940343
import std.io;
import std.mem;
import std.math;

fn DecryptItemName(u32 itemId, auto encName) {
    str cypher = "PBG892FXX982ABC*";
    str decrypted = encName;
    
    for (u64 i = 0, i < sizeof(encName), i+=1) {
        u64 cypher_char_index = (i + itemId) % sizeof(cypher);
        char cypher_char = cypher[cypher_char_index];
        decrypted[i] = (encName[i] ^ cypher_char);
    }
    
    return decrypted;
};

enum eItemInfoMaterialType : u8
{
    Wooden,
    Glass,
    Rock,
    Metal, // idk what to name, portculis and stuff.
};

bitfield ItemInfoFlag
{
    Flippable : 1;
    Editable : 1;
    Seedless : 1;
    Permanent : 1;
    Dropless : 1;
    NoSelf : 1;
    NoShadow : 1;
    WorldLocked : 1;
    Beta : 1;
    AutoPickup : 1;
    Mod : 1;
    RandomGrow : 1;
    Public : 1;
    Foreground : 1;
    Holiday : 1;
    Untradeable : 1;
};

// idk for now
bitfield FXFlags
{
    MultiAnimStart : 1;
    MultiAnim2Start : 1;
    PingPongAnimStart : 1;
    OverlayObject : 1;
    RenderFXVariantVersion : 1;
    OffsetUp : 1;
    DualLayer : 1;
    UseSkinTint : 1;
    SeedTintLayer1 : 1;
    SeedTintLayer2 : 1;
    RainbowTintLayer1 : 1;
    RainbowTintLayer2 : 1;
    Glow : 1;
    NoArms : 1;
    RenderOffHand : 1;
    FrontArmPunch : 1;
    SlowFallObject : 1;
    ReplacementSprite : 1;
    OrbFloat : 1;
    padding : 13;
};

// lets go bits by bits
// this is internally named flags2 in growtopia
bitfield ItemInfoFlag2
{
    RobotDeadly : 1;       
    RobotShootLeft : 1;
    RobotShootRight : 1;
    RobotShootDown : 1;
    RobotShootUp : 1;
    RobotCanShoot : 1;
    RobotLava : 1;
    RobotPointy : 1;
    RobotShootDeadly : 1;
    GuildItem : 1;
    GuildFlag : 1;
    StarshipHelm : 1;
    StarshipReactor : 1;
    StarshipViewScreen : 1;
    SuperMod : 1;
    TileDeadlyIfOn : 1;
    LongHandItem64x32 : 1;
    Gemless : 1;
    Transmutable : 1;
    DungeonItem : 1;
    PVEMelee : 1;
    PVERanged : 1;
    PVEAutoAim : 1;
    OneInWorld : 1;
    OnlyForWorldOwner : 1;
    NoUpgrade : 1;
    ExtinguishFire : 1;
    ExtinguishFireNoDamage : 1;
    NeedReceptionDesk : 1;
    UsePaint : 1;
    padding : 2;
};


// dont know where this is but might get discovered later. 
//bitfield ItemInfoFlags5 {
//    u32 ServerFlagAltMode : 1;
//};

enum eItemInfoItemType : u8
{
    AnyButSeed = (u8(-2)),
    Any = (u8(-1)),
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
    RaceFlag = 30,
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
    HeartMonitor = 46,
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
    ItemSucker = 111,
    ItemPlanter = 112,
    Robot = 113,
    Command = 114,
    LuckyTicket = 115,
    StatsBlock = 116,
    FieldNode = 117,
    OuijaBoard = 118,
    ArchitectMachine = 119,
    Starship = 120,
    Autodelete = 121,
    Boombox2 = 122,
    AutoActionBreak = 123,
    AutoActionHarvest = 124,
    AutoActionHarvestSuck = 125,
    LightningCloud = 126,
    PhasedBlock = 127,
    Mud = 128,
    RootCutting = 129,
    PasswordStorage = 130,
    PhasedBlock2 = 131,
    Bomb = 132,
    PveNpc = 133,
    InfinityWeatherMachine = 134,
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

enum eItemInfoVisualEffect : u8
{
    None = 0,
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

enum eItemInfoTextureType : u8
{
    SingleFrameAlone = 0,
    SingleFrame = 1,
    SmartEdge = 2,
    SmartEdgeHoriz = 3,
    SmartCling = 4,
    SmartCling2 = 5,
    SmartOuter = 6,
    Random = 7,
    SmartEdgeVert = 8,
    SmartEdgeHorizCave = 9,
    SmartEdgeDiagon = 10    
    // None = 1,
    // EightDirection,
    // Horizontal,
    // AttachedToWall,
    // FourDirection,
    // Randomized,
    // Vertical,
    // HorizontalCavePlatform,
    // AttachedToWallGround,
    // Diagonal,
};
     
enum eItemInfoCollisionType : u8
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
     
enum eItemInfoSeedBase : u8
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
     
enum eItemInfoSeedOverlay : u8
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
     
enum eItemInfoTreeBase : u8
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
     
enum eItemInfoTreeLeaves : u8
{
    FlatLeaves = 0,
    BigTriangularLeaves = 2,
    BigCircleLeaves = 4,
    CircularLeaves = 6,
};

bitfield eItemInfoColor
{
    A : 8;
    R : 8;
    G : 8;
    B : 8;
};

enum eItemInfoClothingType : u8
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

struct ItemInfo {
    u32                     ItemId [[color("FFFF0")]];
    ItemInfoFlag		    flags;
    eItemInfoItemType	    item_type;
    eItemInfoMaterialType	material;
    u16		                name_len;
    char	                encrypted_name[name_len];
    str                     decrypted_name = DecryptItemName(ItemId, encrypted_name) [[export]];
    u16		                texture_file_len;
    char	                texture_file[texture_file_len];
    u32		                texture_file_hash;
    eItemInfoVisualEffect	visual_effect;
    u32		                cooking_time;
    u8		                tex_coord_x;
    u8		                tex_coord_y;
    eItemInfoTextureType	texture_type;
    u8		                is_stripey_wallpaper;
    eItemInfoCollisionType	collision_type;
    u8		                health;
    u32		                restore_time;
    eItemInfoClothingType	clothing_type;
    u16		                rarity;
    u8		                max_amount;
    u16		                extra_file_len;
    char	                extra_file[extra_file_len];
    u32		                extra_file_hash;
    u32		                frame_interval_ms;
    u16		                pet_name_len;
    char	                pet_name[pet_name_len];
    u16		                pet_prefix_len;
    char	                pet_prefix[pet_prefix_len];
    u16		                pet_suffix_len;
    char	                pet_suffix[pet_suffix_len];
    u16		                pet_ability_len;
    char	                pet_ability[pet_ability_len];
    eItemInfoSeedBase		seed_base;
    eItemInfoSeedOverlay	seed_overlay;
    eItemInfoTreeBase		tree_base;
    eItemInfoTreeLeaves		tree_leaves;
    eItemInfoColor		    seed_color;
    eItemInfoColor		    seed_overlay_color;
    u32		                ingredient;
    u32		                grow_time;
    FXFlags		            fx_flags;
    u16		                animating_coordinates_len;
    char	                animating_coordinates[animating_coordinates_len];
    u16		                animating_texture_files_len;
    char	                animating_texture_files[animating_texture_files_len];
    u16		                animating_coordinates_2_len;
    char	                animating_coordinates_2[animating_coordinates_2_len];
    u32		                unk1;
    u32		                unk2;
    ItemInfoFlag2		    flags_2;

    u8		                unk3[60];

    u32		                tile_range;
    u32		                vault_capacity;
    u16		                punch_options_len;
    char	                punch_options[punch_options_len];
    u32		                unk4;
    u8		                body_part_list[9];
    u32		                light_range;
    u32		                unk5;
    u8		                can_sit;
    u32		                player_offset_x;
    u32		                player_offset_y;
    u32		                chari_texture_x;
    u32		                chair_texture_y;
    u32		                chair_leg_offset_x;
    u32		                chair_leg_offset_y;
    u16		                chair_texture_file_len;
    char	                chair_texture_file[chair_texture_file_len];
    u16		                renderer_data_file_len;
    char	                renderer_data_file[renderer_data_file_len];
    u32		                unk6;
    u32		                renderer_data_file_hash;
    u8		                unk7[9];
    u16                     unk8;
    u16                     infoLen;
    char                    info[infoLen];
};

struct ItemDataHeader {
    u16 Version;
    u32 ItemCount;
};


ItemDataHeader itemDataHeader @ 0x0;

ItemInfo itemInfos[itemDataHeader.ItemCount] @ 0x6;
