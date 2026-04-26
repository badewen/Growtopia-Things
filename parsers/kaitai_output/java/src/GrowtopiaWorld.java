// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;
import java.util.HashMap;
import java.util.List;
import java.nio.charset.StandardCharsets;

public class GrowtopiaWorld extends KaitaiStruct {
    public static GrowtopiaWorld fromFile(String fileName) throws IOException {
        return new GrowtopiaWorld(new ByteBufferKaitaiStream(fileName));
    }

    public GrowtopiaWorld(KaitaiStream _io) {
        this(_io, null, null);
    }

    public GrowtopiaWorld(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public GrowtopiaWorld(KaitaiStream _io, KaitaiStruct _parent, GrowtopiaWorld _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.version = this._io.readU2le();
        this.unk1 = this._io.readU4le();
        this.name = new GtStr(this._io, this, _root);
        this.width = this._io.readU4le();
        this.height = this._io.readU4le();
        this.numTiles = this._io.readU4le();
        this.unk2 = this._io.readBytes(5);
        this.tiles = new ArrayList<WorldTile>();
        for (int i = 0; i < numTiles(); i++) {
            this.tiles.add(new WorldTile(this._io, this, _root));
        }
        this.unk3 = this._io.readBytes(12);
        this.numObjects = this._io.readU4le();
        this.lastObjectUid = this._io.readU4le();
        this.objects = new ArrayList<WorldObject>();
        for (int i = 0; i < numObjects(); i++) {
            this.objects.add(new WorldObject(this._io, this, _root));
        }
    }

    public void _fetchInstances() {
        this.name._fetchInstances();
        for (int i = 0; i < this.tiles.size(); i++) {
            this.tiles.get(((Number) (i)).intValue())._fetchInstances();
        }
        for (int i = 0; i < this.objects.size(); i++) {
            this.objects.get(((Number) (i)).intValue())._fetchInstances();
        }
    }
    public static class ARGB extends KaitaiStruct {
        public static ARGB fromFile(String fileName) throws IOException {
            return new ARGB(new ByteBufferKaitaiStream(fileName));
        }

        public ARGB(KaitaiStream _io) {
            this(_io, null, null);
        }

        public ARGB(KaitaiStream _io, GrowtopiaWorld.SilkWormExtra _parent) {
            this(_io, _parent, null);
        }

        public ARGB(KaitaiStream _io, GrowtopiaWorld.SilkWormExtra _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.a = this._io.readU1();
            this.r = this._io.readU1();
            this.g = this._io.readU1();
            this.b = this._io.readU1();
        }

        public void _fetchInstances() {
        }
        private int a;
        private int r;
        private int g;
        private int b;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.SilkWormExtra _parent;
        public int a() { return a; }
        public int r() { return r; }
        public int g() { return g; }
        public int b() { return b; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.SilkWormExtra _parent() { return _parent; }
    }
    public static class AchievementBlockExtra extends KaitaiStruct {
        public static AchievementBlockExtra fromFile(String fileName) throws IOException {
            return new AchievementBlockExtra(new ByteBufferKaitaiStream(fileName));
        }

        public AchievementBlockExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public AchievementBlockExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public AchievementBlockExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.unk1 = this._io.readU4le();
            this.achievementId = this._io.readU1();
        }

        public void _fetchInstances() {
        }
        private long unk1;
        private int achievementId;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public long unk1() { return unk1; }
        public int achievementId() { return achievementId; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class AdventureBeginsExtra extends KaitaiStruct {
        public static AdventureBeginsExtra fromFile(String fileName) throws IOException {
            return new AdventureBeginsExtra(new ByteBufferKaitaiStream(fileName));
        }

        public AdventureBeginsExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public AdventureBeginsExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public AdventureBeginsExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
        }

        public void _fetchInstances() {
        }
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class AngelicCountingCloudExtra extends KaitaiStruct {
        public static AngelicCountingCloudExtra fromFile(String fileName) throws IOException {
            return new AngelicCountingCloudExtra(new ByteBufferKaitaiStream(fileName));
        }

        public enum States {
            RAFFLING(1),
            DONE_RAFFLING(2);

            private final long id;
            States(long id) { this.id = id; }
            public long id() { return id; }
            private static final Map<Long, States> byId = new HashMap<Long, States>(2);
            static {
                for (States e : States.values())
                    byId.put(e.id(), e);
            }
            public static States byId(long id) { return byId.get(id); }
        }

        public AngelicCountingCloudExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public AngelicCountingCloudExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public AngelicCountingCloudExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.state = States.byId(this._io.readU4le());
            this.unk1 = this._io.readU2le();
            if (state() == States.DONE_RAFFLING) {
                this.asciiCode = this._io.readU1();
            }
        }

        public void _fetchInstances() {
            if (state() == States.DONE_RAFFLING) {
            }
        }
        private States state;
        private int unk1;
        private Integer asciiCode;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public States state() { return state; }
        public int unk1() { return unk1; }
        public Integer asciiCode() { return asciiCode; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class AudioRackExtra extends KaitaiStruct {
        public static AudioRackExtra fromFile(String fileName) throws IOException {
            return new AudioRackExtra(new ByteBufferKaitaiStream(fileName));
        }

        public AudioRackExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public AudioRackExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public AudioRackExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.note = new GtStr(this._io, this, _root);
            this.volume = this._io.readU4le();
        }

        public void _fetchInstances() {
            this.note._fetchInstances();
        }
        private GtStr note;
        private long volume;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public GtStr note() { return note; }
        public long volume() { return volume; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class BalloonOMaticExtra extends KaitaiStruct {
        public static BalloonOMaticExtra fromFile(String fileName) throws IOException {
            return new BalloonOMaticExtra(new ByteBufferKaitaiStream(fileName));
        }

        public BalloonOMaticExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public BalloonOMaticExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public BalloonOMaticExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.totalRarity = this._io.readU4le();
            this.teamType = this._io.readU1();
        }

        public void _fetchInstances() {
        }
        private long totalRarity;
        private int teamType;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public long totalRarity() { return totalRarity; }
        public int teamType() { return teamType; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class CborData extends KaitaiStruct {
        public static CborData fromFile(String fileName) throws IOException {
            return new CborData(new ByteBufferKaitaiStream(fileName));
        }

        public CborData(KaitaiStream _io) {
            this(_io, null, null);
        }

        public CborData(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public CborData(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.lenData = this._io.readU4le();
            this.data = this._io.readBytes(lenData());
        }

        public void _fetchInstances() {
        }
        private long lenData;
        private byte[] data;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public long lenData() { return lenData; }
        public byte[] data() { return data; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class ChallengeTimerExtra extends KaitaiStruct {
        public static ChallengeTimerExtra fromFile(String fileName) throws IOException {
            return new ChallengeTimerExtra(new ByteBufferKaitaiStream(fileName));
        }

        public ChallengeTimerExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public ChallengeTimerExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public ChallengeTimerExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
        }

        public void _fetchInstances() {
        }
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class ChemsynthTankExtra extends KaitaiStruct {
        public static ChemsynthTankExtra fromFile(String fileName) throws IOException {
            return new ChemsynthTankExtra(new ByteBufferKaitaiStream(fileName));
        }

        public ChemsynthTankExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public ChemsynthTankExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public ChemsynthTankExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.currentChemId = this._io.readU4le();
            this.supposedChemId = this._io.readU4le();
        }

        public void _fetchInstances() {
        }
        private long currentChemId;
        private long supposedChemId;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public long currentChemId() { return currentChemId; }
        public long supposedChemId() { return supposedChemId; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class ContainmentFieldPowerNodeExtra extends KaitaiStruct {
        public static ContainmentFieldPowerNodeExtra fromFile(String fileName) throws IOException {
            return new ContainmentFieldPowerNodeExtra(new ByteBufferKaitaiStream(fileName));
        }

        public ContainmentFieldPowerNodeExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public ContainmentFieldPowerNodeExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public ContainmentFieldPowerNodeExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.timeMs = this._io.readU4le();
            this.numLinkedNodes = this._io.readU4le();
            this.linkedNodes = new ArrayList<Long>();
            for (int i = 0; i < numLinkedNodes(); i++) {
                this.linkedNodes.add(this._io.readU4le());
            }
        }

        public void _fetchInstances() {
            for (int i = 0; i < this.linkedNodes.size(); i++) {
            }
        }
        private long timeMs;
        private long numLinkedNodes;
        private List<Long> linkedNodes;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public long timeMs() { return timeMs; }
        public long numLinkedNodes() { return numLinkedNodes; }
        public List<Long> linkedNodes() { return linkedNodes; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class CookingOvenExtra extends KaitaiStruct {
        public static CookingOvenExtra fromFile(String fileName) throws IOException {
            return new CookingOvenExtra(new ByteBufferKaitaiStream(fileName));
        }

        public CookingOvenExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public CookingOvenExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public CookingOvenExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.tempLevel = this._io.readU4le();
            this.ingredientListSize = this._io.readU4le();
            this.ingredients = new ArrayList<Ingredient>();
            for (int i = 0; i < ingredientListSize() / 2; i++) {
                this.ingredients.add(new Ingredient(this._io, this, _root));
            }
            this.unk1 = this._io.readU4le();
            this.unk2 = this._io.readU4le();
            this.unk3 = this._io.readU4le();
        }

        public void _fetchInstances() {
            for (int i = 0; i < this.ingredients.size(); i++) {
                this.ingredients.get(((Number) (i)).intValue())._fetchInstances();
            }
        }
        public static class Ingredient extends KaitaiStruct {
            public static Ingredient fromFile(String fileName) throws IOException {
                return new Ingredient(new ByteBufferKaitaiStream(fileName));
            }

            public Ingredient(KaitaiStream _io) {
                this(_io, null, null);
            }

            public Ingredient(KaitaiStream _io, GrowtopiaWorld.CookingOvenExtra _parent) {
                this(_io, _parent, null);
            }

            public Ingredient(KaitaiStream _io, GrowtopiaWorld.CookingOvenExtra _parent, GrowtopiaWorld _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                _read();
            }
            private void _read() {
                this.itemId = this._io.readU4le();
                this.timeAdded = this._io.readU4le();
            }

            public void _fetchInstances() {
            }
            private long itemId;
            private long timeAdded;
            private GrowtopiaWorld _root;
            private GrowtopiaWorld.CookingOvenExtra _parent;
            public long itemId() { return itemId; }
            public long timeAdded() { return timeAdded; }
            public GrowtopiaWorld _root() { return _root; }
            public GrowtopiaWorld.CookingOvenExtra _parent() { return _parent; }
        }
        private long tempLevel;
        private long ingredientListSize;
        private List<Ingredient> ingredients;
        private long unk1;
        private long unk2;
        private long unk3;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public long tempLevel() { return tempLevel; }
        public long ingredientListSize() { return ingredientListSize; }
        public List<Ingredient> ingredients() { return ingredients; }
        public long unk1() { return unk1; }
        public long unk2() { return unk2; }
        public long unk3() { return unk3; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class CountryFlagExtra extends KaitaiStruct {
        public static CountryFlagExtra fromFile(String fileName) throws IOException {
            return new CountryFlagExtra(new ByteBufferKaitaiStream(fileName));
        }

        public CountryFlagExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public CountryFlagExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public CountryFlagExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            if (_parent().fg() == 3394) {
                this.country = new GtStr(this._io, this, _root);
            }
        }

        public void _fetchInstances() {
            if (_parent().fg() == 3394) {
                this.country._fetchInstances();
            }
        }
        private GtStr country;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public GtStr country() { return country; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class CrimeInProgressExtra extends KaitaiStruct {
        public static CrimeInProgressExtra fromFile(String fileName) throws IOException {
            return new CrimeInProgressExtra(new ByteBufferKaitaiStream(fileName));
        }

        public CrimeInProgressExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public CrimeInProgressExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public CrimeInProgressExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.crimeName = new GtStr(this._io, this, _root);
            this.crimeIndex = this._io.readU4le();
            this.unk1 = this._io.readU1();
        }

        public void _fetchInstances() {
            this.crimeName._fetchInstances();
        }
        private GtStr crimeName;
        private long crimeIndex;
        private int unk1;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public GtStr crimeName() { return crimeName; }
        public long crimeIndex() { return crimeIndex; }
        public int unk1() { return unk1; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class CrystalExtra extends KaitaiStruct {
        public static CrystalExtra fromFile(String fileName) throws IOException {
            return new CrystalExtra(new ByteBufferKaitaiStream(fileName));
        }

        public CrystalExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public CrystalExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public CrystalExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.numCrystals = this._io.readU2le();
            this.crystals = new ArrayList<Integer>();
            for (int i = 0; i < numCrystals(); i++) {
                this.crystals.add(this._io.readU1());
            }
        }

        public void _fetchInstances() {
            for (int i = 0; i < this.crystals.size(); i++) {
            }
        }
        private int numCrystals;
        private List<Integer> crystals;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public int numCrystals() { return numCrystals; }
        public List<Integer> crystals() { return crystals; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class CybotExtra extends KaitaiStruct {
        public static CybotExtra fromFile(String fileName) throws IOException {
            return new CybotExtra(new ByteBufferKaitaiStream(fileName));
        }

        public CybotExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public CybotExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public CybotExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.numCommands = this._io.readU4le();
            this.commands = new ArrayList<Command>();
            for (int i = 0; i < numCommands(); i++) {
                this.commands.add(new Command(this._io, this, _root));
            }
            this.timer = this._io.readU4le();
            this.isActivated = this._io.readU4le();
        }

        public void _fetchInstances() {
            for (int i = 0; i < this.commands.size(); i++) {
                this.commands.get(((Number) (i)).intValue())._fetchInstances();
            }
        }
        public static class Command extends KaitaiStruct {
            public static Command fromFile(String fileName) throws IOException {
                return new Command(new ByteBufferKaitaiStream(fileName));
            }

            public Command(KaitaiStream _io) {
                this(_io, null, null);
            }

            public Command(KaitaiStream _io, GrowtopiaWorld.CybotExtra _parent) {
                this(_io, _parent, null);
            }

            public Command(KaitaiStream _io, GrowtopiaWorld.CybotExtra _parent, GrowtopiaWorld _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                _read();
            }
            private void _read() {
                this.commandId = this._io.readU4le();
                this.isCommandUsed = this._io.readU4le();
                this.unk1 = this._io.readBytes(7);
            }

            public void _fetchInstances() {
            }
            private long commandId;
            private long isCommandUsed;
            private byte[] unk1;
            private GrowtopiaWorld _root;
            private GrowtopiaWorld.CybotExtra _parent;
            public long commandId() { return commandId; }
            public long isCommandUsed() { return isCommandUsed; }
            public byte[] unk1() { return unk1; }
            public GrowtopiaWorld _root() { return _root; }
            public GrowtopiaWorld.CybotExtra _parent() { return _parent; }
        }
        private long numCommands;
        private List<Command> commands;
        private long timer;
        private long isActivated;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public long numCommands() { return numCommands; }
        public List<Command> commands() { return commands; }
        public long timer() { return timer; }
        public long isActivated() { return isActivated; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class DataBedrockExtra extends KaitaiStruct {
        public static DataBedrockExtra fromFile(String fileName) throws IOException {
            return new DataBedrockExtra(new ByteBufferKaitaiStream(fileName));
        }

        public DataBedrockExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public DataBedrockExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public DataBedrockExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.unk1 = this._io.readBytes(17);
            this.pad1 = this._io.readBytes(4);
        }

        public void _fetchInstances() {
        }
        private byte[] unk1;
        private byte[] pad1;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public byte[] unk1() { return unk1; }
        public byte[] pad1() { return pad1; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class DiceExtra extends KaitaiStruct {
        public static DiceExtra fromFile(String fileName) throws IOException {
            return new DiceExtra(new ByteBufferKaitaiStream(fileName));
        }

        public DiceExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public DiceExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public DiceExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.symbol = this._io.readU1();
        }

        public void _fetchInstances() {
        }
        private int symbol;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public int symbol() { return symbol; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class DisplayBlockExtra extends KaitaiStruct {
        public static DisplayBlockExtra fromFile(String fileName) throws IOException {
            return new DisplayBlockExtra(new ByteBufferKaitaiStream(fileName));
        }

        public DisplayBlockExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public DisplayBlockExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public DisplayBlockExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.itemId = this._io.readU4le();
        }

        public void _fetchInstances() {
        }
        private long itemId;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public long itemId() { return itemId; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class DnaExtractorExtra extends KaitaiStruct {
        public static DnaExtractorExtra fromFile(String fileName) throws IOException {
            return new DnaExtractorExtra(new ByteBufferKaitaiStream(fileName));
        }

        public DnaExtractorExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public DnaExtractorExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public DnaExtractorExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
        }

        public void _fetchInstances() {
        }
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class DoorExtra extends KaitaiStruct {
        public static DoorExtra fromFile(String fileName) throws IOException {
            return new DoorExtra(new ByteBufferKaitaiStream(fileName));
        }

        public DoorExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public DoorExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public DoorExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.label = new GtStr(this._io, this, _root);
            this.flags = this._io.readU1();
        }

        public void _fetchInstances() {
            this.label._fetchInstances();
        }
        private GtStr label;
        private int flags;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public GtStr label() { return label; }
        public int flags() { return flags; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class FishTankPortExtra extends KaitaiStruct {
        public static FishTankPortExtra fromFile(String fileName) throws IOException {
            return new FishTankPortExtra(new ByteBufferKaitaiStream(fileName));
        }

        public FishTankPortExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public FishTankPortExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public FishTankPortExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.flags = this._io.readU1();
            this.fishDataLength = this._io.readU4le();
            this.fishes = new ArrayList<FishInfo>();
            for (int i = 0; i < fishDataLength() / 2; i++) {
                this.fishes.add(new FishInfo(this._io, this, _root));
            }
        }

        public void _fetchInstances() {
            for (int i = 0; i < this.fishes.size(); i++) {
                this.fishes.get(((Number) (i)).intValue())._fetchInstances();
            }
        }
        public static class FishInfo extends KaitaiStruct {
            public static FishInfo fromFile(String fileName) throws IOException {
                return new FishInfo(new ByteBufferKaitaiStream(fileName));
            }

            public FishInfo(KaitaiStream _io) {
                this(_io, null, null);
            }

            public FishInfo(KaitaiStream _io, GrowtopiaWorld.FishTankPortExtra _parent) {
                this(_io, _parent, null);
            }

            public FishInfo(KaitaiStream _io, GrowtopiaWorld.FishTankPortExtra _parent, GrowtopiaWorld _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                _read();
            }
            private void _read() {
                this.itemId = this._io.readU4le();
                this.lbs = this._io.readU4le();
            }

            public void _fetchInstances() {
            }
            private long itemId;
            private long lbs;
            private GrowtopiaWorld _root;
            private GrowtopiaWorld.FishTankPortExtra _parent;
            public long itemId() { return itemId; }
            public long lbs() { return lbs; }
            public GrowtopiaWorld _root() { return _root; }
            public GrowtopiaWorld.FishTankPortExtra _parent() { return _parent; }
        }
        private int flags;
        private long fishDataLength;
        private List<FishInfo> fishes;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public int flags() { return flags; }
        public long fishDataLength() { return fishDataLength; }
        public List<FishInfo> fishes() { return fishes; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class FishWallMountExtra extends KaitaiStruct {
        public static FishWallMountExtra fromFile(String fileName) throws IOException {
            return new FishWallMountExtra(new ByteBufferKaitaiStream(fileName));
        }

        public FishWallMountExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public FishWallMountExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public FishWallMountExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.label = new GtStr(this._io, this, _root);
            this.itemId = this._io.readU4le();
            this.lbs = this._io.readU1();
        }

        public void _fetchInstances() {
            this.label._fetchInstances();
        }
        private GtStr label;
        private long itemId;
        private int lbs;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public GtStr label() { return label; }
        public long itemId() { return itemId; }
        public int lbs() { return lbs; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class ForgeExtra extends KaitaiStruct {
        public static ForgeExtra fromFile(String fileName) throws IOException {
            return new ForgeExtra(new ByteBufferKaitaiStream(fileName));
        }

        public ForgeExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public ForgeExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public ForgeExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.temperature = this._io.readU4le();
        }

        public void _fetchInstances() {
        }
        private long temperature;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public long temperature() { return temperature; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class FossilPrepStationExtra extends KaitaiStruct {
        public static FossilPrepStationExtra fromFile(String fileName) throws IOException {
            return new FossilPrepStationExtra(new ByteBufferKaitaiStream(fileName));
        }

        public FossilPrepStationExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public FossilPrepStationExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public FossilPrepStationExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.unk1 = this._io.readU4le();
        }

        public void _fetchInstances() {
        }
        private long unk1;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public long unk1() { return unk1; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class FriendsEntranceExtra extends KaitaiStruct {
        public static FriendsEntranceExtra fromFile(String fileName) throws IOException {
            return new FriendsEntranceExtra(new ByteBufferKaitaiStream(fileName));
        }

        public FriendsEntranceExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public FriendsEntranceExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public FriendsEntranceExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.ownerUserid = this._io.readU4le();
            this.unk1 = this._io.readBytes(2);
            this.numAllowedFriendsUserid = this._io.readU2le();
            this.allowedFriendsUserid = new ArrayList<Long>();
            for (int i = 0; i < numAllowedFriendsUserid(); i++) {
                this.allowedFriendsUserid.add(this._io.readU4le());
            }
        }

        public void _fetchInstances() {
            for (int i = 0; i < this.allowedFriendsUserid.size(); i++) {
            }
        }
        private long ownerUserid;
        private byte[] unk1;
        private int numAllowedFriendsUserid;
        private List<Long> allowedFriendsUserid;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public long ownerUserid() { return ownerUserid; }
        public byte[] unk1() { return unk1; }
        public int numAllowedFriendsUserid() { return numAllowedFriendsUserid; }
        public List<Long> allowedFriendsUserid() { return allowedFriendsUserid; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class GameGeneratorExtra extends KaitaiStruct {
        public static GameGeneratorExtra fromFile(String fileName) throws IOException {
            return new GameGeneratorExtra(new ByteBufferKaitaiStream(fileName));
        }

        public GameGeneratorExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public GameGeneratorExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public GameGeneratorExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
        }

        public void _fetchInstances() {
        }
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class GameGraveExtra extends KaitaiStruct {
        public static GameGraveExtra fromFile(String fileName) throws IOException {
            return new GameGraveExtra(new ByteBufferKaitaiStream(fileName));
        }

        public GameGraveExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public GameGraveExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public GameGraveExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.teamId = this._io.readU1();
        }

        public void _fetchInstances() {
        }
        private int teamId;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public int teamId() { return teamId; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class GeigerChargerExtra extends KaitaiStruct {
        public static GeigerChargerExtra fromFile(String fileName) throws IOException {
            return new GeigerChargerExtra(new ByteBufferKaitaiStream(fileName));
        }

        public GeigerChargerExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public GeigerChargerExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public GeigerChargerExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.unk1 = this._io.readBytes(4);
        }

        public void _fetchInstances() {
        }
        private byte[] unk1;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public byte[] unk1() { return unk1; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class GivingTreeExtra extends KaitaiStruct {
        public static GivingTreeExtra fromFile(String fileName) throws IOException {
            return new GivingTreeExtra(new ByteBufferKaitaiStream(fileName));
        }

        public GivingTreeExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public GivingTreeExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public GivingTreeExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.harvested = this._io.readU1();
            this.age = this._io.readU2le();
            this.unk1 = this._io.readU2le();
            this.decorationPercentage = this._io.readU1();
        }

        public void _fetchInstances() {
        }
        private int harvested;
        private int age;
        private int unk1;
        private int decorationPercentage;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public int harvested() { return harvested; }
        public int age() { return age; }
        public int unk1() { return unk1; }
        public int decorationPercentage() { return decorationPercentage; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class GrowscanExtra extends KaitaiStruct {
        public static GrowscanExtra fromFile(String fileName) throws IOException {
            return new GrowscanExtra(new ByteBufferKaitaiStream(fileName));
        }

        public GrowscanExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public GrowscanExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public GrowscanExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.unk1 = this._io.readU1();
        }

        public void _fetchInstances() {
        }
        private int unk1;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public int unk1() { return unk1; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class GtStr extends KaitaiStruct {
        public static GtStr fromFile(String fileName) throws IOException {
            return new GtStr(new ByteBufferKaitaiStream(fileName));
        }

        public GtStr(KaitaiStream _io) {
            this(_io, null, null);
        }

        public GtStr(KaitaiStream _io, KaitaiStruct _parent) {
            this(_io, _parent, null);
        }

        public GtStr(KaitaiStream _io, KaitaiStruct _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.lenData = this._io.readU2le();
            this.str = new String(this._io.readBytes(lenData()), StandardCharsets.US_ASCII);
        }

        public void _fetchInstances() {
        }
        private int lenData;
        private String str;
        private GrowtopiaWorld _root;
        private KaitaiStruct _parent;
        public int lenData() { return lenData; }
        public String str() { return str; }
        public GrowtopiaWorld _root() { return _root; }
        public KaitaiStruct _parent() { return _parent; }
    }
    public static class GuildExtra extends KaitaiStruct {
        public static GuildExtra fromFile(String fileName) throws IOException {
            return new GuildExtra(new ByteBufferKaitaiStream(fileName));
        }

        public GuildExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public GuildExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public GuildExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.unk1 = this._io.readU1();
            this.guildId = this._io.readU4le();
            this.guildMascotFg = this._io.readU2le();
            this.guildMascotBg = this._io.readU2le();
            this.guildLevel = this._io.readU4le();
            this.guildFlags = this._io.readU4le();
        }

        public void _fetchInstances() {
        }
        private int unk1;
        private long guildId;
        private int guildMascotFg;
        private int guildMascotBg;
        private long guildLevel;
        private long guildFlags;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public int unk1() { return unk1; }
        public long guildId() { return guildId; }
        public int guildMascotFg() { return guildMascotFg; }
        public int guildMascotBg() { return guildMascotBg; }
        public long guildLevel() { return guildLevel; }
        public long guildFlags() { return guildFlags; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class HeartMonitorExtra extends KaitaiStruct {
        public static HeartMonitorExtra fromFile(String fileName) throws IOException {
            return new HeartMonitorExtra(new ByteBufferKaitaiStream(fileName));
        }

        public HeartMonitorExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public HeartMonitorExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public HeartMonitorExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.userId = this._io.readU4le();
            this.growId = new GtStr(this._io, this, _root);
        }

        public void _fetchInstances() {
            this.growId._fetchInstances();
        }
        private long userId;
        private GtStr growId;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public long userId() { return userId; }
        public GtStr growId() { return growId; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class HowlerExtra extends KaitaiStruct {
        public static HowlerExtra fromFile(String fileName) throws IOException {
            return new HowlerExtra(new ByteBufferKaitaiStream(fileName));
        }

        public HowlerExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public HowlerExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public HowlerExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
        }

        public void _fetchInstances() {
        }
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class InfinityWeatherMachineExtra extends KaitaiStruct {
        public static InfinityWeatherMachineExtra fromFile(String fileName) throws IOException {
            return new InfinityWeatherMachineExtra(new ByteBufferKaitaiStream(fileName));
        }

        public InfinityWeatherMachineExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public InfinityWeatherMachineExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public InfinityWeatherMachineExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.intervalMins = this._io.readU4le();
            this.numWeatherMachines = this._io.readU4le();
            this.weatherMachines = new ArrayList<Long>();
            for (int i = 0; i < numWeatherMachines(); i++) {
                this.weatherMachines.add(this._io.readU4le());
            }
        }

        public void _fetchInstances() {
            for (int i = 0; i < this.weatherMachines.size(); i++) {
            }
        }
        private long intervalMins;
        private long numWeatherMachines;
        private List<Long> weatherMachines;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public long intervalMins() { return intervalMins; }
        public long numWeatherMachines() { return numWeatherMachines; }
        public List<Long> weatherMachines() { return weatherMachines; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class ItemSuckerExtra extends KaitaiStruct {
        public static ItemSuckerExtra fromFile(String fileName) throws IOException {
            return new ItemSuckerExtra(new ByteBufferKaitaiStream(fileName));
        }

        public ItemSuckerExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public ItemSuckerExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public ItemSuckerExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.itemId = this._io.readU4le();
            this.itemAmount = this._io.readU4le();
            this.flags = this._io.readU2le();
            this.itemLimit = this._io.readU4le();
        }

        public void _fetchInstances() {
        }
        private long itemId;
        private long itemAmount;
        private int flags;
        private long itemLimit;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public long itemId() { return itemId; }
        public long itemAmount() { return itemAmount; }
        public int flags() { return flags; }
        public long itemLimit() { return itemLimit; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class KrakensGalaticBlockExtra extends KaitaiStruct {
        public static KrakensGalaticBlockExtra fromFile(String fileName) throws IOException {
            return new KrakensGalaticBlockExtra(new ByteBufferKaitaiStream(fileName));
        }

        public KrakensGalaticBlockExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public KrakensGalaticBlockExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public KrakensGalaticBlockExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.patternNumber = this._io.readU1();
            this.unk1 = this._io.readBytes(4);
            this.colorRgb = this._io.readBytes(3);
        }

        public void _fetchInstances() {
        }
        private int patternNumber;
        private byte[] unk1;
        private byte[] colorRgb;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public int patternNumber() { return patternNumber; }
        public byte[] unk1() { return unk1; }
        public byte[] colorRgb() { return colorRgb; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class LobsterTrapExtra extends KaitaiStruct {
        public static LobsterTrapExtra fromFile(String fileName) throws IOException {
            return new LobsterTrapExtra(new ByteBufferKaitaiStream(fileName));
        }

        public LobsterTrapExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public LobsterTrapExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public LobsterTrapExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
        }

        public void _fetchInstances() {
        }
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class LockBotExtra extends KaitaiStruct {
        public static LockBotExtra fromFile(String fileName) throws IOException {
            return new LockBotExtra(new ByteBufferKaitaiStream(fileName));
        }

        public LockBotExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public LockBotExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public LockBotExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.age = this._io.readU4le();
        }

        public void _fetchInstances() {
        }
        private long age;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public long age() { return age; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class LockExtra extends KaitaiStruct {
        public static LockExtra fromFile(String fileName) throws IOException {
            return new LockExtra(new ByteBufferKaitaiStream(fileName));
        }

        public LockExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public LockExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public LockExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.flag = this._io.readU1();
            this.ownerUserId = this._io.readU4le();
            this.numAuthorizedUserids = this._io.readU4le();
            this.authorizedUserids = new ArrayList<Integer>();
            for (int i = 0; i < numAuthorizedUserids(); i++) {
                this.authorizedUserids.add(this._io.readS4le());
            }
            this.minimumLevel = this._io.readU4le();
            this.worldTimer = this._io.readU4le();
            if (_parent().fg() == 5814) {
                this.guildId = this._io.readU4le();
            }
            if (_parent().fg() == 5814) {
                this.guildMascotFg = this._io.readU2le();
            }
            if (_parent().fg() == 5814) {
                this.guildMascotBg = this._io.readU2le();
            }
            if (_parent().fg() == 5814) {
                this.guildLevel = this._io.readU4le();
            }
            if (_parent().fg() == 5814) {
                this.guildFlags = this._io.readU4le();
            }
        }

        public void _fetchInstances() {
            for (int i = 0; i < this.authorizedUserids.size(); i++) {
            }
            if (_parent().fg() == 5814) {
            }
            if (_parent().fg() == 5814) {
            }
            if (_parent().fg() == 5814) {
            }
            if (_parent().fg() == 5814) {
            }
            if (_parent().fg() == 5814) {
            }
        }
        private int flag;
        private long ownerUserId;
        private long numAuthorizedUserids;
        private List<Integer> authorizedUserids;
        private long minimumLevel;
        private long worldTimer;
        private Long guildId;
        private Integer guildMascotFg;
        private Integer guildMascotBg;
        private Long guildLevel;
        private Long guildFlags;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public int flag() { return flag; }
        public long ownerUserId() { return ownerUserId; }
        public long numAuthorizedUserids() { return numAuthorizedUserids; }

        /**
         * if you encounter negative user id, it is a world BPM. Kaitai doesnt support
         * complex logic yet. 
         */
        public List<Integer> authorizedUserids() { return authorizedUserids; }
        public long minimumLevel() { return minimumLevel; }
        public long worldTimer() { return worldTimer; }
        public Long guildId() { return guildId; }
        public Integer guildMascotFg() { return guildMascotFg; }
        public Integer guildMascotBg() { return guildMascotBg; }
        public Long guildLevel() { return guildLevel; }
        public Long guildFlags() { return guildFlags; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class MagicEggExtra extends KaitaiStruct {
        public static MagicEggExtra fromFile(String fileName) throws IOException {
            return new MagicEggExtra(new ByteBufferKaitaiStream(fileName));
        }

        public MagicEggExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public MagicEggExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public MagicEggExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.eggAmount = this._io.readU4le();
        }

        public void _fetchInstances() {
        }
        private long eggAmount;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public long eggAmount() { return eggAmount; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class MannequinExtra extends KaitaiStruct {
        public static MannequinExtra fromFile(String fileName) throws IOException {
            return new MannequinExtra(new ByteBufferKaitaiStream(fileName));
        }

        public MannequinExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public MannequinExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public MannequinExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.label = new GtStr(this._io, this, _root);
            this.unk1 = this._io.readU1();
            this.unk2 = this._io.readU2le();
            this.unk3 = this._io.readU2le();
            this.hat = this._io.readU2le();
            this.shirt = this._io.readU2le();
            this.pants = this._io.readU2le();
            this.boots = this._io.readU2le();
            this.face = this._io.readU2le();
            this.hand = this._io.readU2le();
            this.back = this._io.readU2le();
            this.hair = this._io.readU2le();
            this.neck = this._io.readU2le();
        }

        public void _fetchInstances() {
            this.label._fetchInstances();
        }
        private GtStr label;
        private int unk1;
        private int unk2;
        private int unk3;
        private int hat;
        private int shirt;
        private int pants;
        private int boots;
        private int face;
        private int hand;
        private int back;
        private int hair;
        private int neck;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public GtStr label() { return label; }
        public int unk1() { return unk1; }
        public int unk2() { return unk2; }
        public int unk3() { return unk3; }
        public int hat() { return hat; }
        public int shirt() { return shirt; }
        public int pants() { return pants; }
        public int boots() { return boots; }
        public int face() { return face; }
        public int hand() { return hand; }
        public int back() { return back; }
        public int hair() { return hair; }
        public int neck() { return neck; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class PaintingEaselExtra extends KaitaiStruct {
        public static PaintingEaselExtra fromFile(String fileName) throws IOException {
            return new PaintingEaselExtra(new ByteBufferKaitaiStream(fileName));
        }

        public PaintingEaselExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public PaintingEaselExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public PaintingEaselExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.itemId = this._io.readU4le();
            this.label = new GtStr(this._io, this, _root);
        }

        public void _fetchInstances() {
            this.label._fetchInstances();
        }
        private long itemId;
        private GtStr label;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public long itemId() { return itemId; }
        public GtStr label() { return label; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class PetBattleCageExtra extends KaitaiStruct {
        public static PetBattleCageExtra fromFile(String fileName) throws IOException {
            return new PetBattleCageExtra(new ByteBufferKaitaiStream(fileName));
        }

        public PetBattleCageExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public PetBattleCageExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public PetBattleCageExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.label = new GtStr(this._io, this, _root);
            this.basePet = this._io.readU4le();
            this.combinedPet1 = this._io.readU4le();
            this.combinedPet2 = this._io.readU4le();
        }

        public void _fetchInstances() {
            this.label._fetchInstances();
        }
        private GtStr label;
        private long basePet;
        private long combinedPet1;
        private long combinedPet2;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public GtStr label() { return label; }
        public long basePet() { return basePet; }
        public long combinedPet1() { return combinedPet1; }
        public long combinedPet2() { return combinedPet2; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class PetTrainerExtra extends KaitaiStruct {
        public static PetTrainerExtra fromFile(String fileName) throws IOException {
            return new PetTrainerExtra(new ByteBufferKaitaiStream(fileName));
        }

        public PetTrainerExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public PetTrainerExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public PetTrainerExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.name = new GtStr(this._io, this, _root);
            this.numPets = this._io.readU4le();
            this.unk1 = this._io.readU4le();
            this.pets = new ArrayList<Long>();
            for (int i = 0; i < numPets(); i++) {
                this.pets.add(this._io.readU4le());
            }
        }

        public void _fetchInstances() {
            this.name._fetchInstances();
            for (int i = 0; i < this.pets.size(); i++) {
            }
        }
        private GtStr name;
        private long numPets;
        private long unk1;
        private List<Long> pets;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public GtStr name() { return name; }
        public long numPets() { return numPets; }
        public long unk1() { return unk1; }
        public List<Long> pets() { return pets; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class PhoneBoothExtra extends KaitaiStruct {
        public static PhoneBoothExtra fromFile(String fileName) throws IOException {
            return new PhoneBoothExtra(new ByteBufferKaitaiStream(fileName));
        }

        public PhoneBoothExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public PhoneBoothExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public PhoneBoothExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.hat = this._io.readU2le();
            this.shirt = this._io.readU2le();
            this.pants = this._io.readU2le();
            this.shoes = this._io.readU2le();
            this.face = this._io.readU2le();
            this.hand = this._io.readU2le();
            this.back = this._io.readU2le();
            this.hair = this._io.readU2le();
            this.neck = this._io.readU2le();
        }

        public void _fetchInstances() {
        }
        private int hat;
        private int shirt;
        private int pants;
        private int shoes;
        private int face;
        private int hand;
        private int back;
        private int hair;
        private int neck;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public int hat() { return hat; }
        public int shirt() { return shirt; }
        public int pants() { return pants; }
        public int shoes() { return shoes; }
        public int face() { return face; }
        public int hand() { return hand; }
        public int back() { return back; }
        public int hair() { return hair; }
        public int neck() { return neck; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class PineappleGuzzlerExtra extends KaitaiStruct {
        public static PineappleGuzzlerExtra fromFile(String fileName) throws IOException {
            return new PineappleGuzzlerExtra(new ByteBufferKaitaiStream(fileName));
        }

        public PineappleGuzzlerExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public PineappleGuzzlerExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public PineappleGuzzlerExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.pineappleFed = this._io.readU4le();
        }

        public void _fetchInstances() {
        }
        private long pineappleFed;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public long pineappleFed() { return pineappleFed; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class PortraitExtra extends KaitaiStruct {
        public static PortraitExtra fromFile(String fileName) throws IOException {
            return new PortraitExtra(new ByteBufferKaitaiStream(fileName));
        }

        public PortraitExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public PortraitExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public PortraitExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.label = new GtStr(this._io, this, _root);
            this.unk1 = this._io.readU4le();
            this.unk2 = this._io.readU4le();
            this.unk3 = this._io.readBytes(5);
            this.unk4 = this._io.readU1();
            this.unk5 = this._io.readU2le();
            this.face = this._io.readU2le();
            this.hat = this._io.readU2le();
            this.hair = this._io.readU2le();
            this.unk6 = this._io.readU4le();
            if (hat() == 12958) {
                this.infinityCrownData = new GtStr(this._io, this, _root);
            }
        }

        public void _fetchInstances() {
            this.label._fetchInstances();
            if (hat() == 12958) {
                this.infinityCrownData._fetchInstances();
            }
        }
        private GtStr label;
        private long unk1;
        private long unk2;
        private byte[] unk3;
        private int unk4;
        private int unk5;
        private int face;
        private int hat;
        private int hair;
        private long unk6;
        private GtStr infinityCrownData;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public GtStr label() { return label; }
        public long unk1() { return unk1; }
        public long unk2() { return unk2; }
        public byte[] unk3() { return unk3; }
        public int unk4() { return unk4; }
        public int unk5() { return unk5; }
        public int face() { return face; }
        public int hat() { return hat; }
        public int hair() { return hair; }
        public long unk6() { return unk6; }
        public GtStr infinityCrownData() { return infinityCrownData; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class ProviderExtra extends KaitaiStruct {
        public static ProviderExtra fromFile(String fileName) throws IOException {
            return new ProviderExtra(new ByteBufferKaitaiStream(fileName));
        }

        public ProviderExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public ProviderExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public ProviderExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.age = this._io.readU4le();
            if (_parent().fg() == 10656) {
                this.pad1 = this._io.readBytes(4);
            }
        }

        public void _fetchInstances() {
            if (_parent().fg() == 10656) {
            }
        }
        private long age;
        private byte[] pad1;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public long age() { return age; }
        public byte[] pad1() { return pad1; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class SafeVaultExtra extends KaitaiStruct {
        public static SafeVaultExtra fromFile(String fileName) throws IOException {
            return new SafeVaultExtra(new ByteBufferKaitaiStream(fileName));
        }

        public SafeVaultExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public SafeVaultExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public SafeVaultExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
        }

        public void _fetchInstances() {
        }
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class SeedExtra extends KaitaiStruct {
        public static SeedExtra fromFile(String fileName) throws IOException {
            return new SeedExtra(new ByteBufferKaitaiStream(fileName));
        }

        public SeedExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public SeedExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public SeedExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.age = this._io.readU4le();
            this.fruitCount = this._io.readU1();
        }

        public void _fetchInstances() {
        }
        private long age;
        private int fruitCount;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public long age() { return age; }
        public int fruitCount() { return fruitCount; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class SewingMachineExtra extends KaitaiStruct {
        public static SewingMachineExtra fromFile(String fileName) throws IOException {
            return new SewingMachineExtra(new ByteBufferKaitaiStream(fileName));
        }

        public SewingMachineExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public SewingMachineExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public SewingMachineExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.numBoltIds = this._io.readU4le();
            this.boltIds = new ArrayList<Long>();
            for (int i = 0; i < numBoltIds(); i++) {
                this.boltIds.add(this._io.readU4le());
            }
        }

        public void _fetchInstances() {
            for (int i = 0; i < this.boltIds.size(); i++) {
            }
        }
        private long numBoltIds;
        private List<Long> boltIds;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public long numBoltIds() { return numBoltIds; }
        public List<Long> boltIds() { return boltIds; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class ShelfExtra extends KaitaiStruct {
        public static ShelfExtra fromFile(String fileName) throws IOException {
            return new ShelfExtra(new ByteBufferKaitaiStream(fileName));
        }

        public ShelfExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public ShelfExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public ShelfExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.topLeftItemId = this._io.readU4le();
            this.topRightItemId = this._io.readU4le();
            this.bottomLeftItemId = this._io.readU4le();
            this.bottomRightItemId = this._io.readU4le();
        }

        public void _fetchInstances() {
        }
        private long topLeftItemId;
        private long topRightItemId;
        private long bottomLeftItemId;
        private long bottomRightItemId;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public long topLeftItemId() { return topLeftItemId; }
        public long topRightItemId() { return topRightItemId; }
        public long bottomLeftItemId() { return bottomLeftItemId; }
        public long bottomRightItemId() { return bottomRightItemId; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class SignExtra extends KaitaiStruct {
        public static SignExtra fromFile(String fileName) throws IOException {
            return new SignExtra(new ByteBufferKaitaiStream(fileName));
        }

        public SignExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public SignExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public SignExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.label = new GtStr(this._io, this, _root);
            this.pad1 = this._io.readBytes(4);
        }

        public void _fetchInstances() {
            this.label._fetchInstances();
        }
        private GtStr label;
        private byte[] pad1;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public GtStr label() { return label; }
        public byte[] pad1() { return pad1; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class SilkWormExtra extends KaitaiStruct {
        public static SilkWormExtra fromFile(String fileName) throws IOException {
            return new SilkWormExtra(new ByteBufferKaitaiStream(fileName));
        }

        public SilkWormExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public SilkWormExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public SilkWormExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.flags = this._io.readU1();
            this.name = new GtStr(this._io, this, _root);
            this.ageSec = this._io.readU4le();
            this.unk1 = this._io.readU4le();
            this.unk2 = this._io.readU4le();
            this.canBeFed = this._io.readU1();
            this.foodSaturation = this._io.readU4le();
            this.waterSaturation = this._io.readU4le();
            this.colorArgb = new ARGB(this._io, this, _root);
            this.sickDuration = this._io.readU4le();
        }

        public void _fetchInstances() {
            this.name._fetchInstances();
            this.colorArgb._fetchInstances();
        }
        private int flags;
        private GtStr name;
        private long ageSec;
        private long unk1;
        private long unk2;
        private int canBeFed;
        private long foodSaturation;
        private long waterSaturation;
        private ARGB colorArgb;
        private long sickDuration;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public int flags() { return flags; }
        public GtStr name() { return name; }
        public long ageSec() { return ageSec; }
        public long unk1() { return unk1; }
        public long unk2() { return unk2; }
        public int canBeFed() { return canBeFed; }
        public long foodSaturation() { return foodSaturation; }
        public long waterSaturation() { return waterSaturation; }
        public ARGB colorArgb() { return colorArgb; }
        public long sickDuration() { return sickDuration; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class SolarCollectorExtra extends KaitaiStruct {
        public static SolarCollectorExtra fromFile(String fileName) throws IOException {
            return new SolarCollectorExtra(new ByteBufferKaitaiStream(fileName));
        }

        public SolarCollectorExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public SolarCollectorExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public SolarCollectorExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.unk1 = this._io.readBytes(5);
        }

        public void _fetchInstances() {
        }
        private byte[] unk1;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public byte[] unk1() { return unk1; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class SpiritBoardExtra extends KaitaiStruct {
        public static SpiritBoardExtra fromFile(String fileName) throws IOException {
            return new SpiritBoardExtra(new ByteBufferKaitaiStream(fileName));
        }

        public SpiritBoardExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public SpiritBoardExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public SpiritBoardExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.playerRequired = this._io.readU4le();
            this.unk1 = new GtStr(this._io, this, _root);
            this.command = new GtStr(this._io, this, _root);
            this.numRequiredItems = this._io.readU4le();
            this.requiredItems = new ArrayList<Long>();
            for (int i = 0; i < numRequiredItems(); i++) {
                this.requiredItems.add(this._io.readU4le());
            }
        }

        public void _fetchInstances() {
            this.unk1._fetchInstances();
            this.command._fetchInstances();
            for (int i = 0; i < this.requiredItems.size(); i++) {
            }
        }
        private long playerRequired;
        private GtStr unk1;
        private GtStr command;
        private long numRequiredItems;
        private List<Long> requiredItems;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public long playerRequired() { return playerRequired; }
        public GtStr unk1() { return unk1; }
        public GtStr command() { return command; }
        public long numRequiredItems() { return numRequiredItems; }
        public List<Long> requiredItems() { return requiredItems; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class SpiritStorageUnitExtra extends KaitaiStruct {
        public static SpiritStorageUnitExtra fromFile(String fileName) throws IOException {
            return new SpiritStorageUnitExtra(new ByteBufferKaitaiStream(fileName));
        }

        public SpiritStorageUnitExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public SpiritStorageUnitExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public SpiritStorageUnitExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.ghostJarCount = this._io.readU4le();
        }

        public void _fetchInstances() {
        }
        private long ghostJarCount;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public long ghostJarCount() { return ghostJarCount; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class SpotlightExtra extends KaitaiStruct {
        public static SpotlightExtra fromFile(String fileName) throws IOException {
            return new SpotlightExtra(new ByteBufferKaitaiStream(fileName));
        }

        public SpotlightExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public SpotlightExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public SpotlightExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
        }

        public void _fetchInstances() {
        }
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class SteamEngineExtra extends KaitaiStruct {
        public static SteamEngineExtra fromFile(String fileName) throws IOException {
            return new SteamEngineExtra(new ByteBufferKaitaiStream(fileName));
        }

        public SteamEngineExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public SteamEngineExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public SteamEngineExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.temperature = this._io.readU4le();
        }

        public void _fetchInstances() {
        }
        private long temperature;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public long temperature() { return temperature; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class SteamOrganExtra extends KaitaiStruct {
        public static SteamOrganExtra fromFile(String fileName) throws IOException {
            return new SteamOrganExtra(new ByteBufferKaitaiStream(fileName));
        }

        public SteamOrganExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public SteamOrganExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public SteamOrganExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.instrumentType = this._io.readU1();
            this.note = this._io.readU4le();
        }

        public void _fetchInstances() {
        }
        private int instrumentType;
        private long note;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public int instrumentType() { return instrumentType; }
        public long note() { return note; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class StorageBoxXtremeExtra extends KaitaiStruct {
        public static StorageBoxXtremeExtra fromFile(String fileName) throws IOException {
            return new StorageBoxXtremeExtra(new ByteBufferKaitaiStream(fileName));
        }

        public StorageBoxXtremeExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public StorageBoxXtremeExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public StorageBoxXtremeExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.dataLen = this._io.readU2le();
            this.items = new ArrayList<StorageItem>();
            for (int i = 0; i < dataLen() / 13; i++) {
                this.items.add(new StorageItem(this._io, this, _root));
            }
        }

        public void _fetchInstances() {
            for (int i = 0; i < this.items.size(); i++) {
                this.items.get(((Number) (i)).intValue())._fetchInstances();
            }
        }
        public static class StorageItem extends KaitaiStruct {
            public static StorageItem fromFile(String fileName) throws IOException {
                return new StorageItem(new ByteBufferKaitaiStream(fileName));
            }

            public StorageItem(KaitaiStream _io) {
                this(_io, null, null);
            }

            public StorageItem(KaitaiStream _io, GrowtopiaWorld.StorageBoxXtremeExtra _parent) {
                this(_io, _parent, null);
            }

            public StorageItem(KaitaiStream _io, GrowtopiaWorld.StorageBoxXtremeExtra _parent, GrowtopiaWorld _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                _read();
            }
            private void _read() {
                this.pad1 = this._io.readBytes(3);
                this.itemId = this._io.readU4le();
                this.pad2 = this._io.readBytes(2);
                this.itemAmt = this._io.readU4le();
            }

            public void _fetchInstances() {
            }
            private byte[] pad1;
            private long itemId;
            private byte[] pad2;
            private long itemAmt;
            private GrowtopiaWorld _root;
            private GrowtopiaWorld.StorageBoxXtremeExtra _parent;
            public byte[] pad1() { return pad1; }
            public long itemId() { return itemId; }
            public byte[] pad2() { return pad2; }
            public long itemAmt() { return itemAmt; }
            public GrowtopiaWorld _root() { return _root; }
            public GrowtopiaWorld.StorageBoxXtremeExtra _parent() { return _parent; }
        }
        private int dataLen;
        private List<StorageItem> items;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public int dataLen() { return dataLen; }
        public List<StorageItem> items() { return items; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class StormyCloudExtra extends KaitaiStruct {
        public static StormyCloudExtra fromFile(String fileName) throws IOException {
            return new StormyCloudExtra(new ByteBufferKaitaiStream(fileName));
        }

        public StormyCloudExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public StormyCloudExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public StormyCloudExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.stingDuration = this._io.readU4le();
            this.isSolid = this._io.readU4le();
            this.nonSolidDuration = this._io.readU4le();
        }

        public void _fetchInstances() {
        }
        private long stingDuration;
        private long isSolid;
        private long nonSolidDuration;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public long stingDuration() { return stingDuration; }
        public long isSolid() { return isSolid; }
        public long nonSolidDuration() { return nonSolidDuration; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class TemporaryPlatformExtra extends KaitaiStruct {
        public static TemporaryPlatformExtra fromFile(String fileName) throws IOException {
            return new TemporaryPlatformExtra(new ByteBufferKaitaiStream(fileName));
        }

        public TemporaryPlatformExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public TemporaryPlatformExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public TemporaryPlatformExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.unk1 = this._io.readU4le();
        }

        public void _fetchInstances() {
        }
        private long unk1;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public long unk1() { return unk1; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class TesseractManipulatorExtra extends KaitaiStruct {
        public static TesseractManipulatorExtra fromFile(String fileName) throws IOException {
            return new TesseractManipulatorExtra(new ByteBufferKaitaiStream(fileName));
        }

        public TesseractManipulatorExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public TesseractManipulatorExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public TesseractManipulatorExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.gemsLeft = this._io.readU4le();
            this.nextUpdateMs = this._io.readU4le();
            this.itemId = this._io.readU4le();
            this.enabled = this._io.readU4le();
        }

        public void _fetchInstances() {
        }
        private long gemsLeft;
        private long nextUpdateMs;
        private long itemId;
        private long enabled;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public long gemsLeft() { return gemsLeft; }
        public long nextUpdateMs() { return nextUpdateMs; }
        public long itemId() { return itemId; }
        public long enabled() { return enabled; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class TombRobberExtra extends KaitaiStruct {
        public static TombRobberExtra fromFile(String fileName) throws IOException {
            return new TombRobberExtra(new ByteBufferKaitaiStream(fileName));
        }

        public TombRobberExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public TombRobberExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public TombRobberExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
        }

        public void _fetchInstances() {
        }
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class TrainingPortExtra extends KaitaiStruct {
        public static TrainingPortExtra fromFile(String fileName) throws IOException {
            return new TrainingPortExtra(new ByteBufferKaitaiStream(fileName));
        }

        public TrainingPortExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public TrainingPortExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public TrainingPortExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.fishLb = this._io.readU4le();
            this.status = this._io.readU2le();
            this.itemId = this._io.readU4le();
            this.totalExp = this._io.readU4le();
            this.unk1 = this._io.readBytes(8);
            this.fishLevel = this._io.readU4le();
            this.unk2 = this._io.readU4le();
            this.unk3 = this._io.readBytes(5);
        }

        public void _fetchInstances() {
        }
        private long fishLb;
        private int status;
        private long itemId;
        private long totalExp;
        private byte[] unk1;
        private long fishLevel;
        private long unk2;
        private byte[] unk3;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public long fishLb() { return fishLb; }
        public int status() { return status; }
        public long itemId() { return itemId; }
        public long totalExp() { return totalExp; }
        public byte[] unk1() { return unk1; }
        public long fishLevel() { return fishLevel; }
        public long unk2() { return unk2; }
        public byte[] unk3() { return unk3; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class UnknownExtra extends KaitaiStruct {
        public static UnknownExtra fromFile(String fileName) throws IOException {
            return new UnknownExtra(new ByteBufferKaitaiStream(fileName));
        }

        public UnknownExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public UnknownExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public UnknownExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.thisIsJustToErrorOutKaitaiPls = this._io.readBytesFull();
        }

        public void _fetchInstances() {
        }
        private byte[] thisIsJustToErrorOutKaitaiPls;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;

        /**
         * This type is just to error out kaitai. So if you encounter any error, 
         * please either give the world name or dump the world and submit it to me
         * (81739844+badewen@users.noreply.github.com).  
         */
        public byte[] thisIsJustToErrorOutKaitaiPls() { return thisIsJustToErrorOutKaitaiPls; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class VendingMachineExtra extends KaitaiStruct {
        public static VendingMachineExtra fromFile(String fileName) throws IOException {
            return new VendingMachineExtra(new ByteBufferKaitaiStream(fileName));
        }

        public VendingMachineExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public VendingMachineExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public VendingMachineExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.itemId = this._io.readU4le();
            this.price = this._io.readS4le();
        }

        public void _fetchInstances() {
        }
        private long itemId;
        private int price;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public long itemId() { return itemId; }
        public int price() { return price; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class VipEntranceExtra extends KaitaiStruct {
        public static VipEntranceExtra fromFile(String fileName) throws IOException {
            return new VipEntranceExtra(new ByteBufferKaitaiStream(fileName));
        }

        public VipEntranceExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public VipEntranceExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public VipEntranceExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.unk1 = this._io.readU1();
            this.ownerUserid = this._io.readU4le();
            this.numAllowedUserids = this._io.readU4le();
            this.allowedUserids = new ArrayList<Long>();
            for (int i = 0; i < numAllowedUserids(); i++) {
                this.allowedUserids.add(this._io.readU4le());
            }
        }

        public void _fetchInstances() {
            for (int i = 0; i < this.allowedUserids.size(); i++) {
            }
        }
        private int unk1;
        private long ownerUserid;
        private long numAllowedUserids;
        private List<Long> allowedUserids;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public int unk1() { return unk1; }
        public long ownerUserid() { return ownerUserid; }
        public long numAllowedUserids() { return numAllowedUserids; }
        public List<Long> allowedUserids() { return allowedUserids; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class WeatherMachine1Extra extends KaitaiStruct {
        public static WeatherMachine1Extra fromFile(String fileName) throws IOException {
            return new WeatherMachine1Extra(new ByteBufferKaitaiStream(fileName));
        }

        public WeatherMachine1Extra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public WeatherMachine1Extra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public WeatherMachine1Extra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.settings = this._io.readBytes(4);
        }

        public void _fetchInstances() {
        }
        private byte[] settings;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public byte[] settings() { return settings; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class WeatherMachine2Extra extends KaitaiStruct {
        public static WeatherMachine2Extra fromFile(String fileName) throws IOException {
            return new WeatherMachine2Extra(new ByteBufferKaitaiStream(fileName));
        }

        public WeatherMachine2Extra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public WeatherMachine2Extra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public WeatherMachine2Extra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.itemId = this._io.readU4le();
            this.gravity = this._io.readU4le();
            this.flag = this._io.readU1();
        }

        public void _fetchInstances() {
        }
        private long itemId;
        private long gravity;
        private int flag;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public long itemId() { return itemId; }
        public long gravity() { return gravity; }
        public int flag() { return flag; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    public static class WorldObject extends KaitaiStruct {
        public static WorldObject fromFile(String fileName) throws IOException {
            return new WorldObject(new ByteBufferKaitaiStream(fileName));
        }

        public WorldObject(KaitaiStream _io) {
            this(_io, null, null);
        }

        public WorldObject(KaitaiStream _io, GrowtopiaWorld _parent) {
            this(_io, _parent, null);
        }

        public WorldObject(KaitaiStream _io, GrowtopiaWorld _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.itemId = this._io.readU2le();
            this.x = this._io.readF4le();
            this.y = this._io.readF4le();
            this.amount = this._io.readU1();
            this.flag = this._io.readU1();
            this.uid = this._io.readU4le();
        }

        public void _fetchInstances() {
        }
        private int itemId;
        private float x;
        private float y;
        private int amount;
        private int flag;
        private long uid;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld _parent;
        public int itemId() { return itemId; }
        public float x() { return x; }
        public float y() { return y; }
        public int amount() { return amount; }
        public int flag() { return flag; }
        public long uid() { return uid; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld _parent() { return _parent; }
    }
    public static class WorldTile extends KaitaiStruct {
        public static WorldTile fromFile(String fileName) throws IOException {
            return new WorldTile(new ByteBufferKaitaiStream(fileName));
        }

        public WorldTile(KaitaiStream _io) {
            this(_io, null, null);
        }

        public WorldTile(KaitaiStream _io, GrowtopiaWorld _parent) {
            this(_io, _parent, null);
        }

        public WorldTile(KaitaiStream _io, GrowtopiaWorld _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.fg = this._io.readU2le();
            this.bg = this._io.readU2le();
            if ( ((fg() > 25000) || (bg() > 25000)) ) {
                this.invalidTileFgBgKaitaiCrasher = this._io.readBytesFull();
            }
            this.parentBlockIndex = this._io.readU2le();
            this.flag = this._io.readU2le();
            if ((flag() & 2) == 2) {
                this.parentLock = this._io.readU2le();
            }
            if ((flag() & 1) == 1) {
                this.extraDataType = this._io.readU1();
            }
            if ((flag() & 1) == 1) {
                switch (extraDataType()) {
                case 1: {
                    this.tileExtra = new DoorExtra(this._io, this, _root);
                    break;
                }
                case 10: {
                    this.tileExtra = new AchievementBlockExtra(this._io, this, _root);
                    break;
                }
                case 11: {
                    this.tileExtra = new HeartMonitorExtra(this._io, this, _root);
                    break;
                }
                case 14: {
                    this.tileExtra = new MannequinExtra(this._io, this, _root);
                    break;
                }
                case 15: {
                    this.tileExtra = new MagicEggExtra(this._io, this, _root);
                    break;
                }
                case 16: {
                    this.tileExtra = new GameGraveExtra(this._io, this, _root);
                    break;
                }
                case 17: {
                    this.tileExtra = new GameGeneratorExtra(this._io, this, _root);
                    break;
                }
                case 18: {
                    this.tileExtra = new XenoniteExtra(this._io, this, _root);
                    break;
                }
                case 19: {
                    this.tileExtra = new PhoneBoothExtra(this._io, this, _root);
                    break;
                }
                case 2: {
                    this.tileExtra = new SignExtra(this._io, this, _root);
                    break;
                }
                case 20: {
                    this.tileExtra = new CrystalExtra(this._io, this, _root);
                    break;
                }
                case 21: {
                    this.tileExtra = new CrimeInProgressExtra(this._io, this, _root);
                    break;
                }
                case 22: {
                    this.tileExtra = new SpotlightExtra(this._io, this, _root);
                    break;
                }
                case 23: {
                    this.tileExtra = new DisplayBlockExtra(this._io, this, _root);
                    break;
                }
                case 24: {
                    this.tileExtra = new VendingMachineExtra(this._io, this, _root);
                    break;
                }
                case 25: {
                    this.tileExtra = new FishTankPortExtra(this._io, this, _root);
                    break;
                }
                case 26: {
                    this.tileExtra = new SolarCollectorExtra(this._io, this, _root);
                    break;
                }
                case 27: {
                    this.tileExtra = new ForgeExtra(this._io, this, _root);
                    break;
                }
                case 28: {
                    this.tileExtra = new GivingTreeExtra(this._io, this, _root);
                    break;
                }
                case 3: {
                    this.tileExtra = new LockExtra(this._io, this, _root);
                    break;
                }
                case 30: {
                    this.tileExtra = new SteamOrganExtra(this._io, this, _root);
                    break;
                }
                case 31: {
                    this.tileExtra = new SilkWormExtra(this._io, this, _root);
                    break;
                }
                case 32: {
                    this.tileExtra = new SewingMachineExtra(this._io, this, _root);
                    break;
                }
                case 33: {
                    this.tileExtra = new CountryFlagExtra(this._io, this, _root);
                    break;
                }
                case 34: {
                    this.tileExtra = new LobsterTrapExtra(this._io, this, _root);
                    break;
                }
                case 35: {
                    this.tileExtra = new PaintingEaselExtra(this._io, this, _root);
                    break;
                }
                case 36: {
                    this.tileExtra = new PetBattleCageExtra(this._io, this, _root);
                    break;
                }
                case 37: {
                    this.tileExtra = new PetTrainerExtra(this._io, this, _root);
                    break;
                }
                case 38: {
                    this.tileExtra = new SteamEngineExtra(this._io, this, _root);
                    break;
                }
                case 39: {
                    this.tileExtra = new LockBotExtra(this._io, this, _root);
                    break;
                }
                case 4: {
                    this.tileExtra = new SeedExtra(this._io, this, _root);
                    break;
                }
                case 40: {
                    this.tileExtra = new WeatherMachine1Extra(this._io, this, _root);
                    break;
                }
                case 41: {
                    this.tileExtra = new SpiritStorageUnitExtra(this._io, this, _root);
                    break;
                }
                case 42: {
                    this.tileExtra = new DataBedrockExtra(this._io, this, _root);
                    break;
                }
                case 43: {
                    this.tileExtra = new ShelfExtra(this._io, this, _root);
                    break;
                }
                case 44: {
                    this.tileExtra = new VipEntranceExtra(this._io, this, _root);
                    break;
                }
                case 45: {
                    this.tileExtra = new ChallengeTimerExtra(this._io, this, _root);
                    break;
                }
                case 47: {
                    this.tileExtra = new FishWallMountExtra(this._io, this, _root);
                    break;
                }
                case 48: {
                    this.tileExtra = new PortraitExtra(this._io, this, _root);
                    break;
                }
                case 49: {
                    this.tileExtra = new WeatherMachine2Extra(this._io, this, _root);
                    break;
                }
                case 50: {
                    this.tileExtra = new FossilPrepStationExtra(this._io, this, _root);
                    break;
                }
                case 51: {
                    this.tileExtra = new DnaExtractorExtra(this._io, this, _root);
                    break;
                }
                case 52: {
                    this.tileExtra = new HowlerExtra(this._io, this, _root);
                    break;
                }
                case 53: {
                    this.tileExtra = new ChemsynthTankExtra(this._io, this, _root);
                    break;
                }
                case 54: {
                    this.tileExtra = new StorageBoxXtremeExtra(this._io, this, _root);
                    break;
                }
                case 55: {
                    this.tileExtra = new CookingOvenExtra(this._io, this, _root);
                    break;
                }
                case 56: {
                    this.tileExtra = new AudioRackExtra(this._io, this, _root);
                    break;
                }
                case 57: {
                    this.tileExtra = new GeigerChargerExtra(this._io, this, _root);
                    break;
                }
                case 58: {
                    this.tileExtra = new AdventureBeginsExtra(this._io, this, _root);
                    break;
                }
                case 59: {
                    this.tileExtra = new TombRobberExtra(this._io, this, _root);
                    break;
                }
                case 60: {
                    this.tileExtra = new BalloonOMaticExtra(this._io, this, _root);
                    break;
                }
                case 61: {
                    this.tileExtra = new TrainingPortExtra(this._io, this, _root);
                    break;
                }
                case 62: {
                    this.tileExtra = new ItemSuckerExtra(this._io, this, _root);
                    break;
                }
                case 63: {
                    this.tileExtra = new CybotExtra(this._io, this, _root);
                    break;
                }
                case 65: {
                    this.tileExtra = new GuildExtra(this._io, this, _root);
                    break;
                }
                case 66: {
                    this.tileExtra = new GrowscanExtra(this._io, this, _root);
                    break;
                }
                case 67: {
                    this.tileExtra = new ContainmentFieldPowerNodeExtra(this._io, this, _root);
                    break;
                }
                case 68: {
                    this.tileExtra = new SpiritBoardExtra(this._io, this, _root);
                    break;
                }
                case 69: {
                    this.tileExtra = new TesseractManipulatorExtra(this._io, this, _root);
                    break;
                }
                case 72: {
                    this.tileExtra = new StormyCloudExtra(this._io, this, _root);
                    break;
                }
                case 73: {
                    this.tileExtra = new TemporaryPlatformExtra(this._io, this, _root);
                    break;
                }
                case 74: {
                    this.tileExtra = new SafeVaultExtra(this._io, this, _root);
                    break;
                }
                case 75: {
                    this.tileExtra = new AngelicCountingCloudExtra(this._io, this, _root);
                    break;
                }
                case 77: {
                    this.tileExtra = new InfinityWeatherMachineExtra(this._io, this, _root);
                    break;
                }
                case 79: {
                    this.tileExtra = new PineappleGuzzlerExtra(this._io, this, _root);
                    break;
                }
                case 8: {
                    this.tileExtra = new DiceExtra(this._io, this, _root);
                    break;
                }
                case 80: {
                    this.tileExtra = new KrakensGalaticBlockExtra(this._io, this, _root);
                    break;
                }
                case 81: {
                    this.tileExtra = new FriendsEntranceExtra(this._io, this, _root);
                    break;
                }
                case 9: {
                    this.tileExtra = new ProviderExtra(this._io, this, _root);
                    break;
                }
                default: {
                    this.tileExtra = new UnknownExtra(this._io, this, _root);
                    break;
                }
                }
            }
            if ( (( (((flag() & 1) == 1) && (extraDataType() == 36)) ) || (fg() == 15546) || (fg() == 14666) || (fg() == 14962) || (fg() == 14662)) ) {
                this.cborData = new CborData(this._io, this, _root);
            }
        }

        public void _fetchInstances() {
            if ( ((fg() > 25000) || (bg() > 25000)) ) {
            }
            if ((flag() & 2) == 2) {
            }
            if ((flag() & 1) == 1) {
            }
            if ((flag() & 1) == 1) {
                switch (extraDataType()) {
                case 1: {
                    ((DoorExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 10: {
                    ((AchievementBlockExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 11: {
                    ((HeartMonitorExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 14: {
                    ((MannequinExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 15: {
                    ((MagicEggExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 16: {
                    ((GameGraveExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 17: {
                    ((GameGeneratorExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 18: {
                    ((XenoniteExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 19: {
                    ((PhoneBoothExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 2: {
                    ((SignExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 20: {
                    ((CrystalExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 21: {
                    ((CrimeInProgressExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 22: {
                    ((SpotlightExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 23: {
                    ((DisplayBlockExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 24: {
                    ((VendingMachineExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 25: {
                    ((FishTankPortExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 26: {
                    ((SolarCollectorExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 27: {
                    ((ForgeExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 28: {
                    ((GivingTreeExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 3: {
                    ((LockExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 30: {
                    ((SteamOrganExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 31: {
                    ((SilkWormExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 32: {
                    ((SewingMachineExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 33: {
                    ((CountryFlagExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 34: {
                    ((LobsterTrapExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 35: {
                    ((PaintingEaselExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 36: {
                    ((PetBattleCageExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 37: {
                    ((PetTrainerExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 38: {
                    ((SteamEngineExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 39: {
                    ((LockBotExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 4: {
                    ((SeedExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 40: {
                    ((WeatherMachine1Extra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 41: {
                    ((SpiritStorageUnitExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 42: {
                    ((DataBedrockExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 43: {
                    ((ShelfExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 44: {
                    ((VipEntranceExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 45: {
                    ((ChallengeTimerExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 47: {
                    ((FishWallMountExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 48: {
                    ((PortraitExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 49: {
                    ((WeatherMachine2Extra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 50: {
                    ((FossilPrepStationExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 51: {
                    ((DnaExtractorExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 52: {
                    ((HowlerExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 53: {
                    ((ChemsynthTankExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 54: {
                    ((StorageBoxXtremeExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 55: {
                    ((CookingOvenExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 56: {
                    ((AudioRackExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 57: {
                    ((GeigerChargerExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 58: {
                    ((AdventureBeginsExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 59: {
                    ((TombRobberExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 60: {
                    ((BalloonOMaticExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 61: {
                    ((TrainingPortExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 62: {
                    ((ItemSuckerExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 63: {
                    ((CybotExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 65: {
                    ((GuildExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 66: {
                    ((GrowscanExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 67: {
                    ((ContainmentFieldPowerNodeExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 68: {
                    ((SpiritBoardExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 69: {
                    ((TesseractManipulatorExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 72: {
                    ((StormyCloudExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 73: {
                    ((TemporaryPlatformExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 74: {
                    ((SafeVaultExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 75: {
                    ((AngelicCountingCloudExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 77: {
                    ((InfinityWeatherMachineExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 79: {
                    ((PineappleGuzzlerExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 8: {
                    ((DiceExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 80: {
                    ((KrakensGalaticBlockExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 81: {
                    ((FriendsEntranceExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                case 9: {
                    ((ProviderExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                default: {
                    ((UnknownExtra) (this.tileExtra))._fetchInstances();
                    break;
                }
                }
            }
            if ( (( (((flag() & 1) == 1) && (extraDataType() == 36)) ) || (fg() == 15546) || (fg() == 14666) || (fg() == 14962) || (fg() == 14662)) ) {
                this.cborData._fetchInstances();
            }
        }
        private int fg;
        private int bg;
        private byte[] invalidTileFgBgKaitaiCrasher;
        private int parentBlockIndex;
        private int flag;
        private Integer parentLock;
        private Integer extraDataType;
        private KaitaiStruct tileExtra;
        private CborData cborData;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld _parent;
        public int fg() { return fg; }
        public int bg() { return bg; }

        /**
         * This type is just to error out kaitai. If this is 
         * encountered, then maybe there was a parsing error.
         * Please report :)
         */
        public byte[] invalidTileFgBgKaitaiCrasher() { return invalidTileFgBgKaitaiCrasher; }
        public int parentBlockIndex() { return parentBlockIndex; }
        public int flag() { return flag; }
        public Integer parentLock() { return parentLock; }
        public Integer extraDataType() { return extraDataType; }
        public KaitaiStruct tileExtra() { return tileExtra; }
        public CborData cborData() { return cborData; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld _parent() { return _parent; }
    }
    public static class XenoniteExtra extends KaitaiStruct {
        public static XenoniteExtra fromFile(String fileName) throws IOException {
            return new XenoniteExtra(new ByteBufferKaitaiStream(fileName));
        }

        public XenoniteExtra(KaitaiStream _io) {
            this(_io, null, null);
        }

        public XenoniteExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent) {
            this(_io, _parent, null);
        }

        public XenoniteExtra(KaitaiStream _io, GrowtopiaWorld.WorldTile _parent, GrowtopiaWorld _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.unk1 = this._io.readBytes(5);
        }

        public void _fetchInstances() {
        }
        private byte[] unk1;
        private GrowtopiaWorld _root;
        private GrowtopiaWorld.WorldTile _parent;
        public byte[] unk1() { return unk1; }
        public GrowtopiaWorld _root() { return _root; }
        public GrowtopiaWorld.WorldTile _parent() { return _parent; }
    }
    private int version;
    private long unk1;
    private GtStr name;
    private long width;
    private long height;
    private long numTiles;
    private byte[] unk2;
    private List<WorldTile> tiles;
    private byte[] unk3;
    private long numObjects;
    private long lastObjectUid;
    private List<WorldObject> objects;
    private GrowtopiaWorld _root;
    private KaitaiStruct _parent;
    public int version() { return version; }
    public long unk1() { return unk1; }
    public GtStr name() { return name; }
    public long width() { return width; }
    public long height() { return height; }
    public long numTiles() { return numTiles; }
    public byte[] unk2() { return unk2; }
    public List<WorldTile> tiles() { return tiles; }
    public byte[] unk3() { return unk3; }
    public long numObjects() { return numObjects; }
    public long lastObjectUid() { return lastObjectUid; }
    public List<WorldObject> objects() { return objects; }
    public GrowtopiaWorld _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
