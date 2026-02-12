// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.GrowtopiaWorld || (root.GrowtopiaWorld = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (GrowtopiaWorld_, KaitaiStream) {
var GrowtopiaWorld = (function() {
  function GrowtopiaWorld(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  GrowtopiaWorld.prototype._read = function() {
    this.version = this._io.readU2le();
    this.unk1 = this._io.readU4le();
    this.name = new GtStr(this._io, this, this._root);
    this.width = this._io.readU4le();
    this.height = this._io.readU4le();
    this.numTiles = this._io.readU4le();
    this.unk2 = this._io.readBytes(5);
    this.tiles = [];
    for (var i = 0; i < this.numTiles; i++) {
      this.tiles.push(new WorldTile(this._io, this, this._root));
    }
    this.unk3 = this._io.readBytes(12);
    this.numObjects = this._io.readU4le();
    this.lastObjectUid = this._io.readU4le();
    this.objects = [];
    for (var i = 0; i < this.numObjects; i++) {
      this.objects.push(new WorldObject(this._io, this, this._root));
    }
  }

  var ARGB = GrowtopiaWorld.ARGB = (function() {
    function ARGB(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    ARGB.prototype._read = function() {
      this.a = this._io.readU1();
      this.r = this._io.readU1();
      this.g = this._io.readU1();
      this.b = this._io.readU1();
    }

    return ARGB;
  })();

  var AchievementBlockExtra = GrowtopiaWorld.AchievementBlockExtra = (function() {
    function AchievementBlockExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    AchievementBlockExtra.prototype._read = function() {
      this.unk1 = this._io.readU4le();
      this.achievementId = this._io.readU1();
    }

    return AchievementBlockExtra;
  })();

  var AdventureBeginsExtra = GrowtopiaWorld.AdventureBeginsExtra = (function() {
    function AdventureBeginsExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    AdventureBeginsExtra.prototype._read = function() {
    }

    return AdventureBeginsExtra;
  })();

  var AngelicCountingCloudExtra = GrowtopiaWorld.AngelicCountingCloudExtra = (function() {
    AngelicCountingCloudExtra.States = Object.freeze({
      RAFFLING: 1,
      DONE_RAFFLING: 2,

      1: "RAFFLING",
      2: "DONE_RAFFLING",
    });

    function AngelicCountingCloudExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    AngelicCountingCloudExtra.prototype._read = function() {
      this.state = this._io.readU4le();
      this.unk1 = this._io.readU2le();
      if (this.state == GrowtopiaWorld.AngelicCountingCloudExtra.States.DONE_RAFFLING) {
        this.asciiCode = this._io.readU1();
      }
    }

    return AngelicCountingCloudExtra;
  })();

  var AudioRackExtra = GrowtopiaWorld.AudioRackExtra = (function() {
    function AudioRackExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    AudioRackExtra.prototype._read = function() {
      this.note = new GtStr(this._io, this, this._root);
      this.volume = this._io.readU4le();
    }

    return AudioRackExtra;
  })();

  var BalloonOMaticExtra = GrowtopiaWorld.BalloonOMaticExtra = (function() {
    function BalloonOMaticExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    BalloonOMaticExtra.prototype._read = function() {
      this.totalRarity = this._io.readU4le();
      this.teamType = this._io.readU1();
    }

    return BalloonOMaticExtra;
  })();

  var CborData = GrowtopiaWorld.CborData = (function() {
    function CborData(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    CborData.prototype._read = function() {
      this.lenData = this._io.readU4le();
      this.data = this._io.readBytes(this.lenData);
    }

    return CborData;
  })();

  var ChallengeTimerExtra = GrowtopiaWorld.ChallengeTimerExtra = (function() {
    function ChallengeTimerExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    ChallengeTimerExtra.prototype._read = function() {
    }

    return ChallengeTimerExtra;
  })();

  var ChemsynthTankExtra = GrowtopiaWorld.ChemsynthTankExtra = (function() {
    function ChemsynthTankExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    ChemsynthTankExtra.prototype._read = function() {
      this.currentChemId = this._io.readU4le();
      this.supposedChemId = this._io.readU4le();
    }

    return ChemsynthTankExtra;
  })();

  var ContainmentFieldPowerNodeExtra = GrowtopiaWorld.ContainmentFieldPowerNodeExtra = (function() {
    function ContainmentFieldPowerNodeExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    ContainmentFieldPowerNodeExtra.prototype._read = function() {
      this.timeMs = this._io.readU4le();
      this.numLinkedNodes = this._io.readU4le();
      this.linkedNodes = [];
      for (var i = 0; i < this.numLinkedNodes; i++) {
        this.linkedNodes.push(this._io.readU4le());
      }
    }

    return ContainmentFieldPowerNodeExtra;
  })();

  var CookingOvenExtra = GrowtopiaWorld.CookingOvenExtra = (function() {
    function CookingOvenExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    CookingOvenExtra.prototype._read = function() {
      this.tempLevel = this._io.readU4le();
      this.ingredientListSize = this._io.readU4le();
      this.ingredients = [];
      for (var i = 0; i < Math.floor(this.ingredientListSize / 2); i++) {
        this.ingredients.push(new Ingredient(this._io, this, this._root));
      }
      this.unk1 = this._io.readU4le();
      this.unk2 = this._io.readU4le();
      this.unk3 = this._io.readU4le();
    }

    var Ingredient = CookingOvenExtra.Ingredient = (function() {
      function Ingredient(_io, _parent, _root) {
        this._io = _io;
        this._parent = _parent;
        this._root = _root;

        this._read();
      }
      Ingredient.prototype._read = function() {
        this.itemId = this._io.readU4le();
        this.timeAdded = this._io.readU4le();
      }

      return Ingredient;
    })();

    return CookingOvenExtra;
  })();

  var CountryFlagExtra = GrowtopiaWorld.CountryFlagExtra = (function() {
    function CountryFlagExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    CountryFlagExtra.prototype._read = function() {
      if (this._parent.fg == 3394) {
        this.country = new GtStr(this._io, this, this._root);
      }
    }

    return CountryFlagExtra;
  })();

  var CrimeInProgressExtra = GrowtopiaWorld.CrimeInProgressExtra = (function() {
    function CrimeInProgressExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    CrimeInProgressExtra.prototype._read = function() {
      this.crimeName = new GtStr(this._io, this, this._root);
      this.crimeIndex = this._io.readU4le();
      this.unk1 = this._io.readU1();
    }

    return CrimeInProgressExtra;
  })();

  var CrystalExtra = GrowtopiaWorld.CrystalExtra = (function() {
    function CrystalExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    CrystalExtra.prototype._read = function() {
      this.numCrystals = this._io.readU2le();
      this.crystals = [];
      for (var i = 0; i < this.numCrystals; i++) {
        this.crystals.push(this._io.readU1());
      }
    }

    return CrystalExtra;
  })();

  var CybotExtra = GrowtopiaWorld.CybotExtra = (function() {
    function CybotExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    CybotExtra.prototype._read = function() {
      this.numCommands = this._io.readU4le();
      this.commands = [];
      for (var i = 0; i < this.numCommands; i++) {
        this.commands.push(new Command(this._io, this, this._root));
      }
      this.timer = this._io.readU4le();
      this.isActivated = this._io.readU4le();
    }

    var Command = CybotExtra.Command = (function() {
      function Command(_io, _parent, _root) {
        this._io = _io;
        this._parent = _parent;
        this._root = _root;

        this._read();
      }
      Command.prototype._read = function() {
        this.commandId = this._io.readU4le();
        this.isCommandUsed = this._io.readU4le();
        this.unk1 = this._io.readBytes(7);
      }

      return Command;
    })();

    return CybotExtra;
  })();

  var DataBedrockExtra = GrowtopiaWorld.DataBedrockExtra = (function() {
    function DataBedrockExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    DataBedrockExtra.prototype._read = function() {
      this.unk1 = this._io.readBytes(17);
      this.pad1 = this._io.readBytes(4);
    }

    return DataBedrockExtra;
  })();

  var DiceExtra = GrowtopiaWorld.DiceExtra = (function() {
    function DiceExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    DiceExtra.prototype._read = function() {
      this.symbol = this._io.readU1();
    }

    return DiceExtra;
  })();

  var DisplayBlockExtra = GrowtopiaWorld.DisplayBlockExtra = (function() {
    function DisplayBlockExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    DisplayBlockExtra.prototype._read = function() {
      this.itemId = this._io.readU4le();
    }

    return DisplayBlockExtra;
  })();

  var DnaExtractorExtra = GrowtopiaWorld.DnaExtractorExtra = (function() {
    function DnaExtractorExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    DnaExtractorExtra.prototype._read = function() {
    }

    return DnaExtractorExtra;
  })();

  var DoorExtra = GrowtopiaWorld.DoorExtra = (function() {
    function DoorExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    DoorExtra.prototype._read = function() {
      this.label = new GtStr(this._io, this, this._root);
      this.unk1 = this._io.readU1();
    }

    return DoorExtra;
  })();

  var FishTankPortExtra = GrowtopiaWorld.FishTankPortExtra = (function() {
    function FishTankPortExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    FishTankPortExtra.prototype._read = function() {
      this.flags = this._io.readU1();
      this.fishDataLength = this._io.readU4le();
      this.fishes = [];
      for (var i = 0; i < Math.floor(this.fishDataLength / 2); i++) {
        this.fishes.push(new FishInfo(this._io, this, this._root));
      }
    }

    var FishInfo = FishTankPortExtra.FishInfo = (function() {
      function FishInfo(_io, _parent, _root) {
        this._io = _io;
        this._parent = _parent;
        this._root = _root;

        this._read();
      }
      FishInfo.prototype._read = function() {
        this.itemId = this._io.readU4le();
        this.lbs = this._io.readU4le();
      }

      return FishInfo;
    })();

    return FishTankPortExtra;
  })();

  var FishWallMountExtra = GrowtopiaWorld.FishWallMountExtra = (function() {
    function FishWallMountExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    FishWallMountExtra.prototype._read = function() {
      this.label = new GtStr(this._io, this, this._root);
      this.itemId = this._io.readU4le();
      this.lbs = this._io.readU1();
    }

    return FishWallMountExtra;
  })();

  var ForgeExtra = GrowtopiaWorld.ForgeExtra = (function() {
    function ForgeExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    ForgeExtra.prototype._read = function() {
      this.temperature = this._io.readU4le();
    }

    return ForgeExtra;
  })();

  var FossilPrepStationExtra = GrowtopiaWorld.FossilPrepStationExtra = (function() {
    function FossilPrepStationExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    FossilPrepStationExtra.prototype._read = function() {
      this.unk1 = this._io.readU4le();
    }

    return FossilPrepStationExtra;
  })();

  var FriendsEntranceExtra = GrowtopiaWorld.FriendsEntranceExtra = (function() {
    function FriendsEntranceExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    FriendsEntranceExtra.prototype._read = function() {
      this.ownerUserid = this._io.readU4le();
      this.unk1 = this._io.readBytes(2);
      this.numAllowedFriendsUserid = this._io.readU2le();
      this.allowedFriendsUserid = [];
      for (var i = 0; i < this.numAllowedFriendsUserid; i++) {
        this.allowedFriendsUserid.push(this._io.readU4le());
      }
    }

    return FriendsEntranceExtra;
  })();

  var GameGeneratorExtra = GrowtopiaWorld.GameGeneratorExtra = (function() {
    function GameGeneratorExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    GameGeneratorExtra.prototype._read = function() {
    }

    return GameGeneratorExtra;
  })();

  var GameGraveExtra = GrowtopiaWorld.GameGraveExtra = (function() {
    function GameGraveExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    GameGraveExtra.prototype._read = function() {
      this.teamId = this._io.readU1();
    }

    return GameGraveExtra;
  })();

  var GeigerChargerExtra = GrowtopiaWorld.GeigerChargerExtra = (function() {
    function GeigerChargerExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    GeigerChargerExtra.prototype._read = function() {
      this.unk1 = this._io.readBytes(4);
    }

    return GeigerChargerExtra;
  })();

  var GivingTreeExtra = GrowtopiaWorld.GivingTreeExtra = (function() {
    function GivingTreeExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    GivingTreeExtra.prototype._read = function() {
      this.harvested = this._io.readU1();
      this.age = this._io.readU2le();
      this.unk1 = this._io.readU2le();
      this.decorationPercentage = this._io.readU1();
    }

    return GivingTreeExtra;
  })();

  var GrowscanExtra = GrowtopiaWorld.GrowscanExtra = (function() {
    function GrowscanExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    GrowscanExtra.prototype._read = function() {
      this.unk1 = this._io.readU1();
    }

    return GrowscanExtra;
  })();

  var GtStr = GrowtopiaWorld.GtStr = (function() {
    function GtStr(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    GtStr.prototype._read = function() {
      this.lenData = this._io.readU2le();
      this.str = KaitaiStream.bytesToStr(this._io.readBytes(this.lenData), "ASCII");
    }

    return GtStr;
  })();

  var GuildExtra = GrowtopiaWorld.GuildExtra = (function() {
    function GuildExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    GuildExtra.prototype._read = function() {
      this.unk1 = this._io.readBytes(17);
    }

    return GuildExtra;
  })();

  var HeartMonitorExtra = GrowtopiaWorld.HeartMonitorExtra = (function() {
    function HeartMonitorExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    HeartMonitorExtra.prototype._read = function() {
      this.userId = this._io.readU4le();
      this.growId = new GtStr(this._io, this, this._root);
    }

    return HeartMonitorExtra;
  })();

  var HowlerExtra = GrowtopiaWorld.HowlerExtra = (function() {
    function HowlerExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    HowlerExtra.prototype._read = function() {
    }

    return HowlerExtra;
  })();

  var InfinityWeatherMachineExtra = GrowtopiaWorld.InfinityWeatherMachineExtra = (function() {
    function InfinityWeatherMachineExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    InfinityWeatherMachineExtra.prototype._read = function() {
      this.intervalMins = this._io.readU4le();
      this.numWeatherMachines = this._io.readU4le();
      this.weatherMachines = [];
      for (var i = 0; i < this.numWeatherMachines; i++) {
        this.weatherMachines.push(this._io.readU4le());
      }
    }

    return InfinityWeatherMachineExtra;
  })();

  var ItemSuckerExtra = GrowtopiaWorld.ItemSuckerExtra = (function() {
    function ItemSuckerExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    ItemSuckerExtra.prototype._read = function() {
      this.itemId = this._io.readU4le();
      this.itemAmount = this._io.readU4le();
      this.flags = this._io.readU2le();
      this.itemLimit = this._io.readU4le();
    }

    return ItemSuckerExtra;
  })();

  var KrakensGalaticBlockExtra = GrowtopiaWorld.KrakensGalaticBlockExtra = (function() {
    function KrakensGalaticBlockExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    KrakensGalaticBlockExtra.prototype._read = function() {
      this.patternNumber = this._io.readU1();
      this.unk1 = this._io.readBytes(4);
      this.colorRgb = this._io.readBytes(3);
    }

    return KrakensGalaticBlockExtra;
  })();

  var LobsterTrapExtra = GrowtopiaWorld.LobsterTrapExtra = (function() {
    function LobsterTrapExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    LobsterTrapExtra.prototype._read = function() {
    }

    return LobsterTrapExtra;
  })();

  var LockBotExtra = GrowtopiaWorld.LockBotExtra = (function() {
    function LockBotExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    LockBotExtra.prototype._read = function() {
      this.timePassedSec = this._io.readU4le();
    }

    return LockBotExtra;
  })();

  var LockExtra = GrowtopiaWorld.LockExtra = (function() {
    function LockExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    LockExtra.prototype._read = function() {
      this.flag = this._io.readU1();
      this.ownerUserId = this._io.readU4le();
      this.numAuthorizedUserids = this._io.readU4le();
      this.authorizedUserids = [];
      for (var i = 0; i < this.numAuthorizedUserids; i++) {
        this.authorizedUserids.push(this._io.readU4le());
      }
      this.minimumLevel = this._io.readU1();
      this.unk1 = this._io.readBytes(7);
      if (this._parent.fg == 5814) {
        this.guildLocksUnk = this._io.readBytes(16);
      }
    }

    return LockExtra;
  })();

  var MagicEggExtra = GrowtopiaWorld.MagicEggExtra = (function() {
    function MagicEggExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    MagicEggExtra.prototype._read = function() {
      this.eggAmount = this._io.readU4le();
    }

    return MagicEggExtra;
  })();

  var MannequinExtra = GrowtopiaWorld.MannequinExtra = (function() {
    function MannequinExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    MannequinExtra.prototype._read = function() {
      this.label = new GtStr(this._io, this, this._root);
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

    return MannequinExtra;
  })();

  var PaintingEaselExtra = GrowtopiaWorld.PaintingEaselExtra = (function() {
    function PaintingEaselExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    PaintingEaselExtra.prototype._read = function() {
      this.itemId = this._io.readU4le();
      this.label = new GtStr(this._io, this, this._root);
    }

    return PaintingEaselExtra;
  })();

  var PetBattleCageExtra = GrowtopiaWorld.PetBattleCageExtra = (function() {
    function PetBattleCageExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    PetBattleCageExtra.prototype._read = function() {
      this.label = new GtStr(this._io, this, this._root);
      this.basePet = this._io.readU4le();
      this.combinedPet1 = this._io.readU4le();
      this.combinedPet2 = this._io.readU4le();
    }

    return PetBattleCageExtra;
  })();

  var PetTrainerExtra = GrowtopiaWorld.PetTrainerExtra = (function() {
    function PetTrainerExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    PetTrainerExtra.prototype._read = function() {
      this.name = new GtStr(this._io, this, this._root);
      this.numPets = this._io.readU4le();
      this.unk1 = this._io.readU4le();
      this.pets = [];
      for (var i = 0; i < this.numPets; i++) {
        this.pets.push(this._io.readU4le());
      }
    }

    return PetTrainerExtra;
  })();

  var PhoneBoothExtra = GrowtopiaWorld.PhoneBoothExtra = (function() {
    function PhoneBoothExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    PhoneBoothExtra.prototype._read = function() {
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

    return PhoneBoothExtra;
  })();

  var PineappleGuzzlerExtra = GrowtopiaWorld.PineappleGuzzlerExtra = (function() {
    function PineappleGuzzlerExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    PineappleGuzzlerExtra.prototype._read = function() {
      this.pineappleFed = this._io.readU4le();
    }

    return PineappleGuzzlerExtra;
  })();

  var PortraitExtra = GrowtopiaWorld.PortraitExtra = (function() {
    function PortraitExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    PortraitExtra.prototype._read = function() {
      this.label = new GtStr(this._io, this, this._root);
      this.unk1 = this._io.readU4le();
      this.unk2 = this._io.readU4le();
      this.unk3 = this._io.readBytes(5);
      this.unk4 = this._io.readU1();
      this.unk5 = this._io.readU2le();
      this.face = this._io.readU2le();
      this.hat = this._io.readU2le();
      this.hair = this._io.readU2le();
      this.unk6 = this._io.readU4le();
      if (this.hat == 12958) {
        this.infinityCrownData = new GtStr(this._io, this, this._root);
      }
    }

    return PortraitExtra;
  })();

  var ProviderExtra = GrowtopiaWorld.ProviderExtra = (function() {
    function ProviderExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    ProviderExtra.prototype._read = function() {
      this.growth = this._io.readU4le();
      if (this._parent.fg == 10656) {
        this.pad1 = this._io.readBytes(4);
      }
    }

    return ProviderExtra;
  })();

  var SafeVaultExtra = GrowtopiaWorld.SafeVaultExtra = (function() {
    function SafeVaultExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    SafeVaultExtra.prototype._read = function() {
    }

    return SafeVaultExtra;
  })();

  var SeedExtra = GrowtopiaWorld.SeedExtra = (function() {
    function SeedExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    SeedExtra.prototype._read = function() {
      this.age = this._io.readU4le();
      this.fruitCount = this._io.readU1();
    }

    return SeedExtra;
  })();

  var SewingMachineExtra = GrowtopiaWorld.SewingMachineExtra = (function() {
    function SewingMachineExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    SewingMachineExtra.prototype._read = function() {
      this.numBoltIds = this._io.readU4le();
      this.boltIds = [];
      for (var i = 0; i < this.numBoltIds; i++) {
        this.boltIds.push(this._io.readU4le());
      }
    }

    return SewingMachineExtra;
  })();

  var ShelfExtra = GrowtopiaWorld.ShelfExtra = (function() {
    function ShelfExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    ShelfExtra.prototype._read = function() {
      this.topLeftItemId = this._io.readU4le();
      this.topRightItemId = this._io.readU4le();
      this.bottomLeftItemId = this._io.readU4le();
      this.bottomRightItemId = this._io.readU4le();
    }

    return ShelfExtra;
  })();

  var SignExtra = GrowtopiaWorld.SignExtra = (function() {
    function SignExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    SignExtra.prototype._read = function() {
      this.label = new GtStr(this._io, this, this._root);
      this.pad1 = this._io.readBytes(4);
    }

    return SignExtra;
  })();

  var SilkWormExtra = GrowtopiaWorld.SilkWormExtra = (function() {
    function SilkWormExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    SilkWormExtra.prototype._read = function() {
      this.flags = this._io.readU1();
      this.name = new GtStr(this._io, this, this._root);
      this.ageSec = this._io.readU4le();
      this.unk1 = this._io.readU4le();
      this.unk2 = this._io.readU4le();
      this.canBeFed = this._io.readU1();
      this.foodSaturation = this._io.readU4le();
      this.waterSaturation = this._io.readU4le();
      this.colorArgb = new ARGB(this._io, this, this._root);
      this.sickDuration = this._io.readU4le();
    }

    return SilkWormExtra;
  })();

  var SolarCollectorExtra = GrowtopiaWorld.SolarCollectorExtra = (function() {
    function SolarCollectorExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    SolarCollectorExtra.prototype._read = function() {
      this.unk1 = this._io.readBytes(5);
    }

    return SolarCollectorExtra;
  })();

  var SpiritBoardExtra = GrowtopiaWorld.SpiritBoardExtra = (function() {
    function SpiritBoardExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    SpiritBoardExtra.prototype._read = function() {
      this.playerRequired = this._io.readU4le();
      this.unk1 = new GtStr(this._io, this, this._root);
      this.command = new GtStr(this._io, this, this._root);
      this.numRequiredItems = this._io.readU4le();
      this.requiredItems = [];
      for (var i = 0; i < this.numRequiredItems; i++) {
        this.requiredItems.push(this._io.readU4le());
      }
    }

    return SpiritBoardExtra;
  })();

  var SpiritStorageUnitExtra = GrowtopiaWorld.SpiritStorageUnitExtra = (function() {
    function SpiritStorageUnitExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    SpiritStorageUnitExtra.prototype._read = function() {
      this.ghostJarCount = this._io.readU4le();
    }

    return SpiritStorageUnitExtra;
  })();

  var SpotlightExtra = GrowtopiaWorld.SpotlightExtra = (function() {
    function SpotlightExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    SpotlightExtra.prototype._read = function() {
    }

    return SpotlightExtra;
  })();

  var SteamEngineExtra = GrowtopiaWorld.SteamEngineExtra = (function() {
    function SteamEngineExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    SteamEngineExtra.prototype._read = function() {
      this.temperature = this._io.readU4le();
    }

    return SteamEngineExtra;
  })();

  var SteamOrganExtra = GrowtopiaWorld.SteamOrganExtra = (function() {
    function SteamOrganExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    SteamOrganExtra.prototype._read = function() {
      this.instrumentType = this._io.readU1();
      this.note = this._io.readU4le();
    }

    return SteamOrganExtra;
  })();

  var StorageBoxXtremeExtra = GrowtopiaWorld.StorageBoxXtremeExtra = (function() {
    function StorageBoxXtremeExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    StorageBoxXtremeExtra.prototype._read = function() {
      this.dataLen = this._io.readU2le();
      this.items = [];
      for (var i = 0; i < Math.floor(this.dataLen / 13); i++) {
        this.items.push(new StorageItem(this._io, this, this._root));
      }
    }

    var StorageItem = StorageBoxXtremeExtra.StorageItem = (function() {
      function StorageItem(_io, _parent, _root) {
        this._io = _io;
        this._parent = _parent;
        this._root = _root;

        this._read();
      }
      StorageItem.prototype._read = function() {
        this.pad1 = this._io.readBytes(3);
        this.itemId = this._io.readU4le();
        this.pad2 = this._io.readBytes(2);
        this.itemAmt = this._io.readU4le();
      }

      return StorageItem;
    })();

    return StorageBoxXtremeExtra;
  })();

  var StormyCloudExtra = GrowtopiaWorld.StormyCloudExtra = (function() {
    function StormyCloudExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    StormyCloudExtra.prototype._read = function() {
      this.stingDuration = this._io.readU4le();
      this.isSolid = this._io.readU4le();
      this.nonSolidDuration = this._io.readU4le();
    }

    return StormyCloudExtra;
  })();

  var TemporaryPlatformExtra = GrowtopiaWorld.TemporaryPlatformExtra = (function() {
    function TemporaryPlatformExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    TemporaryPlatformExtra.prototype._read = function() {
      this.unk1 = this._io.readU4le();
    }

    return TemporaryPlatformExtra;
  })();

  var TesseractManipulatorExtra = GrowtopiaWorld.TesseractManipulatorExtra = (function() {
    function TesseractManipulatorExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    TesseractManipulatorExtra.prototype._read = function() {
      this.gemsLeft = this._io.readU4le();
      this.nextUpdateMs = this._io.readU4le();
      this.itemId = this._io.readU4le();
      this.enabled = this._io.readU4le();
    }

    return TesseractManipulatorExtra;
  })();

  var TombRobberExtra = GrowtopiaWorld.TombRobberExtra = (function() {
    function TombRobberExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    TombRobberExtra.prototype._read = function() {
    }

    return TombRobberExtra;
  })();

  var TrainingPortExtra = GrowtopiaWorld.TrainingPortExtra = (function() {
    function TrainingPortExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    TrainingPortExtra.prototype._read = function() {
      this.fishLb = this._io.readU4le();
      this.status = this._io.readU2le();
      this.itemId = this._io.readU4le();
      this.totalExp = this._io.readU4le();
      this.unk1 = this._io.readBytes(8);
      this.fishLevel = this._io.readU4le();
      this.unk2 = this._io.readU4le();
      this.unk3 = this._io.readBytes(5);
    }

    return TrainingPortExtra;
  })();

  var UnknownExtra = GrowtopiaWorld.UnknownExtra = (function() {
    function UnknownExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    UnknownExtra.prototype._read = function() {
      this.thisIsJustToErrorOutKaitaiPls = this._io.readBytesFull();
    }

    /**
     * This type is just to error out kaitai. So if you encounter any error, 
     * please either give the world name or dump the world and submit it to me
     * (81739844+badewen@users.noreply.github.com).  
     */

    return UnknownExtra;
  })();

  var VendingMachineExtra = GrowtopiaWorld.VendingMachineExtra = (function() {
    function VendingMachineExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    VendingMachineExtra.prototype._read = function() {
      this.itemId = this._io.readU4le();
      this.price = this._io.readS4le();
    }

    return VendingMachineExtra;
  })();

  var VipEntranceExtra = GrowtopiaWorld.VipEntranceExtra = (function() {
    function VipEntranceExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    VipEntranceExtra.prototype._read = function() {
      this.unk1 = this._io.readU1();
      this.ownerUserid = this._io.readU4le();
      this.numAllowedUserids = this._io.readU4le();
      this.allowedUserids = [];
      for (var i = 0; i < this.numAllowedUserids; i++) {
        this.allowedUserids.push(this._io.readU4le());
      }
    }

    return VipEntranceExtra;
  })();

  var WeatherMachine1Extra = GrowtopiaWorld.WeatherMachine1Extra = (function() {
    function WeatherMachine1Extra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    WeatherMachine1Extra.prototype._read = function() {
      this.settings = this._io.readBytes(4);
    }

    return WeatherMachine1Extra;
  })();

  var WeatherMachine2Extra = GrowtopiaWorld.WeatherMachine2Extra = (function() {
    function WeatherMachine2Extra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    WeatherMachine2Extra.prototype._read = function() {
      this.itemId = this._io.readU4le();
      this.gravity = this._io.readU4le();
      this.flag = this._io.readU1();
    }

    return WeatherMachine2Extra;
  })();

  var WorldObject = GrowtopiaWorld.WorldObject = (function() {
    function WorldObject(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    WorldObject.prototype._read = function() {
      this.itemId = this._io.readU2le();
      this.x = this._io.readF4le();
      this.y = this._io.readF4le();
      this.amount = this._io.readU1();
      this.flag = this._io.readU1();
      this.uid = this._io.readU4le();
    }

    return WorldObject;
  })();

  var WorldTile = GrowtopiaWorld.WorldTile = (function() {
    function WorldTile(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    WorldTile.prototype._read = function() {
      this.fg = this._io.readU2le();
      this.bg = this._io.readU2le();
      if ( ((this.fg > 25000) || (this.bg > 25000)) ) {
        this.invalidTileFgBgKaitaiCrasher = this._io.readBytesFull();
      }
      this.parentBlockIndex = this._io.readU2le();
      this.flag = this._io.readU2le();
      if ((this.flag & 2) == 2) {
        this.parentLock = this._io.readU2le();
      }
      if ((this.flag & 1) == 1) {
        this.extraDataType = this._io.readU1();
      }
      if ((this.flag & 1) == 1) {
        switch (this.extraDataType) {
        case 1:
          this.tileExtra = new DoorExtra(this._io, this, this._root);
          break;
        case 10:
          this.tileExtra = new AchievementBlockExtra(this._io, this, this._root);
          break;
        case 11:
          this.tileExtra = new HeartMonitorExtra(this._io, this, this._root);
          break;
        case 14:
          this.tileExtra = new MannequinExtra(this._io, this, this._root);
          break;
        case 15:
          this.tileExtra = new MagicEggExtra(this._io, this, this._root);
          break;
        case 16:
          this.tileExtra = new GameGraveExtra(this._io, this, this._root);
          break;
        case 17:
          this.tileExtra = new GameGeneratorExtra(this._io, this, this._root);
          break;
        case 18:
          this.tileExtra = new XenoniteExtra(this._io, this, this._root);
          break;
        case 19:
          this.tileExtra = new PhoneBoothExtra(this._io, this, this._root);
          break;
        case 2:
          this.tileExtra = new SignExtra(this._io, this, this._root);
          break;
        case 20:
          this.tileExtra = new CrystalExtra(this._io, this, this._root);
          break;
        case 21:
          this.tileExtra = new CrimeInProgressExtra(this._io, this, this._root);
          break;
        case 22:
          this.tileExtra = new SpotlightExtra(this._io, this, this._root);
          break;
        case 23:
          this.tileExtra = new DisplayBlockExtra(this._io, this, this._root);
          break;
        case 24:
          this.tileExtra = new VendingMachineExtra(this._io, this, this._root);
          break;
        case 25:
          this.tileExtra = new FishTankPortExtra(this._io, this, this._root);
          break;
        case 26:
          this.tileExtra = new SolarCollectorExtra(this._io, this, this._root);
          break;
        case 27:
          this.tileExtra = new ForgeExtra(this._io, this, this._root);
          break;
        case 28:
          this.tileExtra = new GivingTreeExtra(this._io, this, this._root);
          break;
        case 3:
          this.tileExtra = new LockExtra(this._io, this, this._root);
          break;
        case 30:
          this.tileExtra = new SteamOrganExtra(this._io, this, this._root);
          break;
        case 31:
          this.tileExtra = new SilkWormExtra(this._io, this, this._root);
          break;
        case 32:
          this.tileExtra = new SewingMachineExtra(this._io, this, this._root);
          break;
        case 33:
          this.tileExtra = new CountryFlagExtra(this._io, this, this._root);
          break;
        case 34:
          this.tileExtra = new LobsterTrapExtra(this._io, this, this._root);
          break;
        case 35:
          this.tileExtra = new PaintingEaselExtra(this._io, this, this._root);
          break;
        case 36:
          this.tileExtra = new PetBattleCageExtra(this._io, this, this._root);
          break;
        case 37:
          this.tileExtra = new PetTrainerExtra(this._io, this, this._root);
          break;
        case 38:
          this.tileExtra = new SteamEngineExtra(this._io, this, this._root);
          break;
        case 39:
          this.tileExtra = new LockBotExtra(this._io, this, this._root);
          break;
        case 4:
          this.tileExtra = new SeedExtra(this._io, this, this._root);
          break;
        case 40:
          this.tileExtra = new WeatherMachine1Extra(this._io, this, this._root);
          break;
        case 41:
          this.tileExtra = new SpiritStorageUnitExtra(this._io, this, this._root);
          break;
        case 42:
          this.tileExtra = new DataBedrockExtra(this._io, this, this._root);
          break;
        case 43:
          this.tileExtra = new ShelfExtra(this._io, this, this._root);
          break;
        case 44:
          this.tileExtra = new VipEntranceExtra(this._io, this, this._root);
          break;
        case 45:
          this.tileExtra = new ChallengeTimerExtra(this._io, this, this._root);
          break;
        case 47:
          this.tileExtra = new FishWallMountExtra(this._io, this, this._root);
          break;
        case 48:
          this.tileExtra = new PortraitExtra(this._io, this, this._root);
          break;
        case 49:
          this.tileExtra = new WeatherMachine2Extra(this._io, this, this._root);
          break;
        case 50:
          this.tileExtra = new FossilPrepStationExtra(this._io, this, this._root);
          break;
        case 51:
          this.tileExtra = new DnaExtractorExtra(this._io, this, this._root);
          break;
        case 52:
          this.tileExtra = new HowlerExtra(this._io, this, this._root);
          break;
        case 53:
          this.tileExtra = new ChemsynthTankExtra(this._io, this, this._root);
          break;
        case 54:
          this.tileExtra = new StorageBoxXtremeExtra(this._io, this, this._root);
          break;
        case 55:
          this.tileExtra = new CookingOvenExtra(this._io, this, this._root);
          break;
        case 56:
          this.tileExtra = new AudioRackExtra(this._io, this, this._root);
          break;
        case 57:
          this.tileExtra = new GeigerChargerExtra(this._io, this, this._root);
          break;
        case 58:
          this.tileExtra = new AdventureBeginsExtra(this._io, this, this._root);
          break;
        case 59:
          this.tileExtra = new TombRobberExtra(this._io, this, this._root);
          break;
        case 60:
          this.tileExtra = new BalloonOMaticExtra(this._io, this, this._root);
          break;
        case 61:
          this.tileExtra = new TrainingPortExtra(this._io, this, this._root);
          break;
        case 62:
          this.tileExtra = new ItemSuckerExtra(this._io, this, this._root);
          break;
        case 63:
          this.tileExtra = new CybotExtra(this._io, this, this._root);
          break;
        case 65:
          this.tileExtra = new GuildExtra(this._io, this, this._root);
          break;
        case 66:
          this.tileExtra = new GrowscanExtra(this._io, this, this._root);
          break;
        case 67:
          this.tileExtra = new ContainmentFieldPowerNodeExtra(this._io, this, this._root);
          break;
        case 68:
          this.tileExtra = new SpiritBoardExtra(this._io, this, this._root);
          break;
        case 69:
          this.tileExtra = new TesseractManipulatorExtra(this._io, this, this._root);
          break;
        case 72:
          this.tileExtra = new StormyCloudExtra(this._io, this, this._root);
          break;
        case 73:
          this.tileExtra = new TemporaryPlatformExtra(this._io, this, this._root);
          break;
        case 74:
          this.tileExtra = new SafeVaultExtra(this._io, this, this._root);
          break;
        case 75:
          this.tileExtra = new AngelicCountingCloudExtra(this._io, this, this._root);
          break;
        case 77:
          this.tileExtra = new InfinityWeatherMachineExtra(this._io, this, this._root);
          break;
        case 79:
          this.tileExtra = new PineappleGuzzlerExtra(this._io, this, this._root);
          break;
        case 8:
          this.tileExtra = new DiceExtra(this._io, this, this._root);
          break;
        case 80:
          this.tileExtra = new KrakensGalaticBlockExtra(this._io, this, this._root);
          break;
        case 81:
          this.tileExtra = new FriendsEntranceExtra(this._io, this, this._root);
          break;
        case 9:
          this.tileExtra = new ProviderExtra(this._io, this, this._root);
          break;
        default:
          this.tileExtra = new UnknownExtra(this._io, this, this._root);
          break;
        }
      }
      if ( (( (((this.flag & 1) == 1) && (this.extraDataType == 36)) ) || (this.fg == 15546) || (this.fg == 14666) || (this.fg == 14962) || (this.fg == 14662)) ) {
        this.cborData = new CborData(this._io, this, this._root);
      }
    }

    /**
     * This type is just to error out kaitai. If this is 
     * encountered, then maybe there was a parsing error.
     * Please report :)
     */

    return WorldTile;
  })();

  var XenoniteExtra = GrowtopiaWorld.XenoniteExtra = (function() {
    function XenoniteExtra(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    XenoniteExtra.prototype._read = function() {
      this.unk1 = this._io.readBytes(5);
    }

    return XenoniteExtra;
  })();

  return GrowtopiaWorld;
})();
GrowtopiaWorld_.GrowtopiaWorld = GrowtopiaWorld;
});
