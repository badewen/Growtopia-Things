// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class GrowtopiaWorld : KaitaiStruct
    {
        public static GrowtopiaWorld FromFile(string fileName)
        {
            return new GrowtopiaWorld(new KaitaiStream(fileName));
        }

        public GrowtopiaWorld(KaitaiStream p__io, KaitaiStruct p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _version = m_io.ReadU2le();
            _unk1 = m_io.ReadU4le();
            _name = new GtStr(m_io, this, m_root);
            _width = m_io.ReadU4le();
            _height = m_io.ReadU4le();
            _numTiles = m_io.ReadU4le();
            _unk2 = m_io.ReadBytes(5);
            _tiles = new List<WorldTile>();
            for (var i = 0; i < NumTiles; i++)
            {
                _tiles.Add(new WorldTile(m_io, this, m_root));
            }
            _unk3 = m_io.ReadBytes(12);
            _numObjects = m_io.ReadU4le();
            _lastObjectUid = m_io.ReadU4le();
            _objects = new List<WorldObject>();
            for (var i = 0; i < NumObjects; i++)
            {
                _objects.Add(new WorldObject(m_io, this, m_root));
            }
        }
        public partial class ARGB : KaitaiStruct
        {
            public static ARGB FromFile(string fileName)
            {
                return new ARGB(new KaitaiStream(fileName));
            }

            public ARGB(KaitaiStream p__io, GrowtopiaWorld.SilkWormExtra p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _a = m_io.ReadU1();
                _r = m_io.ReadU1();
                _g = m_io.ReadU1();
                _b = m_io.ReadU1();
            }
            private byte _a;
            private byte _r;
            private byte _g;
            private byte _b;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.SilkWormExtra m_parent;
            public byte A { get { return _a; } }
            public byte R { get { return _r; } }
            public byte G { get { return _g; } }
            public byte B { get { return _b; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.SilkWormExtra M_Parent { get { return m_parent; } }
        }
        public partial class AchievementBlockExtra : KaitaiStruct
        {
            public static AchievementBlockExtra FromFile(string fileName)
            {
                return new AchievementBlockExtra(new KaitaiStream(fileName));
            }

            public AchievementBlockExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _unk1 = m_io.ReadU4le();
                _achievementId = m_io.ReadU1();
            }
            private uint _unk1;
            private byte _achievementId;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public uint Unk1 { get { return _unk1; } }
            public byte AchievementId { get { return _achievementId; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class AdventureBeginsExtra : KaitaiStruct
        {
            public static AdventureBeginsExtra FromFile(string fileName)
            {
                return new AdventureBeginsExtra(new KaitaiStream(fileName));
            }

            public AdventureBeginsExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
            }
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class AngelicCountingCloudExtra : KaitaiStruct
        {
            public static AngelicCountingCloudExtra FromFile(string fileName)
            {
                return new AngelicCountingCloudExtra(new KaitaiStream(fileName));
            }


            public enum States
            {
                Raffling = 1,
                DoneRaffling = 2,
            }
            public AngelicCountingCloudExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _state = ((States) m_io.ReadU4le());
                _unk1 = m_io.ReadU2le();
                if (State == States.DoneRaffling) {
                    _asciiCode = m_io.ReadU1();
                }
            }
            private States _state;
            private ushort _unk1;
            private byte? _asciiCode;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public States State { get { return _state; } }
            public ushort Unk1 { get { return _unk1; } }
            public byte? AsciiCode { get { return _asciiCode; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class AudioRackExtra : KaitaiStruct
        {
            public static AudioRackExtra FromFile(string fileName)
            {
                return new AudioRackExtra(new KaitaiStream(fileName));
            }

            public AudioRackExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _note = new GtStr(m_io, this, m_root);
                _volume = m_io.ReadU4le();
            }
            private GtStr _note;
            private uint _volume;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public GtStr Note { get { return _note; } }
            public uint Volume { get { return _volume; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class BalloonOMaticExtra : KaitaiStruct
        {
            public static BalloonOMaticExtra FromFile(string fileName)
            {
                return new BalloonOMaticExtra(new KaitaiStream(fileName));
            }

            public BalloonOMaticExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _totalRarity = m_io.ReadU4le();
                _teamType = m_io.ReadU1();
            }
            private uint _totalRarity;
            private byte _teamType;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public uint TotalRarity { get { return _totalRarity; } }
            public byte TeamType { get { return _teamType; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class CborData : KaitaiStruct
        {
            public static CborData FromFile(string fileName)
            {
                return new CborData(new KaitaiStream(fileName));
            }

            public CborData(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _lenData = m_io.ReadU4le();
                _data = m_io.ReadBytes(LenData);
            }
            private uint _lenData;
            private byte[] _data;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public uint LenData { get { return _lenData; } }
            public byte[] Data { get { return _data; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class ChallengeTimerExtra : KaitaiStruct
        {
            public static ChallengeTimerExtra FromFile(string fileName)
            {
                return new ChallengeTimerExtra(new KaitaiStream(fileName));
            }

            public ChallengeTimerExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
            }
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class ChemsynthTankExtra : KaitaiStruct
        {
            public static ChemsynthTankExtra FromFile(string fileName)
            {
                return new ChemsynthTankExtra(new KaitaiStream(fileName));
            }

            public ChemsynthTankExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _currentChemId = m_io.ReadU4le();
                _supposedChemId = m_io.ReadU4le();
            }
            private uint _currentChemId;
            private uint _supposedChemId;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public uint CurrentChemId { get { return _currentChemId; } }
            public uint SupposedChemId { get { return _supposedChemId; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class ContainmentFieldPowerNodeExtra : KaitaiStruct
        {
            public static ContainmentFieldPowerNodeExtra FromFile(string fileName)
            {
                return new ContainmentFieldPowerNodeExtra(new KaitaiStream(fileName));
            }

            public ContainmentFieldPowerNodeExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _timeMs = m_io.ReadU4le();
                _numLinkedNodes = m_io.ReadU4le();
                _linkedNodes = new List<uint>();
                for (var i = 0; i < NumLinkedNodes; i++)
                {
                    _linkedNodes.Add(m_io.ReadU4le());
                }
            }
            private uint _timeMs;
            private uint _numLinkedNodes;
            private List<uint> _linkedNodes;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public uint TimeMs { get { return _timeMs; } }
            public uint NumLinkedNodes { get { return _numLinkedNodes; } }
            public List<uint> LinkedNodes { get { return _linkedNodes; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class CookingOvenExtra : KaitaiStruct
        {
            public static CookingOvenExtra FromFile(string fileName)
            {
                return new CookingOvenExtra(new KaitaiStream(fileName));
            }

            public CookingOvenExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _tempLevel = m_io.ReadU4le();
                _ingredientListSize = m_io.ReadU4le();
                _ingredients = new List<Ingredient>();
                for (var i = 0; i < IngredientListSize / 2; i++)
                {
                    _ingredients.Add(new Ingredient(m_io, this, m_root));
                }
                _unk1 = m_io.ReadU4le();
                _unk2 = m_io.ReadU4le();
                _unk3 = m_io.ReadU4le();
            }
            public partial class Ingredient : KaitaiStruct
            {
                public static Ingredient FromFile(string fileName)
                {
                    return new Ingredient(new KaitaiStream(fileName));
                }

                public Ingredient(KaitaiStream p__io, GrowtopiaWorld.CookingOvenExtra p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
                {
                    m_parent = p__parent;
                    m_root = p__root;
                    _read();
                }
                private void _read()
                {
                    _itemId = m_io.ReadU4le();
                    _timeAdded = m_io.ReadU4le();
                }
                private uint _itemId;
                private uint _timeAdded;
                private GrowtopiaWorld m_root;
                private GrowtopiaWorld.CookingOvenExtra m_parent;
                public uint ItemId { get { return _itemId; } }
                public uint TimeAdded { get { return _timeAdded; } }
                public GrowtopiaWorld M_Root { get { return m_root; } }
                public GrowtopiaWorld.CookingOvenExtra M_Parent { get { return m_parent; } }
            }
            private uint _tempLevel;
            private uint _ingredientListSize;
            private List<Ingredient> _ingredients;
            private uint _unk1;
            private uint _unk2;
            private uint _unk3;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public uint TempLevel { get { return _tempLevel; } }
            public uint IngredientListSize { get { return _ingredientListSize; } }
            public List<Ingredient> Ingredients { get { return _ingredients; } }
            public uint Unk1 { get { return _unk1; } }
            public uint Unk2 { get { return _unk2; } }
            public uint Unk3 { get { return _unk3; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class CountryFlagExtra : KaitaiStruct
        {
            public static CountryFlagExtra FromFile(string fileName)
            {
                return new CountryFlagExtra(new KaitaiStream(fileName));
            }

            public CountryFlagExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                if (M_Parent.Fg == 3394) {
                    _country = new GtStr(m_io, this, m_root);
                }
            }
            private GtStr _country;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public GtStr Country { get { return _country; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class CrimeInProgressExtra : KaitaiStruct
        {
            public static CrimeInProgressExtra FromFile(string fileName)
            {
                return new CrimeInProgressExtra(new KaitaiStream(fileName));
            }

            public CrimeInProgressExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _crimeName = new GtStr(m_io, this, m_root);
                _crimeIndex = m_io.ReadU4le();
                _unk1 = m_io.ReadU1();
            }
            private GtStr _crimeName;
            private uint _crimeIndex;
            private byte _unk1;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public GtStr CrimeName { get { return _crimeName; } }
            public uint CrimeIndex { get { return _crimeIndex; } }
            public byte Unk1 { get { return _unk1; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class CrystalExtra : KaitaiStruct
        {
            public static CrystalExtra FromFile(string fileName)
            {
                return new CrystalExtra(new KaitaiStream(fileName));
            }

            public CrystalExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _numCrystals = m_io.ReadU2le();
                _crystals = new List<byte>();
                for (var i = 0; i < NumCrystals; i++)
                {
                    _crystals.Add(m_io.ReadU1());
                }
            }
            private ushort _numCrystals;
            private List<byte> _crystals;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public ushort NumCrystals { get { return _numCrystals; } }
            public List<byte> Crystals { get { return _crystals; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class CybotExtra : KaitaiStruct
        {
            public static CybotExtra FromFile(string fileName)
            {
                return new CybotExtra(new KaitaiStream(fileName));
            }

            public CybotExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _numCommands = m_io.ReadU4le();
                _commands = new List<Command>();
                for (var i = 0; i < NumCommands; i++)
                {
                    _commands.Add(new Command(m_io, this, m_root));
                }
                _timer = m_io.ReadU4le();
                _isActivated = m_io.ReadU4le();
            }
            public partial class Command : KaitaiStruct
            {
                public static Command FromFile(string fileName)
                {
                    return new Command(new KaitaiStream(fileName));
                }

                public Command(KaitaiStream p__io, GrowtopiaWorld.CybotExtra p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
                {
                    m_parent = p__parent;
                    m_root = p__root;
                    _read();
                }
                private void _read()
                {
                    _commandId = m_io.ReadU4le();
                    _isCommandUsed = m_io.ReadU4le();
                    _unk1 = m_io.ReadBytes(7);
                }
                private uint _commandId;
                private uint _isCommandUsed;
                private byte[] _unk1;
                private GrowtopiaWorld m_root;
                private GrowtopiaWorld.CybotExtra m_parent;
                public uint CommandId { get { return _commandId; } }
                public uint IsCommandUsed { get { return _isCommandUsed; } }
                public byte[] Unk1 { get { return _unk1; } }
                public GrowtopiaWorld M_Root { get { return m_root; } }
                public GrowtopiaWorld.CybotExtra M_Parent { get { return m_parent; } }
            }
            private uint _numCommands;
            private List<Command> _commands;
            private uint _timer;
            private uint _isActivated;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public uint NumCommands { get { return _numCommands; } }
            public List<Command> Commands { get { return _commands; } }
            public uint Timer { get { return _timer; } }
            public uint IsActivated { get { return _isActivated; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class DataBedrockExtra : KaitaiStruct
        {
            public static DataBedrockExtra FromFile(string fileName)
            {
                return new DataBedrockExtra(new KaitaiStream(fileName));
            }

            public DataBedrockExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _unk1 = m_io.ReadBytes(17);
                _pad1 = m_io.ReadBytes(4);
            }
            private byte[] _unk1;
            private byte[] _pad1;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public byte[] Unk1 { get { return _unk1; } }
            public byte[] Pad1 { get { return _pad1; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class DiceExtra : KaitaiStruct
        {
            public static DiceExtra FromFile(string fileName)
            {
                return new DiceExtra(new KaitaiStream(fileName));
            }

            public DiceExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _symbol = m_io.ReadU1();
            }
            private byte _symbol;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public byte Symbol { get { return _symbol; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class DisplayBlockExtra : KaitaiStruct
        {
            public static DisplayBlockExtra FromFile(string fileName)
            {
                return new DisplayBlockExtra(new KaitaiStream(fileName));
            }

            public DisplayBlockExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _itemId = m_io.ReadU4le();
            }
            private uint _itemId;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public uint ItemId { get { return _itemId; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class DnaExtractorExtra : KaitaiStruct
        {
            public static DnaExtractorExtra FromFile(string fileName)
            {
                return new DnaExtractorExtra(new KaitaiStream(fileName));
            }

            public DnaExtractorExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
            }
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class DoorExtra : KaitaiStruct
        {
            public static DoorExtra FromFile(string fileName)
            {
                return new DoorExtra(new KaitaiStream(fileName));
            }

            public DoorExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _label = new GtStr(m_io, this, m_root);
                _flags = m_io.ReadU1();
            }
            private GtStr _label;
            private byte _flags;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public GtStr Label { get { return _label; } }
            public byte Flags { get { return _flags; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class FishTankPortExtra : KaitaiStruct
        {
            public static FishTankPortExtra FromFile(string fileName)
            {
                return new FishTankPortExtra(new KaitaiStream(fileName));
            }

            public FishTankPortExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _flags = m_io.ReadU1();
                _fishDataLength = m_io.ReadU4le();
                _fishes = new List<FishInfo>();
                for (var i = 0; i < FishDataLength / 2; i++)
                {
                    _fishes.Add(new FishInfo(m_io, this, m_root));
                }
            }
            public partial class FishInfo : KaitaiStruct
            {
                public static FishInfo FromFile(string fileName)
                {
                    return new FishInfo(new KaitaiStream(fileName));
                }

                public FishInfo(KaitaiStream p__io, GrowtopiaWorld.FishTankPortExtra p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
                {
                    m_parent = p__parent;
                    m_root = p__root;
                    _read();
                }
                private void _read()
                {
                    _itemId = m_io.ReadU4le();
                    _lbs = m_io.ReadU4le();
                }
                private uint _itemId;
                private uint _lbs;
                private GrowtopiaWorld m_root;
                private GrowtopiaWorld.FishTankPortExtra m_parent;
                public uint ItemId { get { return _itemId; } }
                public uint Lbs { get { return _lbs; } }
                public GrowtopiaWorld M_Root { get { return m_root; } }
                public GrowtopiaWorld.FishTankPortExtra M_Parent { get { return m_parent; } }
            }
            private byte _flags;
            private uint _fishDataLength;
            private List<FishInfo> _fishes;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public byte Flags { get { return _flags; } }
            public uint FishDataLength { get { return _fishDataLength; } }
            public List<FishInfo> Fishes { get { return _fishes; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class FishWallMountExtra : KaitaiStruct
        {
            public static FishWallMountExtra FromFile(string fileName)
            {
                return new FishWallMountExtra(new KaitaiStream(fileName));
            }

            public FishWallMountExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _label = new GtStr(m_io, this, m_root);
                _itemId = m_io.ReadU4le();
                _lbs = m_io.ReadU1();
            }
            private GtStr _label;
            private uint _itemId;
            private byte _lbs;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public GtStr Label { get { return _label; } }
            public uint ItemId { get { return _itemId; } }
            public byte Lbs { get { return _lbs; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class ForgeExtra : KaitaiStruct
        {
            public static ForgeExtra FromFile(string fileName)
            {
                return new ForgeExtra(new KaitaiStream(fileName));
            }

            public ForgeExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _temperature = m_io.ReadU4le();
            }
            private uint _temperature;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public uint Temperature { get { return _temperature; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class FossilPrepStationExtra : KaitaiStruct
        {
            public static FossilPrepStationExtra FromFile(string fileName)
            {
                return new FossilPrepStationExtra(new KaitaiStream(fileName));
            }

            public FossilPrepStationExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _unk1 = m_io.ReadU4le();
            }
            private uint _unk1;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public uint Unk1 { get { return _unk1; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class FriendsEntranceExtra : KaitaiStruct
        {
            public static FriendsEntranceExtra FromFile(string fileName)
            {
                return new FriendsEntranceExtra(new KaitaiStream(fileName));
            }

            public FriendsEntranceExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _ownerUserid = m_io.ReadU4le();
                _unk1 = m_io.ReadBytes(2);
                _numAllowedFriendsUserid = m_io.ReadU2le();
                _allowedFriendsUserid = new List<uint>();
                for (var i = 0; i < NumAllowedFriendsUserid; i++)
                {
                    _allowedFriendsUserid.Add(m_io.ReadU4le());
                }
            }
            private uint _ownerUserid;
            private byte[] _unk1;
            private ushort _numAllowedFriendsUserid;
            private List<uint> _allowedFriendsUserid;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public uint OwnerUserid { get { return _ownerUserid; } }
            public byte[] Unk1 { get { return _unk1; } }
            public ushort NumAllowedFriendsUserid { get { return _numAllowedFriendsUserid; } }
            public List<uint> AllowedFriendsUserid { get { return _allowedFriendsUserid; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class GameGeneratorExtra : KaitaiStruct
        {
            public static GameGeneratorExtra FromFile(string fileName)
            {
                return new GameGeneratorExtra(new KaitaiStream(fileName));
            }

            public GameGeneratorExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
            }
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class GameGraveExtra : KaitaiStruct
        {
            public static GameGraveExtra FromFile(string fileName)
            {
                return new GameGraveExtra(new KaitaiStream(fileName));
            }

            public GameGraveExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _teamId = m_io.ReadU1();
            }
            private byte _teamId;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public byte TeamId { get { return _teamId; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class GeigerChargerExtra : KaitaiStruct
        {
            public static GeigerChargerExtra FromFile(string fileName)
            {
                return new GeigerChargerExtra(new KaitaiStream(fileName));
            }

            public GeigerChargerExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _unk1 = m_io.ReadBytes(4);
            }
            private byte[] _unk1;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public byte[] Unk1 { get { return _unk1; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class GivingTreeExtra : KaitaiStruct
        {
            public static GivingTreeExtra FromFile(string fileName)
            {
                return new GivingTreeExtra(new KaitaiStream(fileName));
            }

            public GivingTreeExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _harvested = m_io.ReadU1();
                _age = m_io.ReadU2le();
                _unk1 = m_io.ReadU2le();
                _decorationPercentage = m_io.ReadU1();
            }
            private byte _harvested;
            private ushort _age;
            private ushort _unk1;
            private byte _decorationPercentage;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public byte Harvested { get { return _harvested; } }
            public ushort Age { get { return _age; } }
            public ushort Unk1 { get { return _unk1; } }
            public byte DecorationPercentage { get { return _decorationPercentage; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class GrowscanExtra : KaitaiStruct
        {
            public static GrowscanExtra FromFile(string fileName)
            {
                return new GrowscanExtra(new KaitaiStream(fileName));
            }

            public GrowscanExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _unk1 = m_io.ReadU1();
            }
            private byte _unk1;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public byte Unk1 { get { return _unk1; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class GtStr : KaitaiStruct
        {
            public static GtStr FromFile(string fileName)
            {
                return new GtStr(new KaitaiStream(fileName));
            }

            public GtStr(KaitaiStream p__io, KaitaiStruct p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _lenData = m_io.ReadU2le();
                _str = System.Text.Encoding.GetEncoding("ASCII").GetString(m_io.ReadBytes(LenData));
            }
            private ushort _lenData;
            private string _str;
            private GrowtopiaWorld m_root;
            private KaitaiStruct m_parent;
            public ushort LenData { get { return _lenData; } }
            public string Str { get { return _str; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public KaitaiStruct M_Parent { get { return m_parent; } }
        }
        public partial class GuildExtra : KaitaiStruct
        {
            public static GuildExtra FromFile(string fileName)
            {
                return new GuildExtra(new KaitaiStream(fileName));
            }

            public GuildExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _unk1 = m_io.ReadBytes(17);
            }
            private byte[] _unk1;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public byte[] Unk1 { get { return _unk1; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class HeartMonitorExtra : KaitaiStruct
        {
            public static HeartMonitorExtra FromFile(string fileName)
            {
                return new HeartMonitorExtra(new KaitaiStream(fileName));
            }

            public HeartMonitorExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _userId = m_io.ReadU4le();
                _growId = new GtStr(m_io, this, m_root);
            }
            private uint _userId;
            private GtStr _growId;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public uint UserId { get { return _userId; } }
            public GtStr GrowId { get { return _growId; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class HowlerExtra : KaitaiStruct
        {
            public static HowlerExtra FromFile(string fileName)
            {
                return new HowlerExtra(new KaitaiStream(fileName));
            }

            public HowlerExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
            }
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class InfinityWeatherMachineExtra : KaitaiStruct
        {
            public static InfinityWeatherMachineExtra FromFile(string fileName)
            {
                return new InfinityWeatherMachineExtra(new KaitaiStream(fileName));
            }

            public InfinityWeatherMachineExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _intervalMins = m_io.ReadU4le();
                _numWeatherMachines = m_io.ReadU4le();
                _weatherMachines = new List<uint>();
                for (var i = 0; i < NumWeatherMachines; i++)
                {
                    _weatherMachines.Add(m_io.ReadU4le());
                }
            }
            private uint _intervalMins;
            private uint _numWeatherMachines;
            private List<uint> _weatherMachines;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public uint IntervalMins { get { return _intervalMins; } }
            public uint NumWeatherMachines { get { return _numWeatherMachines; } }
            public List<uint> WeatherMachines { get { return _weatherMachines; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class ItemSuckerExtra : KaitaiStruct
        {
            public static ItemSuckerExtra FromFile(string fileName)
            {
                return new ItemSuckerExtra(new KaitaiStream(fileName));
            }

            public ItemSuckerExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _itemId = m_io.ReadU4le();
                _itemAmount = m_io.ReadU4le();
                _flags = m_io.ReadU2le();
                _itemLimit = m_io.ReadU4le();
            }
            private uint _itemId;
            private uint _itemAmount;
            private ushort _flags;
            private uint _itemLimit;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public uint ItemId { get { return _itemId; } }
            public uint ItemAmount { get { return _itemAmount; } }
            public ushort Flags { get { return _flags; } }
            public uint ItemLimit { get { return _itemLimit; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class KrakensGalaticBlockExtra : KaitaiStruct
        {
            public static KrakensGalaticBlockExtra FromFile(string fileName)
            {
                return new KrakensGalaticBlockExtra(new KaitaiStream(fileName));
            }

            public KrakensGalaticBlockExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _patternNumber = m_io.ReadU1();
                _unk1 = m_io.ReadBytes(4);
                _colorRgb = m_io.ReadBytes(3);
            }
            private byte _patternNumber;
            private byte[] _unk1;
            private byte[] _colorRgb;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public byte PatternNumber { get { return _patternNumber; } }
            public byte[] Unk1 { get { return _unk1; } }
            public byte[] ColorRgb { get { return _colorRgb; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class LobsterTrapExtra : KaitaiStruct
        {
            public static LobsterTrapExtra FromFile(string fileName)
            {
                return new LobsterTrapExtra(new KaitaiStream(fileName));
            }

            public LobsterTrapExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
            }
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class LockBotExtra : KaitaiStruct
        {
            public static LockBotExtra FromFile(string fileName)
            {
                return new LockBotExtra(new KaitaiStream(fileName));
            }

            public LockBotExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _age = m_io.ReadU4le();
            }
            private uint _age;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public uint Age { get { return _age; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class LockExtra : KaitaiStruct
        {
            public static LockExtra FromFile(string fileName)
            {
                return new LockExtra(new KaitaiStream(fileName));
            }

            public LockExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _flag = m_io.ReadU1();
                _ownerUserId = m_io.ReadU4le();
                _numAuthorizedUserids = m_io.ReadU4le();
                _authorizedUserids = new List<uint>();
                for (var i = 0; i < NumAuthorizedUserids; i++)
                {
                    _authorizedUserids.Add(m_io.ReadU4le());
                }
                _minimumLevel = m_io.ReadU1();
                _unk1 = m_io.ReadBytes(7);
                if (M_Parent.Fg == 5814) {
                    _guildLocksUnk = m_io.ReadBytes(16);
                }
            }
            private byte _flag;
            private uint _ownerUserId;
            private uint _numAuthorizedUserids;
            private List<uint> _authorizedUserids;
            private byte _minimumLevel;
            private byte[] _unk1;
            private byte[] _guildLocksUnk;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public byte Flag { get { return _flag; } }
            public uint OwnerUserId { get { return _ownerUserId; } }
            public uint NumAuthorizedUserids { get { return _numAuthorizedUserids; } }
            public List<uint> AuthorizedUserids { get { return _authorizedUserids; } }
            public byte MinimumLevel { get { return _minimumLevel; } }
            public byte[] Unk1 { get { return _unk1; } }
            public byte[] GuildLocksUnk { get { return _guildLocksUnk; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class MagicEggExtra : KaitaiStruct
        {
            public static MagicEggExtra FromFile(string fileName)
            {
                return new MagicEggExtra(new KaitaiStream(fileName));
            }

            public MagicEggExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _eggAmount = m_io.ReadU4le();
            }
            private uint _eggAmount;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public uint EggAmount { get { return _eggAmount; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class MannequinExtra : KaitaiStruct
        {
            public static MannequinExtra FromFile(string fileName)
            {
                return new MannequinExtra(new KaitaiStream(fileName));
            }

            public MannequinExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _label = new GtStr(m_io, this, m_root);
                _unk1 = m_io.ReadU1();
                _unk2 = m_io.ReadU2le();
                _unk3 = m_io.ReadU2le();
                _hat = m_io.ReadU2le();
                _shirt = m_io.ReadU2le();
                _pants = m_io.ReadU2le();
                _boots = m_io.ReadU2le();
                _face = m_io.ReadU2le();
                _hand = m_io.ReadU2le();
                _back = m_io.ReadU2le();
                _hair = m_io.ReadU2le();
                _neck = m_io.ReadU2le();
            }
            private GtStr _label;
            private byte _unk1;
            private ushort _unk2;
            private ushort _unk3;
            private ushort _hat;
            private ushort _shirt;
            private ushort _pants;
            private ushort _boots;
            private ushort _face;
            private ushort _hand;
            private ushort _back;
            private ushort _hair;
            private ushort _neck;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public GtStr Label { get { return _label; } }
            public byte Unk1 { get { return _unk1; } }
            public ushort Unk2 { get { return _unk2; } }
            public ushort Unk3 { get { return _unk3; } }
            public ushort Hat { get { return _hat; } }
            public ushort Shirt { get { return _shirt; } }
            public ushort Pants { get { return _pants; } }
            public ushort Boots { get { return _boots; } }
            public ushort Face { get { return _face; } }
            public ushort Hand { get { return _hand; } }
            public ushort Back { get { return _back; } }
            public ushort Hair { get { return _hair; } }
            public ushort Neck { get { return _neck; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class PaintingEaselExtra : KaitaiStruct
        {
            public static PaintingEaselExtra FromFile(string fileName)
            {
                return new PaintingEaselExtra(new KaitaiStream(fileName));
            }

            public PaintingEaselExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _itemId = m_io.ReadU4le();
                _label = new GtStr(m_io, this, m_root);
            }
            private uint _itemId;
            private GtStr _label;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public uint ItemId { get { return _itemId; } }
            public GtStr Label { get { return _label; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class PetBattleCageExtra : KaitaiStruct
        {
            public static PetBattleCageExtra FromFile(string fileName)
            {
                return new PetBattleCageExtra(new KaitaiStream(fileName));
            }

            public PetBattleCageExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _label = new GtStr(m_io, this, m_root);
                _basePet = m_io.ReadU4le();
                _combinedPet1 = m_io.ReadU4le();
                _combinedPet2 = m_io.ReadU4le();
            }
            private GtStr _label;
            private uint _basePet;
            private uint _combinedPet1;
            private uint _combinedPet2;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public GtStr Label { get { return _label; } }
            public uint BasePet { get { return _basePet; } }
            public uint CombinedPet1 { get { return _combinedPet1; } }
            public uint CombinedPet2 { get { return _combinedPet2; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class PetTrainerExtra : KaitaiStruct
        {
            public static PetTrainerExtra FromFile(string fileName)
            {
                return new PetTrainerExtra(new KaitaiStream(fileName));
            }

            public PetTrainerExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _name = new GtStr(m_io, this, m_root);
                _numPets = m_io.ReadU4le();
                _unk1 = m_io.ReadU4le();
                _pets = new List<uint>();
                for (var i = 0; i < NumPets; i++)
                {
                    _pets.Add(m_io.ReadU4le());
                }
            }
            private GtStr _name;
            private uint _numPets;
            private uint _unk1;
            private List<uint> _pets;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public GtStr Name { get { return _name; } }
            public uint NumPets { get { return _numPets; } }
            public uint Unk1 { get { return _unk1; } }
            public List<uint> Pets { get { return _pets; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class PhoneBoothExtra : KaitaiStruct
        {
            public static PhoneBoothExtra FromFile(string fileName)
            {
                return new PhoneBoothExtra(new KaitaiStream(fileName));
            }

            public PhoneBoothExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _hat = m_io.ReadU2le();
                _shirt = m_io.ReadU2le();
                _pants = m_io.ReadU2le();
                _shoes = m_io.ReadU2le();
                _face = m_io.ReadU2le();
                _hand = m_io.ReadU2le();
                _back = m_io.ReadU2le();
                _hair = m_io.ReadU2le();
                _neck = m_io.ReadU2le();
            }
            private ushort _hat;
            private ushort _shirt;
            private ushort _pants;
            private ushort _shoes;
            private ushort _face;
            private ushort _hand;
            private ushort _back;
            private ushort _hair;
            private ushort _neck;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public ushort Hat { get { return _hat; } }
            public ushort Shirt { get { return _shirt; } }
            public ushort Pants { get { return _pants; } }
            public ushort Shoes { get { return _shoes; } }
            public ushort Face { get { return _face; } }
            public ushort Hand { get { return _hand; } }
            public ushort Back { get { return _back; } }
            public ushort Hair { get { return _hair; } }
            public ushort Neck { get { return _neck; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class PineappleGuzzlerExtra : KaitaiStruct
        {
            public static PineappleGuzzlerExtra FromFile(string fileName)
            {
                return new PineappleGuzzlerExtra(new KaitaiStream(fileName));
            }

            public PineappleGuzzlerExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _pineappleFed = m_io.ReadU4le();
            }
            private uint _pineappleFed;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public uint PineappleFed { get { return _pineappleFed; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class PortraitExtra : KaitaiStruct
        {
            public static PortraitExtra FromFile(string fileName)
            {
                return new PortraitExtra(new KaitaiStream(fileName));
            }

            public PortraitExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _label = new GtStr(m_io, this, m_root);
                _unk1 = m_io.ReadU4le();
                _unk2 = m_io.ReadU4le();
                _unk3 = m_io.ReadBytes(5);
                _unk4 = m_io.ReadU1();
                _unk5 = m_io.ReadU2le();
                _face = m_io.ReadU2le();
                _hat = m_io.ReadU2le();
                _hair = m_io.ReadU2le();
                _unk6 = m_io.ReadU4le();
                if (Hat == 12958) {
                    _infinityCrownData = new GtStr(m_io, this, m_root);
                }
            }
            private GtStr _label;
            private uint _unk1;
            private uint _unk2;
            private byte[] _unk3;
            private byte _unk4;
            private ushort _unk5;
            private ushort _face;
            private ushort _hat;
            private ushort _hair;
            private uint _unk6;
            private GtStr _infinityCrownData;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public GtStr Label { get { return _label; } }
            public uint Unk1 { get { return _unk1; } }
            public uint Unk2 { get { return _unk2; } }
            public byte[] Unk3 { get { return _unk3; } }
            public byte Unk4 { get { return _unk4; } }
            public ushort Unk5 { get { return _unk5; } }
            public ushort Face { get { return _face; } }
            public ushort Hat { get { return _hat; } }
            public ushort Hair { get { return _hair; } }
            public uint Unk6 { get { return _unk6; } }
            public GtStr InfinityCrownData { get { return _infinityCrownData; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class ProviderExtra : KaitaiStruct
        {
            public static ProviderExtra FromFile(string fileName)
            {
                return new ProviderExtra(new KaitaiStream(fileName));
            }

            public ProviderExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _age = m_io.ReadU4le();
                if (M_Parent.Fg == 10656) {
                    _pad1 = m_io.ReadBytes(4);
                }
            }
            private uint _age;
            private byte[] _pad1;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public uint Age { get { return _age; } }
            public byte[] Pad1 { get { return _pad1; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class SafeVaultExtra : KaitaiStruct
        {
            public static SafeVaultExtra FromFile(string fileName)
            {
                return new SafeVaultExtra(new KaitaiStream(fileName));
            }

            public SafeVaultExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
            }
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class SeedExtra : KaitaiStruct
        {
            public static SeedExtra FromFile(string fileName)
            {
                return new SeedExtra(new KaitaiStream(fileName));
            }

            public SeedExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _age = m_io.ReadU4le();
                _fruitCount = m_io.ReadU1();
            }
            private uint _age;
            private byte _fruitCount;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public uint Age { get { return _age; } }
            public byte FruitCount { get { return _fruitCount; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class SewingMachineExtra : KaitaiStruct
        {
            public static SewingMachineExtra FromFile(string fileName)
            {
                return new SewingMachineExtra(new KaitaiStream(fileName));
            }

            public SewingMachineExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _numBoltIds = m_io.ReadU4le();
                _boltIds = new List<uint>();
                for (var i = 0; i < NumBoltIds; i++)
                {
                    _boltIds.Add(m_io.ReadU4le());
                }
            }
            private uint _numBoltIds;
            private List<uint> _boltIds;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public uint NumBoltIds { get { return _numBoltIds; } }
            public List<uint> BoltIds { get { return _boltIds; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class ShelfExtra : KaitaiStruct
        {
            public static ShelfExtra FromFile(string fileName)
            {
                return new ShelfExtra(new KaitaiStream(fileName));
            }

            public ShelfExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _topLeftItemId = m_io.ReadU4le();
                _topRightItemId = m_io.ReadU4le();
                _bottomLeftItemId = m_io.ReadU4le();
                _bottomRightItemId = m_io.ReadU4le();
            }
            private uint _topLeftItemId;
            private uint _topRightItemId;
            private uint _bottomLeftItemId;
            private uint _bottomRightItemId;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public uint TopLeftItemId { get { return _topLeftItemId; } }
            public uint TopRightItemId { get { return _topRightItemId; } }
            public uint BottomLeftItemId { get { return _bottomLeftItemId; } }
            public uint BottomRightItemId { get { return _bottomRightItemId; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class SignExtra : KaitaiStruct
        {
            public static SignExtra FromFile(string fileName)
            {
                return new SignExtra(new KaitaiStream(fileName));
            }

            public SignExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _label = new GtStr(m_io, this, m_root);
                _pad1 = m_io.ReadBytes(4);
            }
            private GtStr _label;
            private byte[] _pad1;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public GtStr Label { get { return _label; } }
            public byte[] Pad1 { get { return _pad1; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class SilkWormExtra : KaitaiStruct
        {
            public static SilkWormExtra FromFile(string fileName)
            {
                return new SilkWormExtra(new KaitaiStream(fileName));
            }

            public SilkWormExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _flags = m_io.ReadU1();
                _name = new GtStr(m_io, this, m_root);
                _ageSec = m_io.ReadU4le();
                _unk1 = m_io.ReadU4le();
                _unk2 = m_io.ReadU4le();
                _canBeFed = m_io.ReadU1();
                _foodSaturation = m_io.ReadU4le();
                _waterSaturation = m_io.ReadU4le();
                _colorArgb = new ARGB(m_io, this, m_root);
                _sickDuration = m_io.ReadU4le();
            }
            private byte _flags;
            private GtStr _name;
            private uint _ageSec;
            private uint _unk1;
            private uint _unk2;
            private byte _canBeFed;
            private uint _foodSaturation;
            private uint _waterSaturation;
            private ARGB _colorArgb;
            private uint _sickDuration;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public byte Flags { get { return _flags; } }
            public GtStr Name { get { return _name; } }
            public uint AgeSec { get { return _ageSec; } }
            public uint Unk1 { get { return _unk1; } }
            public uint Unk2 { get { return _unk2; } }
            public byte CanBeFed { get { return _canBeFed; } }
            public uint FoodSaturation { get { return _foodSaturation; } }
            public uint WaterSaturation { get { return _waterSaturation; } }
            public ARGB ColorArgb { get { return _colorArgb; } }
            public uint SickDuration { get { return _sickDuration; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class SolarCollectorExtra : KaitaiStruct
        {
            public static SolarCollectorExtra FromFile(string fileName)
            {
                return new SolarCollectorExtra(new KaitaiStream(fileName));
            }

            public SolarCollectorExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _unk1 = m_io.ReadBytes(5);
            }
            private byte[] _unk1;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public byte[] Unk1 { get { return _unk1; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class SpiritBoardExtra : KaitaiStruct
        {
            public static SpiritBoardExtra FromFile(string fileName)
            {
                return new SpiritBoardExtra(new KaitaiStream(fileName));
            }

            public SpiritBoardExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _playerRequired = m_io.ReadU4le();
                _unk1 = new GtStr(m_io, this, m_root);
                _command = new GtStr(m_io, this, m_root);
                _numRequiredItems = m_io.ReadU4le();
                _requiredItems = new List<uint>();
                for (var i = 0; i < NumRequiredItems; i++)
                {
                    _requiredItems.Add(m_io.ReadU4le());
                }
            }
            private uint _playerRequired;
            private GtStr _unk1;
            private GtStr _command;
            private uint _numRequiredItems;
            private List<uint> _requiredItems;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public uint PlayerRequired { get { return _playerRequired; } }
            public GtStr Unk1 { get { return _unk1; } }
            public GtStr Command { get { return _command; } }
            public uint NumRequiredItems { get { return _numRequiredItems; } }
            public List<uint> RequiredItems { get { return _requiredItems; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class SpiritStorageUnitExtra : KaitaiStruct
        {
            public static SpiritStorageUnitExtra FromFile(string fileName)
            {
                return new SpiritStorageUnitExtra(new KaitaiStream(fileName));
            }

            public SpiritStorageUnitExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _ghostJarCount = m_io.ReadU4le();
            }
            private uint _ghostJarCount;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public uint GhostJarCount { get { return _ghostJarCount; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class SpotlightExtra : KaitaiStruct
        {
            public static SpotlightExtra FromFile(string fileName)
            {
                return new SpotlightExtra(new KaitaiStream(fileName));
            }

            public SpotlightExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
            }
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class SteamEngineExtra : KaitaiStruct
        {
            public static SteamEngineExtra FromFile(string fileName)
            {
                return new SteamEngineExtra(new KaitaiStream(fileName));
            }

            public SteamEngineExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _temperature = m_io.ReadU4le();
            }
            private uint _temperature;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public uint Temperature { get { return _temperature; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class SteamOrganExtra : KaitaiStruct
        {
            public static SteamOrganExtra FromFile(string fileName)
            {
                return new SteamOrganExtra(new KaitaiStream(fileName));
            }

            public SteamOrganExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _instrumentType = m_io.ReadU1();
                _note = m_io.ReadU4le();
            }
            private byte _instrumentType;
            private uint _note;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public byte InstrumentType { get { return _instrumentType; } }
            public uint Note { get { return _note; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class StorageBoxXtremeExtra : KaitaiStruct
        {
            public static StorageBoxXtremeExtra FromFile(string fileName)
            {
                return new StorageBoxXtremeExtra(new KaitaiStream(fileName));
            }

            public StorageBoxXtremeExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _dataLen = m_io.ReadU2le();
                _items = new List<StorageItem>();
                for (var i = 0; i < DataLen / 13; i++)
                {
                    _items.Add(new StorageItem(m_io, this, m_root));
                }
            }
            public partial class StorageItem : KaitaiStruct
            {
                public static StorageItem FromFile(string fileName)
                {
                    return new StorageItem(new KaitaiStream(fileName));
                }

                public StorageItem(KaitaiStream p__io, GrowtopiaWorld.StorageBoxXtremeExtra p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
                {
                    m_parent = p__parent;
                    m_root = p__root;
                    _read();
                }
                private void _read()
                {
                    _pad1 = m_io.ReadBytes(3);
                    _itemId = m_io.ReadU4le();
                    _pad2 = m_io.ReadBytes(2);
                    _itemAmt = m_io.ReadU4le();
                }
                private byte[] _pad1;
                private uint _itemId;
                private byte[] _pad2;
                private uint _itemAmt;
                private GrowtopiaWorld m_root;
                private GrowtopiaWorld.StorageBoxXtremeExtra m_parent;
                public byte[] Pad1 { get { return _pad1; } }
                public uint ItemId { get { return _itemId; } }
                public byte[] Pad2 { get { return _pad2; } }
                public uint ItemAmt { get { return _itemAmt; } }
                public GrowtopiaWorld M_Root { get { return m_root; } }
                public GrowtopiaWorld.StorageBoxXtremeExtra M_Parent { get { return m_parent; } }
            }
            private ushort _dataLen;
            private List<StorageItem> _items;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public ushort DataLen { get { return _dataLen; } }
            public List<StorageItem> Items { get { return _items; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class StormyCloudExtra : KaitaiStruct
        {
            public static StormyCloudExtra FromFile(string fileName)
            {
                return new StormyCloudExtra(new KaitaiStream(fileName));
            }

            public StormyCloudExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _stingDuration = m_io.ReadU4le();
                _isSolid = m_io.ReadU4le();
                _nonSolidDuration = m_io.ReadU4le();
            }
            private uint _stingDuration;
            private uint _isSolid;
            private uint _nonSolidDuration;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public uint StingDuration { get { return _stingDuration; } }
            public uint IsSolid { get { return _isSolid; } }
            public uint NonSolidDuration { get { return _nonSolidDuration; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class TemporaryPlatformExtra : KaitaiStruct
        {
            public static TemporaryPlatformExtra FromFile(string fileName)
            {
                return new TemporaryPlatformExtra(new KaitaiStream(fileName));
            }

            public TemporaryPlatformExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _unk1 = m_io.ReadU4le();
            }
            private uint _unk1;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public uint Unk1 { get { return _unk1; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class TesseractManipulatorExtra : KaitaiStruct
        {
            public static TesseractManipulatorExtra FromFile(string fileName)
            {
                return new TesseractManipulatorExtra(new KaitaiStream(fileName));
            }

            public TesseractManipulatorExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _gemsLeft = m_io.ReadU4le();
                _nextUpdateMs = m_io.ReadU4le();
                _itemId = m_io.ReadU4le();
                _enabled = m_io.ReadU4le();
            }
            private uint _gemsLeft;
            private uint _nextUpdateMs;
            private uint _itemId;
            private uint _enabled;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public uint GemsLeft { get { return _gemsLeft; } }
            public uint NextUpdateMs { get { return _nextUpdateMs; } }
            public uint ItemId { get { return _itemId; } }
            public uint Enabled { get { return _enabled; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class TombRobberExtra : KaitaiStruct
        {
            public static TombRobberExtra FromFile(string fileName)
            {
                return new TombRobberExtra(new KaitaiStream(fileName));
            }

            public TombRobberExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
            }
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class TrainingPortExtra : KaitaiStruct
        {
            public static TrainingPortExtra FromFile(string fileName)
            {
                return new TrainingPortExtra(new KaitaiStream(fileName));
            }

            public TrainingPortExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _fishLb = m_io.ReadU4le();
                _status = m_io.ReadU2le();
                _itemId = m_io.ReadU4le();
                _totalExp = m_io.ReadU4le();
                _unk1 = m_io.ReadBytes(8);
                _fishLevel = m_io.ReadU4le();
                _unk2 = m_io.ReadU4le();
                _unk3 = m_io.ReadBytes(5);
            }
            private uint _fishLb;
            private ushort _status;
            private uint _itemId;
            private uint _totalExp;
            private byte[] _unk1;
            private uint _fishLevel;
            private uint _unk2;
            private byte[] _unk3;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public uint FishLb { get { return _fishLb; } }
            public ushort Status { get { return _status; } }
            public uint ItemId { get { return _itemId; } }
            public uint TotalExp { get { return _totalExp; } }
            public byte[] Unk1 { get { return _unk1; } }
            public uint FishLevel { get { return _fishLevel; } }
            public uint Unk2 { get { return _unk2; } }
            public byte[] Unk3 { get { return _unk3; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class UnknownExtra : KaitaiStruct
        {
            public static UnknownExtra FromFile(string fileName)
            {
                return new UnknownExtra(new KaitaiStream(fileName));
            }

            public UnknownExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _thisIsJustToErrorOutKaitaiPls = m_io.ReadBytesFull();
            }
            private byte[] _thisIsJustToErrorOutKaitaiPls;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;

            /// <summary>
            /// This type is just to error out kaitai. So if you encounter any error, 
            /// please either give the world name or dump the world and submit it to me
            /// (81739844+badewen@users.noreply.github.com).  
            /// </summary>
            public byte[] ThisIsJustToErrorOutKaitaiPls { get { return _thisIsJustToErrorOutKaitaiPls; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class VendingMachineExtra : KaitaiStruct
        {
            public static VendingMachineExtra FromFile(string fileName)
            {
                return new VendingMachineExtra(new KaitaiStream(fileName));
            }

            public VendingMachineExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _itemId = m_io.ReadU4le();
                _price = m_io.ReadS4le();
            }
            private uint _itemId;
            private int _price;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public uint ItemId { get { return _itemId; } }
            public int Price { get { return _price; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class VipEntranceExtra : KaitaiStruct
        {
            public static VipEntranceExtra FromFile(string fileName)
            {
                return new VipEntranceExtra(new KaitaiStream(fileName));
            }

            public VipEntranceExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _unk1 = m_io.ReadU1();
                _ownerUserid = m_io.ReadU4le();
                _numAllowedUserids = m_io.ReadU4le();
                _allowedUserids = new List<uint>();
                for (var i = 0; i < NumAllowedUserids; i++)
                {
                    _allowedUserids.Add(m_io.ReadU4le());
                }
            }
            private byte _unk1;
            private uint _ownerUserid;
            private uint _numAllowedUserids;
            private List<uint> _allowedUserids;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public byte Unk1 { get { return _unk1; } }
            public uint OwnerUserid { get { return _ownerUserid; } }
            public uint NumAllowedUserids { get { return _numAllowedUserids; } }
            public List<uint> AllowedUserids { get { return _allowedUserids; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class WeatherMachine1Extra : KaitaiStruct
        {
            public static WeatherMachine1Extra FromFile(string fileName)
            {
                return new WeatherMachine1Extra(new KaitaiStream(fileName));
            }

            public WeatherMachine1Extra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _settings = m_io.ReadBytes(4);
            }
            private byte[] _settings;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public byte[] Settings { get { return _settings; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class WeatherMachine2Extra : KaitaiStruct
        {
            public static WeatherMachine2Extra FromFile(string fileName)
            {
                return new WeatherMachine2Extra(new KaitaiStream(fileName));
            }

            public WeatherMachine2Extra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _itemId = m_io.ReadU4le();
                _gravity = m_io.ReadU4le();
                _flag = m_io.ReadU1();
            }
            private uint _itemId;
            private uint _gravity;
            private byte _flag;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public uint ItemId { get { return _itemId; } }
            public uint Gravity { get { return _gravity; } }
            public byte Flag { get { return _flag; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        public partial class WorldObject : KaitaiStruct
        {
            public static WorldObject FromFile(string fileName)
            {
                return new WorldObject(new KaitaiStream(fileName));
            }

            public WorldObject(KaitaiStream p__io, GrowtopiaWorld p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _itemId = m_io.ReadU2le();
                _x = m_io.ReadF4le();
                _y = m_io.ReadF4le();
                _amount = m_io.ReadU1();
                _flag = m_io.ReadU1();
                _uid = m_io.ReadU4le();
            }
            private ushort _itemId;
            private float _x;
            private float _y;
            private byte _amount;
            private byte _flag;
            private uint _uid;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld m_parent;
            public ushort ItemId { get { return _itemId; } }
            public float X { get { return _x; } }
            public float Y { get { return _y; } }
            public byte Amount { get { return _amount; } }
            public byte Flag { get { return _flag; } }
            public uint Uid { get { return _uid; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld M_Parent { get { return m_parent; } }
        }
        public partial class WorldTile : KaitaiStruct
        {
            public static WorldTile FromFile(string fileName)
            {
                return new WorldTile(new KaitaiStream(fileName));
            }

            public WorldTile(KaitaiStream p__io, GrowtopiaWorld p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _fg = m_io.ReadU2le();
                _bg = m_io.ReadU2le();
                if ( ((Fg > 25000) || (Bg > 25000)) ) {
                    _invalidTileFgBgKaitaiCrasher = m_io.ReadBytesFull();
                }
                _parentBlockIndex = m_io.ReadU2le();
                _flag = m_io.ReadU2le();
                if ((Flag & 2) == 2) {
                    _parentLock = m_io.ReadU2le();
                }
                if ((Flag & 1) == 1) {
                    _extraDataType = m_io.ReadU1();
                }
                if ((Flag & 1) == 1) {
                    switch (ExtraDataType) {
                    case 1: {
                        _tileExtra = new DoorExtra(m_io, this, m_root);
                        break;
                    }
                    case 10: {
                        _tileExtra = new AchievementBlockExtra(m_io, this, m_root);
                        break;
                    }
                    case 11: {
                        _tileExtra = new HeartMonitorExtra(m_io, this, m_root);
                        break;
                    }
                    case 14: {
                        _tileExtra = new MannequinExtra(m_io, this, m_root);
                        break;
                    }
                    case 15: {
                        _tileExtra = new MagicEggExtra(m_io, this, m_root);
                        break;
                    }
                    case 16: {
                        _tileExtra = new GameGraveExtra(m_io, this, m_root);
                        break;
                    }
                    case 17: {
                        _tileExtra = new GameGeneratorExtra(m_io, this, m_root);
                        break;
                    }
                    case 18: {
                        _tileExtra = new XenoniteExtra(m_io, this, m_root);
                        break;
                    }
                    case 19: {
                        _tileExtra = new PhoneBoothExtra(m_io, this, m_root);
                        break;
                    }
                    case 2: {
                        _tileExtra = new SignExtra(m_io, this, m_root);
                        break;
                    }
                    case 20: {
                        _tileExtra = new CrystalExtra(m_io, this, m_root);
                        break;
                    }
                    case 21: {
                        _tileExtra = new CrimeInProgressExtra(m_io, this, m_root);
                        break;
                    }
                    case 22: {
                        _tileExtra = new SpotlightExtra(m_io, this, m_root);
                        break;
                    }
                    case 23: {
                        _tileExtra = new DisplayBlockExtra(m_io, this, m_root);
                        break;
                    }
                    case 24: {
                        _tileExtra = new VendingMachineExtra(m_io, this, m_root);
                        break;
                    }
                    case 25: {
                        _tileExtra = new FishTankPortExtra(m_io, this, m_root);
                        break;
                    }
                    case 26: {
                        _tileExtra = new SolarCollectorExtra(m_io, this, m_root);
                        break;
                    }
                    case 27: {
                        _tileExtra = new ForgeExtra(m_io, this, m_root);
                        break;
                    }
                    case 28: {
                        _tileExtra = new GivingTreeExtra(m_io, this, m_root);
                        break;
                    }
                    case 3: {
                        _tileExtra = new LockExtra(m_io, this, m_root);
                        break;
                    }
                    case 30: {
                        _tileExtra = new SteamOrganExtra(m_io, this, m_root);
                        break;
                    }
                    case 31: {
                        _tileExtra = new SilkWormExtra(m_io, this, m_root);
                        break;
                    }
                    case 32: {
                        _tileExtra = new SewingMachineExtra(m_io, this, m_root);
                        break;
                    }
                    case 33: {
                        _tileExtra = new CountryFlagExtra(m_io, this, m_root);
                        break;
                    }
                    case 34: {
                        _tileExtra = new LobsterTrapExtra(m_io, this, m_root);
                        break;
                    }
                    case 35: {
                        _tileExtra = new PaintingEaselExtra(m_io, this, m_root);
                        break;
                    }
                    case 36: {
                        _tileExtra = new PetBattleCageExtra(m_io, this, m_root);
                        break;
                    }
                    case 37: {
                        _tileExtra = new PetTrainerExtra(m_io, this, m_root);
                        break;
                    }
                    case 38: {
                        _tileExtra = new SteamEngineExtra(m_io, this, m_root);
                        break;
                    }
                    case 39: {
                        _tileExtra = new LockBotExtra(m_io, this, m_root);
                        break;
                    }
                    case 4: {
                        _tileExtra = new SeedExtra(m_io, this, m_root);
                        break;
                    }
                    case 40: {
                        _tileExtra = new WeatherMachine1Extra(m_io, this, m_root);
                        break;
                    }
                    case 41: {
                        _tileExtra = new SpiritStorageUnitExtra(m_io, this, m_root);
                        break;
                    }
                    case 42: {
                        _tileExtra = new DataBedrockExtra(m_io, this, m_root);
                        break;
                    }
                    case 43: {
                        _tileExtra = new ShelfExtra(m_io, this, m_root);
                        break;
                    }
                    case 44: {
                        _tileExtra = new VipEntranceExtra(m_io, this, m_root);
                        break;
                    }
                    case 45: {
                        _tileExtra = new ChallengeTimerExtra(m_io, this, m_root);
                        break;
                    }
                    case 47: {
                        _tileExtra = new FishWallMountExtra(m_io, this, m_root);
                        break;
                    }
                    case 48: {
                        _tileExtra = new PortraitExtra(m_io, this, m_root);
                        break;
                    }
                    case 49: {
                        _tileExtra = new WeatherMachine2Extra(m_io, this, m_root);
                        break;
                    }
                    case 50: {
                        _tileExtra = new FossilPrepStationExtra(m_io, this, m_root);
                        break;
                    }
                    case 51: {
                        _tileExtra = new DnaExtractorExtra(m_io, this, m_root);
                        break;
                    }
                    case 52: {
                        _tileExtra = new HowlerExtra(m_io, this, m_root);
                        break;
                    }
                    case 53: {
                        _tileExtra = new ChemsynthTankExtra(m_io, this, m_root);
                        break;
                    }
                    case 54: {
                        _tileExtra = new StorageBoxXtremeExtra(m_io, this, m_root);
                        break;
                    }
                    case 55: {
                        _tileExtra = new CookingOvenExtra(m_io, this, m_root);
                        break;
                    }
                    case 56: {
                        _tileExtra = new AudioRackExtra(m_io, this, m_root);
                        break;
                    }
                    case 57: {
                        _tileExtra = new GeigerChargerExtra(m_io, this, m_root);
                        break;
                    }
                    case 58: {
                        _tileExtra = new AdventureBeginsExtra(m_io, this, m_root);
                        break;
                    }
                    case 59: {
                        _tileExtra = new TombRobberExtra(m_io, this, m_root);
                        break;
                    }
                    case 60: {
                        _tileExtra = new BalloonOMaticExtra(m_io, this, m_root);
                        break;
                    }
                    case 61: {
                        _tileExtra = new TrainingPortExtra(m_io, this, m_root);
                        break;
                    }
                    case 62: {
                        _tileExtra = new ItemSuckerExtra(m_io, this, m_root);
                        break;
                    }
                    case 63: {
                        _tileExtra = new CybotExtra(m_io, this, m_root);
                        break;
                    }
                    case 65: {
                        _tileExtra = new GuildExtra(m_io, this, m_root);
                        break;
                    }
                    case 66: {
                        _tileExtra = new GrowscanExtra(m_io, this, m_root);
                        break;
                    }
                    case 67: {
                        _tileExtra = new ContainmentFieldPowerNodeExtra(m_io, this, m_root);
                        break;
                    }
                    case 68: {
                        _tileExtra = new SpiritBoardExtra(m_io, this, m_root);
                        break;
                    }
                    case 69: {
                        _tileExtra = new TesseractManipulatorExtra(m_io, this, m_root);
                        break;
                    }
                    case 72: {
                        _tileExtra = new StormyCloudExtra(m_io, this, m_root);
                        break;
                    }
                    case 73: {
                        _tileExtra = new TemporaryPlatformExtra(m_io, this, m_root);
                        break;
                    }
                    case 74: {
                        _tileExtra = new SafeVaultExtra(m_io, this, m_root);
                        break;
                    }
                    case 75: {
                        _tileExtra = new AngelicCountingCloudExtra(m_io, this, m_root);
                        break;
                    }
                    case 77: {
                        _tileExtra = new InfinityWeatherMachineExtra(m_io, this, m_root);
                        break;
                    }
                    case 79: {
                        _tileExtra = new PineappleGuzzlerExtra(m_io, this, m_root);
                        break;
                    }
                    case 8: {
                        _tileExtra = new DiceExtra(m_io, this, m_root);
                        break;
                    }
                    case 80: {
                        _tileExtra = new KrakensGalaticBlockExtra(m_io, this, m_root);
                        break;
                    }
                    case 81: {
                        _tileExtra = new FriendsEntranceExtra(m_io, this, m_root);
                        break;
                    }
                    case 9: {
                        _tileExtra = new ProviderExtra(m_io, this, m_root);
                        break;
                    }
                    default: {
                        _tileExtra = new UnknownExtra(m_io, this, m_root);
                        break;
                    }
                    }
                }
                if ( (( (((Flag & 1) == 1) && (ExtraDataType == 36)) ) || (Fg == 15546) || (Fg == 14666) || (Fg == 14962) || (Fg == 14662)) ) {
                    _cborData = new CborData(m_io, this, m_root);
                }
            }
            private ushort _fg;
            private ushort _bg;
            private byte[] _invalidTileFgBgKaitaiCrasher;
            private ushort _parentBlockIndex;
            private ushort _flag;
            private ushort? _parentLock;
            private byte? _extraDataType;
            private KaitaiStruct _tileExtra;
            private CborData _cborData;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld m_parent;
            public ushort Fg { get { return _fg; } }
            public ushort Bg { get { return _bg; } }

            /// <summary>
            /// This type is just to error out kaitai. If this is 
            /// encountered, then maybe there was a parsing error.
            /// Please report :)
            /// </summary>
            public byte[] InvalidTileFgBgKaitaiCrasher { get { return _invalidTileFgBgKaitaiCrasher; } }
            public ushort ParentBlockIndex { get { return _parentBlockIndex; } }
            public ushort Flag { get { return _flag; } }
            public ushort? ParentLock { get { return _parentLock; } }
            public byte? ExtraDataType { get { return _extraDataType; } }
            public KaitaiStruct TileExtra { get { return _tileExtra; } }
            public CborData CborData { get { return _cborData; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld M_Parent { get { return m_parent; } }
        }
        public partial class XenoniteExtra : KaitaiStruct
        {
            public static XenoniteExtra FromFile(string fileName)
            {
                return new XenoniteExtra(new KaitaiStream(fileName));
            }

            public XenoniteExtra(KaitaiStream p__io, GrowtopiaWorld.WorldTile p__parent = null, GrowtopiaWorld p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _unk1 = m_io.ReadBytes(5);
            }
            private byte[] _unk1;
            private GrowtopiaWorld m_root;
            private GrowtopiaWorld.WorldTile m_parent;
            public byte[] Unk1 { get { return _unk1; } }
            public GrowtopiaWorld M_Root { get { return m_root; } }
            public GrowtopiaWorld.WorldTile M_Parent { get { return m_parent; } }
        }
        private ushort _version;
        private uint _unk1;
        private GtStr _name;
        private uint _width;
        private uint _height;
        private uint _numTiles;
        private byte[] _unk2;
        private List<WorldTile> _tiles;
        private byte[] _unk3;
        private uint _numObjects;
        private uint _lastObjectUid;
        private List<WorldObject> _objects;
        private GrowtopiaWorld m_root;
        private KaitaiStruct m_parent;
        public ushort Version { get { return _version; } }
        public uint Unk1 { get { return _unk1; } }
        public GtStr Name { get { return _name; } }
        public uint Width { get { return _width; } }
        public uint Height { get { return _height; } }
        public uint NumTiles { get { return _numTiles; } }
        public byte[] Unk2 { get { return _unk2; } }
        public List<WorldTile> Tiles { get { return _tiles; } }
        public byte[] Unk3 { get { return _unk3; } }
        public uint NumObjects { get { return _numObjects; } }
        public uint LastObjectUid { get { return _lastObjectUid; } }
        public List<WorldObject> Objects { get { return _objects; } }
        public GrowtopiaWorld M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
