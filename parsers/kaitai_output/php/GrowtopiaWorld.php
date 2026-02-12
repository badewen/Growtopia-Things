<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace {
    class GrowtopiaWorld extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_version = $this->_io->readU2le();
            $this->_m_unk1 = $this->_io->readU4le();
            $this->_m_name = new \GrowtopiaWorld\GtStr($this->_io, $this, $this->_root);
            $this->_m_width = $this->_io->readU4le();
            $this->_m_height = $this->_io->readU4le();
            $this->_m_numTiles = $this->_io->readU4le();
            $this->_m_unk2 = $this->_io->readBytes(5);
            $this->_m_tiles = [];
            $n = $this->numTiles();
            for ($i = 0; $i < $n; $i++) {
                $this->_m_tiles[] = new \GrowtopiaWorld\WorldTile($this->_io, $this, $this->_root);
            }
            $this->_m_unk3 = $this->_io->readBytes(12);
            $this->_m_numObjects = $this->_io->readU4le();
            $this->_m_lastObjectUid = $this->_io->readU4le();
            $this->_m_objects = [];
            $n = $this->numObjects();
            for ($i = 0; $i < $n; $i++) {
                $this->_m_objects[] = new \GrowtopiaWorld\WorldObject($this->_io, $this, $this->_root);
            }
        }
        protected $_m_version;
        protected $_m_unk1;
        protected $_m_name;
        protected $_m_width;
        protected $_m_height;
        protected $_m_numTiles;
        protected $_m_unk2;
        protected $_m_tiles;
        protected $_m_unk3;
        protected $_m_numObjects;
        protected $_m_lastObjectUid;
        protected $_m_objects;
        public function version() { return $this->_m_version; }
        public function unk1() { return $this->_m_unk1; }
        public function name() { return $this->_m_name; }
        public function width() { return $this->_m_width; }
        public function height() { return $this->_m_height; }
        public function numTiles() { return $this->_m_numTiles; }
        public function unk2() { return $this->_m_unk2; }
        public function tiles() { return $this->_m_tiles; }
        public function unk3() { return $this->_m_unk3; }
        public function numObjects() { return $this->_m_numObjects; }
        public function lastObjectUid() { return $this->_m_lastObjectUid; }
        public function objects() { return $this->_m_objects; }
    }
}

namespace GrowtopiaWorld {
    class ARGB extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\SilkWormExtra $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_a = $this->_io->readU1();
            $this->_m_r = $this->_io->readU1();
            $this->_m_g = $this->_io->readU1();
            $this->_m_b = $this->_io->readU1();
        }
        protected $_m_a;
        protected $_m_r;
        protected $_m_g;
        protected $_m_b;
        public function a() { return $this->_m_a; }
        public function r() { return $this->_m_r; }
        public function g() { return $this->_m_g; }
        public function b() { return $this->_m_b; }
    }
}

namespace GrowtopiaWorld {
    class AchievementBlockExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_unk1 = $this->_io->readU4le();
            $this->_m_achievementId = $this->_io->readU1();
        }
        protected $_m_unk1;
        protected $_m_achievementId;
        public function unk1() { return $this->_m_unk1; }
        public function achievementId() { return $this->_m_achievementId; }
    }
}

namespace GrowtopiaWorld {
    class AdventureBeginsExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
        }
    }
}

namespace GrowtopiaWorld {
    class AngelicCountingCloudExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_state = $this->_io->readU4le();
            $this->_m_unk1 = $this->_io->readU2le();
            if ($this->state() == \GrowtopiaWorld\AngelicCountingCloudExtra\States::DONE_RAFFLING) {
                $this->_m_asciiCode = $this->_io->readU1();
            }
        }
        protected $_m_state;
        protected $_m_unk1;
        protected $_m_asciiCode;
        public function state() { return $this->_m_state; }
        public function unk1() { return $this->_m_unk1; }
        public function asciiCode() { return $this->_m_asciiCode; }
    }
}

namespace GrowtopiaWorld\AngelicCountingCloudExtra {
    class States {
        const RAFFLING = 1;
        const DONE_RAFFLING = 2;

        private const _VALUES = [1 => true, 2 => true];

        public static function isDefined(int $v): bool {
            return isset(self::_VALUES[$v]);
        }
    }
}

namespace GrowtopiaWorld {
    class AudioRackExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_note = new \GrowtopiaWorld\GtStr($this->_io, $this, $this->_root);
            $this->_m_volume = $this->_io->readU4le();
        }
        protected $_m_note;
        protected $_m_volume;
        public function note() { return $this->_m_note; }
        public function volume() { return $this->_m_volume; }
    }
}

namespace GrowtopiaWorld {
    class BalloonOMaticExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_totalRarity = $this->_io->readU4le();
            $this->_m_teamType = $this->_io->readU1();
        }
        protected $_m_totalRarity;
        protected $_m_teamType;
        public function totalRarity() { return $this->_m_totalRarity; }
        public function teamType() { return $this->_m_teamType; }
    }
}

namespace GrowtopiaWorld {
    class CborData extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_lenData = $this->_io->readU4le();
            $this->_m_data = $this->_io->readBytes($this->lenData());
        }
        protected $_m_lenData;
        protected $_m_data;
        public function lenData() { return $this->_m_lenData; }
        public function data() { return $this->_m_data; }
    }
}

namespace GrowtopiaWorld {
    class ChallengeTimerExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
        }
    }
}

namespace GrowtopiaWorld {
    class ChemsynthTankExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_currentChemId = $this->_io->readU4le();
            $this->_m_supposedChemId = $this->_io->readU4le();
        }
        protected $_m_currentChemId;
        protected $_m_supposedChemId;
        public function currentChemId() { return $this->_m_currentChemId; }
        public function supposedChemId() { return $this->_m_supposedChemId; }
    }
}

namespace GrowtopiaWorld {
    class ContainmentFieldPowerNodeExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_timeMs = $this->_io->readU4le();
            $this->_m_numLinkedNodes = $this->_io->readU4le();
            $this->_m_linkedNodes = [];
            $n = $this->numLinkedNodes();
            for ($i = 0; $i < $n; $i++) {
                $this->_m_linkedNodes[] = $this->_io->readU4le();
            }
        }
        protected $_m_timeMs;
        protected $_m_numLinkedNodes;
        protected $_m_linkedNodes;
        public function timeMs() { return $this->_m_timeMs; }
        public function numLinkedNodes() { return $this->_m_numLinkedNodes; }
        public function linkedNodes() { return $this->_m_linkedNodes; }
    }
}

namespace GrowtopiaWorld {
    class CookingOvenExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_tempLevel = $this->_io->readU4le();
            $this->_m_ingredientListSize = $this->_io->readU4le();
            $this->_m_ingredients = [];
            $n = intval($this->ingredientListSize() / 2);
            for ($i = 0; $i < $n; $i++) {
                $this->_m_ingredients[] = new \GrowtopiaWorld\CookingOvenExtra\Ingredient($this->_io, $this, $this->_root);
            }
            $this->_m_unk1 = $this->_io->readU4le();
            $this->_m_unk2 = $this->_io->readU4le();
            $this->_m_unk3 = $this->_io->readU4le();
        }
        protected $_m_tempLevel;
        protected $_m_ingredientListSize;
        protected $_m_ingredients;
        protected $_m_unk1;
        protected $_m_unk2;
        protected $_m_unk3;
        public function tempLevel() { return $this->_m_tempLevel; }
        public function ingredientListSize() { return $this->_m_ingredientListSize; }
        public function ingredients() { return $this->_m_ingredients; }
        public function unk1() { return $this->_m_unk1; }
        public function unk2() { return $this->_m_unk2; }
        public function unk3() { return $this->_m_unk3; }
    }
}

namespace GrowtopiaWorld\CookingOvenExtra {
    class Ingredient extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\CookingOvenExtra $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_itemId = $this->_io->readU4le();
            $this->_m_timeAdded = $this->_io->readU4le();
        }
        protected $_m_itemId;
        protected $_m_timeAdded;
        public function itemId() { return $this->_m_itemId; }
        public function timeAdded() { return $this->_m_timeAdded; }
    }
}

namespace GrowtopiaWorld {
    class CountryFlagExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            if ($this->_parent()->fg() == 3394) {
                $this->_m_country = new \GrowtopiaWorld\GtStr($this->_io, $this, $this->_root);
            }
        }
        protected $_m_country;
        public function country() { return $this->_m_country; }
    }
}

namespace GrowtopiaWorld {
    class CrimeInProgressExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_crimeName = new \GrowtopiaWorld\GtStr($this->_io, $this, $this->_root);
            $this->_m_crimeIndex = $this->_io->readU4le();
            $this->_m_unk1 = $this->_io->readU1();
        }
        protected $_m_crimeName;
        protected $_m_crimeIndex;
        protected $_m_unk1;
        public function crimeName() { return $this->_m_crimeName; }
        public function crimeIndex() { return $this->_m_crimeIndex; }
        public function unk1() { return $this->_m_unk1; }
    }
}

namespace GrowtopiaWorld {
    class CrystalExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_numCrystals = $this->_io->readU2le();
            $this->_m_crystals = [];
            $n = $this->numCrystals();
            for ($i = 0; $i < $n; $i++) {
                $this->_m_crystals[] = $this->_io->readU1();
            }
        }
        protected $_m_numCrystals;
        protected $_m_crystals;
        public function numCrystals() { return $this->_m_numCrystals; }
        public function crystals() { return $this->_m_crystals; }
    }
}

namespace GrowtopiaWorld {
    class CybotExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_numCommands = $this->_io->readU4le();
            $this->_m_commands = [];
            $n = $this->numCommands();
            for ($i = 0; $i < $n; $i++) {
                $this->_m_commands[] = new \GrowtopiaWorld\CybotExtra\Command($this->_io, $this, $this->_root);
            }
            $this->_m_timer = $this->_io->readU4le();
            $this->_m_isActivated = $this->_io->readU4le();
        }
        protected $_m_numCommands;
        protected $_m_commands;
        protected $_m_timer;
        protected $_m_isActivated;
        public function numCommands() { return $this->_m_numCommands; }
        public function commands() { return $this->_m_commands; }
        public function timer() { return $this->_m_timer; }
        public function isActivated() { return $this->_m_isActivated; }
    }
}

namespace GrowtopiaWorld\CybotExtra {
    class Command extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\CybotExtra $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_commandId = $this->_io->readU4le();
            $this->_m_isCommandUsed = $this->_io->readU4le();
            $this->_m_unk1 = $this->_io->readBytes(7);
        }
        protected $_m_commandId;
        protected $_m_isCommandUsed;
        protected $_m_unk1;
        public function commandId() { return $this->_m_commandId; }
        public function isCommandUsed() { return $this->_m_isCommandUsed; }
        public function unk1() { return $this->_m_unk1; }
    }
}

namespace GrowtopiaWorld {
    class DataBedrockExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_unk1 = $this->_io->readBytes(17);
            $this->_m_pad1 = $this->_io->readBytes(4);
        }
        protected $_m_unk1;
        protected $_m_pad1;
        public function unk1() { return $this->_m_unk1; }
        public function pad1() { return $this->_m_pad1; }
    }
}

namespace GrowtopiaWorld {
    class DiceExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_symbol = $this->_io->readU1();
        }
        protected $_m_symbol;
        public function symbol() { return $this->_m_symbol; }
    }
}

namespace GrowtopiaWorld {
    class DisplayBlockExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_itemId = $this->_io->readU4le();
        }
        protected $_m_itemId;
        public function itemId() { return $this->_m_itemId; }
    }
}

namespace GrowtopiaWorld {
    class DnaExtractorExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
        }
    }
}

namespace GrowtopiaWorld {
    class DoorExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_label = new \GrowtopiaWorld\GtStr($this->_io, $this, $this->_root);
            $this->_m_unk1 = $this->_io->readU1();
        }
        protected $_m_label;
        protected $_m_unk1;
        public function label() { return $this->_m_label; }
        public function unk1() { return $this->_m_unk1; }
    }
}

namespace GrowtopiaWorld {
    class FishTankPortExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_flags = $this->_io->readU1();
            $this->_m_fishDataLength = $this->_io->readU4le();
            $this->_m_fishes = [];
            $n = intval($this->fishDataLength() / 2);
            for ($i = 0; $i < $n; $i++) {
                $this->_m_fishes[] = new \GrowtopiaWorld\FishTankPortExtra\FishInfo($this->_io, $this, $this->_root);
            }
        }
        protected $_m_flags;
        protected $_m_fishDataLength;
        protected $_m_fishes;
        public function flags() { return $this->_m_flags; }
        public function fishDataLength() { return $this->_m_fishDataLength; }
        public function fishes() { return $this->_m_fishes; }
    }
}

namespace GrowtopiaWorld\FishTankPortExtra {
    class FishInfo extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\FishTankPortExtra $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_itemId = $this->_io->readU4le();
            $this->_m_lbs = $this->_io->readU4le();
        }
        protected $_m_itemId;
        protected $_m_lbs;
        public function itemId() { return $this->_m_itemId; }
        public function lbs() { return $this->_m_lbs; }
    }
}

namespace GrowtopiaWorld {
    class FishWallMountExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_label = new \GrowtopiaWorld\GtStr($this->_io, $this, $this->_root);
            $this->_m_itemId = $this->_io->readU4le();
            $this->_m_lbs = $this->_io->readU1();
        }
        protected $_m_label;
        protected $_m_itemId;
        protected $_m_lbs;
        public function label() { return $this->_m_label; }
        public function itemId() { return $this->_m_itemId; }
        public function lbs() { return $this->_m_lbs; }
    }
}

namespace GrowtopiaWorld {
    class ForgeExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_temperature = $this->_io->readU4le();
        }
        protected $_m_temperature;
        public function temperature() { return $this->_m_temperature; }
    }
}

namespace GrowtopiaWorld {
    class FossilPrepStationExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_unk1 = $this->_io->readU4le();
        }
        protected $_m_unk1;
        public function unk1() { return $this->_m_unk1; }
    }
}

namespace GrowtopiaWorld {
    class FriendsEntranceExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_ownerUserid = $this->_io->readU4le();
            $this->_m_unk1 = $this->_io->readBytes(2);
            $this->_m_numAllowedFriendsUserid = $this->_io->readU2le();
            $this->_m_allowedFriendsUserid = [];
            $n = $this->numAllowedFriendsUserid();
            for ($i = 0; $i < $n; $i++) {
                $this->_m_allowedFriendsUserid[] = $this->_io->readU4le();
            }
        }
        protected $_m_ownerUserid;
        protected $_m_unk1;
        protected $_m_numAllowedFriendsUserid;
        protected $_m_allowedFriendsUserid;
        public function ownerUserid() { return $this->_m_ownerUserid; }
        public function unk1() { return $this->_m_unk1; }
        public function numAllowedFriendsUserid() { return $this->_m_numAllowedFriendsUserid; }
        public function allowedFriendsUserid() { return $this->_m_allowedFriendsUserid; }
    }
}

namespace GrowtopiaWorld {
    class GameGeneratorExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
        }
    }
}

namespace GrowtopiaWorld {
    class GameGraveExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_teamId = $this->_io->readU1();
        }
        protected $_m_teamId;
        public function teamId() { return $this->_m_teamId; }
    }
}

namespace GrowtopiaWorld {
    class GeigerChargerExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_unk1 = $this->_io->readBytes(4);
        }
        protected $_m_unk1;
        public function unk1() { return $this->_m_unk1; }
    }
}

namespace GrowtopiaWorld {
    class GivingTreeExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_harvested = $this->_io->readU1();
            $this->_m_age = $this->_io->readU2le();
            $this->_m_unk1 = $this->_io->readU2le();
            $this->_m_decorationPercentage = $this->_io->readU1();
        }
        protected $_m_harvested;
        protected $_m_age;
        protected $_m_unk1;
        protected $_m_decorationPercentage;
        public function harvested() { return $this->_m_harvested; }
        public function age() { return $this->_m_age; }
        public function unk1() { return $this->_m_unk1; }
        public function decorationPercentage() { return $this->_m_decorationPercentage; }
    }
}

namespace GrowtopiaWorld {
    class GrowscanExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_unk1 = $this->_io->readU1();
        }
        protected $_m_unk1;
        public function unk1() { return $this->_m_unk1; }
    }
}

namespace GrowtopiaWorld {
    class GtStr extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_lenData = $this->_io->readU2le();
            $this->_m_str = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytes($this->lenData()), "ASCII");
        }
        protected $_m_lenData;
        protected $_m_str;
        public function lenData() { return $this->_m_lenData; }
        public function str() { return $this->_m_str; }
    }
}

namespace GrowtopiaWorld {
    class GuildExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_unk1 = $this->_io->readBytes(17);
        }
        protected $_m_unk1;
        public function unk1() { return $this->_m_unk1; }
    }
}

namespace GrowtopiaWorld {
    class HeartMonitorExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_userId = $this->_io->readU4le();
            $this->_m_growId = new \GrowtopiaWorld\GtStr($this->_io, $this, $this->_root);
        }
        protected $_m_userId;
        protected $_m_growId;
        public function userId() { return $this->_m_userId; }
        public function growId() { return $this->_m_growId; }
    }
}

namespace GrowtopiaWorld {
    class HowlerExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
        }
    }
}

namespace GrowtopiaWorld {
    class InfinityWeatherMachineExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_intervalMins = $this->_io->readU4le();
            $this->_m_numWeatherMachines = $this->_io->readU4le();
            $this->_m_weatherMachines = [];
            $n = $this->numWeatherMachines();
            for ($i = 0; $i < $n; $i++) {
                $this->_m_weatherMachines[] = $this->_io->readU4le();
            }
        }
        protected $_m_intervalMins;
        protected $_m_numWeatherMachines;
        protected $_m_weatherMachines;
        public function intervalMins() { return $this->_m_intervalMins; }
        public function numWeatherMachines() { return $this->_m_numWeatherMachines; }
        public function weatherMachines() { return $this->_m_weatherMachines; }
    }
}

namespace GrowtopiaWorld {
    class ItemSuckerExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_itemId = $this->_io->readU4le();
            $this->_m_itemAmount = $this->_io->readU4le();
            $this->_m_flags = $this->_io->readU2le();
            $this->_m_itemLimit = $this->_io->readU4le();
        }
        protected $_m_itemId;
        protected $_m_itemAmount;
        protected $_m_flags;
        protected $_m_itemLimit;
        public function itemId() { return $this->_m_itemId; }
        public function itemAmount() { return $this->_m_itemAmount; }
        public function flags() { return $this->_m_flags; }
        public function itemLimit() { return $this->_m_itemLimit; }
    }
}

namespace GrowtopiaWorld {
    class KrakensGalaticBlockExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_patternNumber = $this->_io->readU1();
            $this->_m_unk1 = $this->_io->readBytes(4);
            $this->_m_colorRgb = $this->_io->readBytes(3);
        }
        protected $_m_patternNumber;
        protected $_m_unk1;
        protected $_m_colorRgb;
        public function patternNumber() { return $this->_m_patternNumber; }
        public function unk1() { return $this->_m_unk1; }
        public function colorRgb() { return $this->_m_colorRgb; }
    }
}

namespace GrowtopiaWorld {
    class LobsterTrapExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
        }
    }
}

namespace GrowtopiaWorld {
    class LockBotExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_timePassedSec = $this->_io->readU4le();
        }
        protected $_m_timePassedSec;
        public function timePassedSec() { return $this->_m_timePassedSec; }
    }
}

namespace GrowtopiaWorld {
    class LockExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_flag = $this->_io->readU1();
            $this->_m_ownerUserId = $this->_io->readU4le();
            $this->_m_numAuthorizedUserids = $this->_io->readU4le();
            $this->_m_authorizedUserids = [];
            $n = $this->numAuthorizedUserids();
            for ($i = 0; $i < $n; $i++) {
                $this->_m_authorizedUserids[] = $this->_io->readU4le();
            }
            $this->_m_minimumLevel = $this->_io->readU1();
            $this->_m_unk1 = $this->_io->readBytes(7);
            if ($this->_parent()->fg() == 5814) {
                $this->_m_guildLocksUnk = $this->_io->readBytes(16);
            }
        }
        protected $_m_flag;
        protected $_m_ownerUserId;
        protected $_m_numAuthorizedUserids;
        protected $_m_authorizedUserids;
        protected $_m_minimumLevel;
        protected $_m_unk1;
        protected $_m_guildLocksUnk;
        public function flag() { return $this->_m_flag; }
        public function ownerUserId() { return $this->_m_ownerUserId; }
        public function numAuthorizedUserids() { return $this->_m_numAuthorizedUserids; }
        public function authorizedUserids() { return $this->_m_authorizedUserids; }
        public function minimumLevel() { return $this->_m_minimumLevel; }
        public function unk1() { return $this->_m_unk1; }
        public function guildLocksUnk() { return $this->_m_guildLocksUnk; }
    }
}

namespace GrowtopiaWorld {
    class MagicEggExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_eggAmount = $this->_io->readU4le();
        }
        protected $_m_eggAmount;
        public function eggAmount() { return $this->_m_eggAmount; }
    }
}

namespace GrowtopiaWorld {
    class MannequinExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_label = new \GrowtopiaWorld\GtStr($this->_io, $this, $this->_root);
            $this->_m_unk1 = $this->_io->readU1();
            $this->_m_unk2 = $this->_io->readU2le();
            $this->_m_unk3 = $this->_io->readU2le();
            $this->_m_hat = $this->_io->readU2le();
            $this->_m_shirt = $this->_io->readU2le();
            $this->_m_pants = $this->_io->readU2le();
            $this->_m_boots = $this->_io->readU2le();
            $this->_m_face = $this->_io->readU2le();
            $this->_m_hand = $this->_io->readU2le();
            $this->_m_back = $this->_io->readU2le();
            $this->_m_hair = $this->_io->readU2le();
            $this->_m_neck = $this->_io->readU2le();
        }
        protected $_m_label;
        protected $_m_unk1;
        protected $_m_unk2;
        protected $_m_unk3;
        protected $_m_hat;
        protected $_m_shirt;
        protected $_m_pants;
        protected $_m_boots;
        protected $_m_face;
        protected $_m_hand;
        protected $_m_back;
        protected $_m_hair;
        protected $_m_neck;
        public function label() { return $this->_m_label; }
        public function unk1() { return $this->_m_unk1; }
        public function unk2() { return $this->_m_unk2; }
        public function unk3() { return $this->_m_unk3; }
        public function hat() { return $this->_m_hat; }
        public function shirt() { return $this->_m_shirt; }
        public function pants() { return $this->_m_pants; }
        public function boots() { return $this->_m_boots; }
        public function face() { return $this->_m_face; }
        public function hand() { return $this->_m_hand; }
        public function back() { return $this->_m_back; }
        public function hair() { return $this->_m_hair; }
        public function neck() { return $this->_m_neck; }
    }
}

namespace GrowtopiaWorld {
    class PaintingEaselExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_itemId = $this->_io->readU4le();
            $this->_m_label = new \GrowtopiaWorld\GtStr($this->_io, $this, $this->_root);
        }
        protected $_m_itemId;
        protected $_m_label;
        public function itemId() { return $this->_m_itemId; }
        public function label() { return $this->_m_label; }
    }
}

namespace GrowtopiaWorld {
    class PetBattleCageExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_label = new \GrowtopiaWorld\GtStr($this->_io, $this, $this->_root);
            $this->_m_basePet = $this->_io->readU4le();
            $this->_m_combinedPet1 = $this->_io->readU4le();
            $this->_m_combinedPet2 = $this->_io->readU4le();
        }
        protected $_m_label;
        protected $_m_basePet;
        protected $_m_combinedPet1;
        protected $_m_combinedPet2;
        public function label() { return $this->_m_label; }
        public function basePet() { return $this->_m_basePet; }
        public function combinedPet1() { return $this->_m_combinedPet1; }
        public function combinedPet2() { return $this->_m_combinedPet2; }
    }
}

namespace GrowtopiaWorld {
    class PetTrainerExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_name = new \GrowtopiaWorld\GtStr($this->_io, $this, $this->_root);
            $this->_m_numPets = $this->_io->readU4le();
            $this->_m_unk1 = $this->_io->readU4le();
            $this->_m_pets = [];
            $n = $this->numPets();
            for ($i = 0; $i < $n; $i++) {
                $this->_m_pets[] = $this->_io->readU4le();
            }
        }
        protected $_m_name;
        protected $_m_numPets;
        protected $_m_unk1;
        protected $_m_pets;
        public function name() { return $this->_m_name; }
        public function numPets() { return $this->_m_numPets; }
        public function unk1() { return $this->_m_unk1; }
        public function pets() { return $this->_m_pets; }
    }
}

namespace GrowtopiaWorld {
    class PhoneBoothExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_hat = $this->_io->readU2le();
            $this->_m_shirt = $this->_io->readU2le();
            $this->_m_pants = $this->_io->readU2le();
            $this->_m_shoes = $this->_io->readU2le();
            $this->_m_face = $this->_io->readU2le();
            $this->_m_hand = $this->_io->readU2le();
            $this->_m_back = $this->_io->readU2le();
            $this->_m_hair = $this->_io->readU2le();
            $this->_m_neck = $this->_io->readU2le();
        }
        protected $_m_hat;
        protected $_m_shirt;
        protected $_m_pants;
        protected $_m_shoes;
        protected $_m_face;
        protected $_m_hand;
        protected $_m_back;
        protected $_m_hair;
        protected $_m_neck;
        public function hat() { return $this->_m_hat; }
        public function shirt() { return $this->_m_shirt; }
        public function pants() { return $this->_m_pants; }
        public function shoes() { return $this->_m_shoes; }
        public function face() { return $this->_m_face; }
        public function hand() { return $this->_m_hand; }
        public function back() { return $this->_m_back; }
        public function hair() { return $this->_m_hair; }
        public function neck() { return $this->_m_neck; }
    }
}

namespace GrowtopiaWorld {
    class PineappleGuzzlerExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_pineappleFed = $this->_io->readU4le();
        }
        protected $_m_pineappleFed;
        public function pineappleFed() { return $this->_m_pineappleFed; }
    }
}

namespace GrowtopiaWorld {
    class PortraitExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_label = new \GrowtopiaWorld\GtStr($this->_io, $this, $this->_root);
            $this->_m_unk1 = $this->_io->readU4le();
            $this->_m_unk2 = $this->_io->readU4le();
            $this->_m_unk3 = $this->_io->readBytes(5);
            $this->_m_unk4 = $this->_io->readU1();
            $this->_m_unk5 = $this->_io->readU2le();
            $this->_m_face = $this->_io->readU2le();
            $this->_m_hat = $this->_io->readU2le();
            $this->_m_hair = $this->_io->readU2le();
            $this->_m_unk6 = $this->_io->readU4le();
            if ($this->hat() == 12958) {
                $this->_m_infinityCrownData = new \GrowtopiaWorld\GtStr($this->_io, $this, $this->_root);
            }
        }
        protected $_m_label;
        protected $_m_unk1;
        protected $_m_unk2;
        protected $_m_unk3;
        protected $_m_unk4;
        protected $_m_unk5;
        protected $_m_face;
        protected $_m_hat;
        protected $_m_hair;
        protected $_m_unk6;
        protected $_m_infinityCrownData;
        public function label() { return $this->_m_label; }
        public function unk1() { return $this->_m_unk1; }
        public function unk2() { return $this->_m_unk2; }
        public function unk3() { return $this->_m_unk3; }
        public function unk4() { return $this->_m_unk4; }
        public function unk5() { return $this->_m_unk5; }
        public function face() { return $this->_m_face; }
        public function hat() { return $this->_m_hat; }
        public function hair() { return $this->_m_hair; }
        public function unk6() { return $this->_m_unk6; }
        public function infinityCrownData() { return $this->_m_infinityCrownData; }
    }
}

namespace GrowtopiaWorld {
    class ProviderExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_growth = $this->_io->readU4le();
            if ($this->_parent()->fg() == 10656) {
                $this->_m_pad1 = $this->_io->readBytes(4);
            }
        }
        protected $_m_growth;
        protected $_m_pad1;
        public function growth() { return $this->_m_growth; }
        public function pad1() { return $this->_m_pad1; }
    }
}

namespace GrowtopiaWorld {
    class SafeVaultExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
        }
    }
}

namespace GrowtopiaWorld {
    class SeedExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_age = $this->_io->readU4le();
            $this->_m_fruitCount = $this->_io->readU1();
        }
        protected $_m_age;
        protected $_m_fruitCount;
        public function age() { return $this->_m_age; }
        public function fruitCount() { return $this->_m_fruitCount; }
    }
}

namespace GrowtopiaWorld {
    class SewingMachineExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_numBoltIds = $this->_io->readU4le();
            $this->_m_boltIds = [];
            $n = $this->numBoltIds();
            for ($i = 0; $i < $n; $i++) {
                $this->_m_boltIds[] = $this->_io->readU4le();
            }
        }
        protected $_m_numBoltIds;
        protected $_m_boltIds;
        public function numBoltIds() { return $this->_m_numBoltIds; }
        public function boltIds() { return $this->_m_boltIds; }
    }
}

namespace GrowtopiaWorld {
    class ShelfExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_topLeftItemId = $this->_io->readU4le();
            $this->_m_topRightItemId = $this->_io->readU4le();
            $this->_m_bottomLeftItemId = $this->_io->readU4le();
            $this->_m_bottomRightItemId = $this->_io->readU4le();
        }
        protected $_m_topLeftItemId;
        protected $_m_topRightItemId;
        protected $_m_bottomLeftItemId;
        protected $_m_bottomRightItemId;
        public function topLeftItemId() { return $this->_m_topLeftItemId; }
        public function topRightItemId() { return $this->_m_topRightItemId; }
        public function bottomLeftItemId() { return $this->_m_bottomLeftItemId; }
        public function bottomRightItemId() { return $this->_m_bottomRightItemId; }
    }
}

namespace GrowtopiaWorld {
    class SignExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_label = new \GrowtopiaWorld\GtStr($this->_io, $this, $this->_root);
            $this->_m_pad1 = $this->_io->readBytes(4);
        }
        protected $_m_label;
        protected $_m_pad1;
        public function label() { return $this->_m_label; }
        public function pad1() { return $this->_m_pad1; }
    }
}

namespace GrowtopiaWorld {
    class SilkWormExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_flags = $this->_io->readU1();
            $this->_m_name = new \GrowtopiaWorld\GtStr($this->_io, $this, $this->_root);
            $this->_m_ageSec = $this->_io->readU4le();
            $this->_m_unk1 = $this->_io->readU4le();
            $this->_m_unk2 = $this->_io->readU4le();
            $this->_m_canBeFed = $this->_io->readU1();
            $this->_m_foodSaturation = $this->_io->readU4le();
            $this->_m_waterSaturation = $this->_io->readU4le();
            $this->_m_colorArgb = new \GrowtopiaWorld\ARGB($this->_io, $this, $this->_root);
            $this->_m_sickDuration = $this->_io->readU4le();
        }
        protected $_m_flags;
        protected $_m_name;
        protected $_m_ageSec;
        protected $_m_unk1;
        protected $_m_unk2;
        protected $_m_canBeFed;
        protected $_m_foodSaturation;
        protected $_m_waterSaturation;
        protected $_m_colorArgb;
        protected $_m_sickDuration;
        public function flags() { return $this->_m_flags; }
        public function name() { return $this->_m_name; }
        public function ageSec() { return $this->_m_ageSec; }
        public function unk1() { return $this->_m_unk1; }
        public function unk2() { return $this->_m_unk2; }
        public function canBeFed() { return $this->_m_canBeFed; }
        public function foodSaturation() { return $this->_m_foodSaturation; }
        public function waterSaturation() { return $this->_m_waterSaturation; }
        public function colorArgb() { return $this->_m_colorArgb; }
        public function sickDuration() { return $this->_m_sickDuration; }
    }
}

namespace GrowtopiaWorld {
    class SolarCollectorExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_unk1 = $this->_io->readBytes(5);
        }
        protected $_m_unk1;
        public function unk1() { return $this->_m_unk1; }
    }
}

namespace GrowtopiaWorld {
    class SpiritBoardExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_playerRequired = $this->_io->readU4le();
            $this->_m_unk1 = new \GrowtopiaWorld\GtStr($this->_io, $this, $this->_root);
            $this->_m_command = new \GrowtopiaWorld\GtStr($this->_io, $this, $this->_root);
            $this->_m_numRequiredItems = $this->_io->readU4le();
            $this->_m_requiredItems = [];
            $n = $this->numRequiredItems();
            for ($i = 0; $i < $n; $i++) {
                $this->_m_requiredItems[] = $this->_io->readU4le();
            }
        }
        protected $_m_playerRequired;
        protected $_m_unk1;
        protected $_m_command;
        protected $_m_numRequiredItems;
        protected $_m_requiredItems;
        public function playerRequired() { return $this->_m_playerRequired; }
        public function unk1() { return $this->_m_unk1; }
        public function command() { return $this->_m_command; }
        public function numRequiredItems() { return $this->_m_numRequiredItems; }
        public function requiredItems() { return $this->_m_requiredItems; }
    }
}

namespace GrowtopiaWorld {
    class SpiritStorageUnitExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_ghostJarCount = $this->_io->readU4le();
        }
        protected $_m_ghostJarCount;
        public function ghostJarCount() { return $this->_m_ghostJarCount; }
    }
}

namespace GrowtopiaWorld {
    class SpotlightExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
        }
    }
}

namespace GrowtopiaWorld {
    class SteamEngineExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_temperature = $this->_io->readU4le();
        }
        protected $_m_temperature;
        public function temperature() { return $this->_m_temperature; }
    }
}

namespace GrowtopiaWorld {
    class SteamOrganExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_instrumentType = $this->_io->readU1();
            $this->_m_note = $this->_io->readU4le();
        }
        protected $_m_instrumentType;
        protected $_m_note;
        public function instrumentType() { return $this->_m_instrumentType; }
        public function note() { return $this->_m_note; }
    }
}

namespace GrowtopiaWorld {
    class StorageBoxXtremeExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_dataLen = $this->_io->readU2le();
            $this->_m_items = [];
            $n = intval($this->dataLen() / 13);
            for ($i = 0; $i < $n; $i++) {
                $this->_m_items[] = new \GrowtopiaWorld\StorageBoxXtremeExtra\StorageItem($this->_io, $this, $this->_root);
            }
        }
        protected $_m_dataLen;
        protected $_m_items;
        public function dataLen() { return $this->_m_dataLen; }
        public function items() { return $this->_m_items; }
    }
}

namespace GrowtopiaWorld\StorageBoxXtremeExtra {
    class StorageItem extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\StorageBoxXtremeExtra $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_pad1 = $this->_io->readBytes(3);
            $this->_m_itemId = $this->_io->readU4le();
            $this->_m_pad2 = $this->_io->readBytes(2);
            $this->_m_itemAmt = $this->_io->readU4le();
        }
        protected $_m_pad1;
        protected $_m_itemId;
        protected $_m_pad2;
        protected $_m_itemAmt;
        public function pad1() { return $this->_m_pad1; }
        public function itemId() { return $this->_m_itemId; }
        public function pad2() { return $this->_m_pad2; }
        public function itemAmt() { return $this->_m_itemAmt; }
    }
}

namespace GrowtopiaWorld {
    class StormyCloudExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_stingDuration = $this->_io->readU4le();
            $this->_m_isSolid = $this->_io->readU4le();
            $this->_m_nonSolidDuration = $this->_io->readU4le();
        }
        protected $_m_stingDuration;
        protected $_m_isSolid;
        protected $_m_nonSolidDuration;
        public function stingDuration() { return $this->_m_stingDuration; }
        public function isSolid() { return $this->_m_isSolid; }
        public function nonSolidDuration() { return $this->_m_nonSolidDuration; }
    }
}

namespace GrowtopiaWorld {
    class TemporaryPlatformExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_unk1 = $this->_io->readU4le();
        }
        protected $_m_unk1;
        public function unk1() { return $this->_m_unk1; }
    }
}

namespace GrowtopiaWorld {
    class TesseractManipulatorExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_gemsLeft = $this->_io->readU4le();
            $this->_m_nextUpdateMs = $this->_io->readU4le();
            $this->_m_itemId = $this->_io->readU4le();
            $this->_m_enabled = $this->_io->readU4le();
        }
        protected $_m_gemsLeft;
        protected $_m_nextUpdateMs;
        protected $_m_itemId;
        protected $_m_enabled;
        public function gemsLeft() { return $this->_m_gemsLeft; }
        public function nextUpdateMs() { return $this->_m_nextUpdateMs; }
        public function itemId() { return $this->_m_itemId; }
        public function enabled() { return $this->_m_enabled; }
    }
}

namespace GrowtopiaWorld {
    class TombRobberExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
        }
    }
}

namespace GrowtopiaWorld {
    class TrainingPortExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_fishLb = $this->_io->readU4le();
            $this->_m_status = $this->_io->readU2le();
            $this->_m_itemId = $this->_io->readU4le();
            $this->_m_totalExp = $this->_io->readU4le();
            $this->_m_unk1 = $this->_io->readBytes(8);
            $this->_m_fishLevel = $this->_io->readU4le();
            $this->_m_unk2 = $this->_io->readU4le();
            $this->_m_unk3 = $this->_io->readBytes(5);
        }
        protected $_m_fishLb;
        protected $_m_status;
        protected $_m_itemId;
        protected $_m_totalExp;
        protected $_m_unk1;
        protected $_m_fishLevel;
        protected $_m_unk2;
        protected $_m_unk3;
        public function fishLb() { return $this->_m_fishLb; }
        public function status() { return $this->_m_status; }
        public function itemId() { return $this->_m_itemId; }
        public function totalExp() { return $this->_m_totalExp; }
        public function unk1() { return $this->_m_unk1; }
        public function fishLevel() { return $this->_m_fishLevel; }
        public function unk2() { return $this->_m_unk2; }
        public function unk3() { return $this->_m_unk3; }
    }
}

namespace GrowtopiaWorld {
    class UnknownExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_thisIsJustToErrorOutKaitaiPls = $this->_io->readBytesFull();
        }
        protected $_m_thisIsJustToErrorOutKaitaiPls;

        /**
         * This type is just to error out kaitai. So if you encounter any error, 
         * please either give the world name or dump the world and submit it to me
         * (81739844+badewen@users.noreply.github.com).  
         */
        public function thisIsJustToErrorOutKaitaiPls() { return $this->_m_thisIsJustToErrorOutKaitaiPls; }
    }
}

namespace GrowtopiaWorld {
    class VendingMachineExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_itemId = $this->_io->readU4le();
            $this->_m_price = $this->_io->readS4le();
        }
        protected $_m_itemId;
        protected $_m_price;
        public function itemId() { return $this->_m_itemId; }
        public function price() { return $this->_m_price; }
    }
}

namespace GrowtopiaWorld {
    class VipEntranceExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_unk1 = $this->_io->readU1();
            $this->_m_ownerUserid = $this->_io->readU4le();
            $this->_m_numAllowedUserids = $this->_io->readU4le();
            $this->_m_allowedUserids = [];
            $n = $this->numAllowedUserids();
            for ($i = 0; $i < $n; $i++) {
                $this->_m_allowedUserids[] = $this->_io->readU4le();
            }
        }
        protected $_m_unk1;
        protected $_m_ownerUserid;
        protected $_m_numAllowedUserids;
        protected $_m_allowedUserids;
        public function unk1() { return $this->_m_unk1; }
        public function ownerUserid() { return $this->_m_ownerUserid; }
        public function numAllowedUserids() { return $this->_m_numAllowedUserids; }
        public function allowedUserids() { return $this->_m_allowedUserids; }
    }
}

namespace GrowtopiaWorld {
    class WeatherMachine1Extra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_settings = $this->_io->readBytes(4);
        }
        protected $_m_settings;
        public function settings() { return $this->_m_settings; }
    }
}

namespace GrowtopiaWorld {
    class WeatherMachine2Extra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_itemId = $this->_io->readU4le();
            $this->_m_gravity = $this->_io->readU4le();
            $this->_m_flag = $this->_io->readU1();
        }
        protected $_m_itemId;
        protected $_m_gravity;
        protected $_m_flag;
        public function itemId() { return $this->_m_itemId; }
        public function gravity() { return $this->_m_gravity; }
        public function flag() { return $this->_m_flag; }
    }
}

namespace GrowtopiaWorld {
    class WorldObject extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_itemId = $this->_io->readU2le();
            $this->_m_x = $this->_io->readF4le();
            $this->_m_y = $this->_io->readF4le();
            $this->_m_amount = $this->_io->readU1();
            $this->_m_flag = $this->_io->readU1();
            $this->_m_uid = $this->_io->readU4le();
        }
        protected $_m_itemId;
        protected $_m_x;
        protected $_m_y;
        protected $_m_amount;
        protected $_m_flag;
        protected $_m_uid;
        public function itemId() { return $this->_m_itemId; }
        public function x() { return $this->_m_x; }
        public function y() { return $this->_m_y; }
        public function amount() { return $this->_m_amount; }
        public function flag() { return $this->_m_flag; }
        public function uid() { return $this->_m_uid; }
    }
}

namespace GrowtopiaWorld {
    class WorldTile extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_fg = $this->_io->readU2le();
            $this->_m_bg = $this->_io->readU2le();
            if ( (($this->fg() > 25000) || ($this->bg() > 25000)) ) {
                $this->_m_invalidTileFgBgKaitaiCrasher = $this->_io->readBytesFull();
            }
            $this->_m_parentBlockIndex = $this->_io->readU2le();
            $this->_m_flag = $this->_io->readU2le();
            if (($this->flag() & 2) == 2) {
                $this->_m_parentLock = $this->_io->readU2le();
            }
            if (($this->flag() & 1) == 1) {
                $this->_m_extraDataType = $this->_io->readU1();
            }
            if (($this->flag() & 1) == 1) {
                switch ($this->extraDataType()) {
                    case 1:
                        $this->_m_tileExtra = new \GrowtopiaWorld\DoorExtra($this->_io, $this, $this->_root);
                        break;
                    case 10:
                        $this->_m_tileExtra = new \GrowtopiaWorld\AchievementBlockExtra($this->_io, $this, $this->_root);
                        break;
                    case 11:
                        $this->_m_tileExtra = new \GrowtopiaWorld\HeartMonitorExtra($this->_io, $this, $this->_root);
                        break;
                    case 14:
                        $this->_m_tileExtra = new \GrowtopiaWorld\MannequinExtra($this->_io, $this, $this->_root);
                        break;
                    case 15:
                        $this->_m_tileExtra = new \GrowtopiaWorld\MagicEggExtra($this->_io, $this, $this->_root);
                        break;
                    case 16:
                        $this->_m_tileExtra = new \GrowtopiaWorld\GameGraveExtra($this->_io, $this, $this->_root);
                        break;
                    case 17:
                        $this->_m_tileExtra = new \GrowtopiaWorld\GameGeneratorExtra($this->_io, $this, $this->_root);
                        break;
                    case 18:
                        $this->_m_tileExtra = new \GrowtopiaWorld\XenoniteExtra($this->_io, $this, $this->_root);
                        break;
                    case 19:
                        $this->_m_tileExtra = new \GrowtopiaWorld\PhoneBoothExtra($this->_io, $this, $this->_root);
                        break;
                    case 2:
                        $this->_m_tileExtra = new \GrowtopiaWorld\SignExtra($this->_io, $this, $this->_root);
                        break;
                    case 20:
                        $this->_m_tileExtra = new \GrowtopiaWorld\CrystalExtra($this->_io, $this, $this->_root);
                        break;
                    case 21:
                        $this->_m_tileExtra = new \GrowtopiaWorld\CrimeInProgressExtra($this->_io, $this, $this->_root);
                        break;
                    case 22:
                        $this->_m_tileExtra = new \GrowtopiaWorld\SpotlightExtra($this->_io, $this, $this->_root);
                        break;
                    case 23:
                        $this->_m_tileExtra = new \GrowtopiaWorld\DisplayBlockExtra($this->_io, $this, $this->_root);
                        break;
                    case 24:
                        $this->_m_tileExtra = new \GrowtopiaWorld\VendingMachineExtra($this->_io, $this, $this->_root);
                        break;
                    case 25:
                        $this->_m_tileExtra = new \GrowtopiaWorld\FishTankPortExtra($this->_io, $this, $this->_root);
                        break;
                    case 26:
                        $this->_m_tileExtra = new \GrowtopiaWorld\SolarCollectorExtra($this->_io, $this, $this->_root);
                        break;
                    case 27:
                        $this->_m_tileExtra = new \GrowtopiaWorld\ForgeExtra($this->_io, $this, $this->_root);
                        break;
                    case 28:
                        $this->_m_tileExtra = new \GrowtopiaWorld\GivingTreeExtra($this->_io, $this, $this->_root);
                        break;
                    case 3:
                        $this->_m_tileExtra = new \GrowtopiaWorld\LockExtra($this->_io, $this, $this->_root);
                        break;
                    case 30:
                        $this->_m_tileExtra = new \GrowtopiaWorld\SteamOrganExtra($this->_io, $this, $this->_root);
                        break;
                    case 31:
                        $this->_m_tileExtra = new \GrowtopiaWorld\SilkWormExtra($this->_io, $this, $this->_root);
                        break;
                    case 32:
                        $this->_m_tileExtra = new \GrowtopiaWorld\SewingMachineExtra($this->_io, $this, $this->_root);
                        break;
                    case 33:
                        $this->_m_tileExtra = new \GrowtopiaWorld\CountryFlagExtra($this->_io, $this, $this->_root);
                        break;
                    case 34:
                        $this->_m_tileExtra = new \GrowtopiaWorld\LobsterTrapExtra($this->_io, $this, $this->_root);
                        break;
                    case 35:
                        $this->_m_tileExtra = new \GrowtopiaWorld\PaintingEaselExtra($this->_io, $this, $this->_root);
                        break;
                    case 36:
                        $this->_m_tileExtra = new \GrowtopiaWorld\PetBattleCageExtra($this->_io, $this, $this->_root);
                        break;
                    case 37:
                        $this->_m_tileExtra = new \GrowtopiaWorld\PetTrainerExtra($this->_io, $this, $this->_root);
                        break;
                    case 38:
                        $this->_m_tileExtra = new \GrowtopiaWorld\SteamEngineExtra($this->_io, $this, $this->_root);
                        break;
                    case 39:
                        $this->_m_tileExtra = new \GrowtopiaWorld\LockBotExtra($this->_io, $this, $this->_root);
                        break;
                    case 4:
                        $this->_m_tileExtra = new \GrowtopiaWorld\SeedExtra($this->_io, $this, $this->_root);
                        break;
                    case 40:
                        $this->_m_tileExtra = new \GrowtopiaWorld\WeatherMachine1Extra($this->_io, $this, $this->_root);
                        break;
                    case 41:
                        $this->_m_tileExtra = new \GrowtopiaWorld\SpiritStorageUnitExtra($this->_io, $this, $this->_root);
                        break;
                    case 42:
                        $this->_m_tileExtra = new \GrowtopiaWorld\DataBedrockExtra($this->_io, $this, $this->_root);
                        break;
                    case 43:
                        $this->_m_tileExtra = new \GrowtopiaWorld\ShelfExtra($this->_io, $this, $this->_root);
                        break;
                    case 44:
                        $this->_m_tileExtra = new \GrowtopiaWorld\VipEntranceExtra($this->_io, $this, $this->_root);
                        break;
                    case 45:
                        $this->_m_tileExtra = new \GrowtopiaWorld\ChallengeTimerExtra($this->_io, $this, $this->_root);
                        break;
                    case 47:
                        $this->_m_tileExtra = new \GrowtopiaWorld\FishWallMountExtra($this->_io, $this, $this->_root);
                        break;
                    case 48:
                        $this->_m_tileExtra = new \GrowtopiaWorld\PortraitExtra($this->_io, $this, $this->_root);
                        break;
                    case 49:
                        $this->_m_tileExtra = new \GrowtopiaWorld\WeatherMachine2Extra($this->_io, $this, $this->_root);
                        break;
                    case 50:
                        $this->_m_tileExtra = new \GrowtopiaWorld\FossilPrepStationExtra($this->_io, $this, $this->_root);
                        break;
                    case 51:
                        $this->_m_tileExtra = new \GrowtopiaWorld\DnaExtractorExtra($this->_io, $this, $this->_root);
                        break;
                    case 52:
                        $this->_m_tileExtra = new \GrowtopiaWorld\HowlerExtra($this->_io, $this, $this->_root);
                        break;
                    case 53:
                        $this->_m_tileExtra = new \GrowtopiaWorld\ChemsynthTankExtra($this->_io, $this, $this->_root);
                        break;
                    case 54:
                        $this->_m_tileExtra = new \GrowtopiaWorld\StorageBoxXtremeExtra($this->_io, $this, $this->_root);
                        break;
                    case 55:
                        $this->_m_tileExtra = new \GrowtopiaWorld\CookingOvenExtra($this->_io, $this, $this->_root);
                        break;
                    case 56:
                        $this->_m_tileExtra = new \GrowtopiaWorld\AudioRackExtra($this->_io, $this, $this->_root);
                        break;
                    case 57:
                        $this->_m_tileExtra = new \GrowtopiaWorld\GeigerChargerExtra($this->_io, $this, $this->_root);
                        break;
                    case 58:
                        $this->_m_tileExtra = new \GrowtopiaWorld\AdventureBeginsExtra($this->_io, $this, $this->_root);
                        break;
                    case 59:
                        $this->_m_tileExtra = new \GrowtopiaWorld\TombRobberExtra($this->_io, $this, $this->_root);
                        break;
                    case 60:
                        $this->_m_tileExtra = new \GrowtopiaWorld\BalloonOMaticExtra($this->_io, $this, $this->_root);
                        break;
                    case 61:
                        $this->_m_tileExtra = new \GrowtopiaWorld\TrainingPortExtra($this->_io, $this, $this->_root);
                        break;
                    case 62:
                        $this->_m_tileExtra = new \GrowtopiaWorld\ItemSuckerExtra($this->_io, $this, $this->_root);
                        break;
                    case 63:
                        $this->_m_tileExtra = new \GrowtopiaWorld\CybotExtra($this->_io, $this, $this->_root);
                        break;
                    case 65:
                        $this->_m_tileExtra = new \GrowtopiaWorld\GuildExtra($this->_io, $this, $this->_root);
                        break;
                    case 66:
                        $this->_m_tileExtra = new \GrowtopiaWorld\GrowscanExtra($this->_io, $this, $this->_root);
                        break;
                    case 67:
                        $this->_m_tileExtra = new \GrowtopiaWorld\ContainmentFieldPowerNodeExtra($this->_io, $this, $this->_root);
                        break;
                    case 68:
                        $this->_m_tileExtra = new \GrowtopiaWorld\SpiritBoardExtra($this->_io, $this, $this->_root);
                        break;
                    case 69:
                        $this->_m_tileExtra = new \GrowtopiaWorld\TesseractManipulatorExtra($this->_io, $this, $this->_root);
                        break;
                    case 72:
                        $this->_m_tileExtra = new \GrowtopiaWorld\StormyCloudExtra($this->_io, $this, $this->_root);
                        break;
                    case 73:
                        $this->_m_tileExtra = new \GrowtopiaWorld\TemporaryPlatformExtra($this->_io, $this, $this->_root);
                        break;
                    case 74:
                        $this->_m_tileExtra = new \GrowtopiaWorld\SafeVaultExtra($this->_io, $this, $this->_root);
                        break;
                    case 75:
                        $this->_m_tileExtra = new \GrowtopiaWorld\AngelicCountingCloudExtra($this->_io, $this, $this->_root);
                        break;
                    case 77:
                        $this->_m_tileExtra = new \GrowtopiaWorld\InfinityWeatherMachineExtra($this->_io, $this, $this->_root);
                        break;
                    case 79:
                        $this->_m_tileExtra = new \GrowtopiaWorld\PineappleGuzzlerExtra($this->_io, $this, $this->_root);
                        break;
                    case 8:
                        $this->_m_tileExtra = new \GrowtopiaWorld\DiceExtra($this->_io, $this, $this->_root);
                        break;
                    case 80:
                        $this->_m_tileExtra = new \GrowtopiaWorld\KrakensGalaticBlockExtra($this->_io, $this, $this->_root);
                        break;
                    case 81:
                        $this->_m_tileExtra = new \GrowtopiaWorld\FriendsEntranceExtra($this->_io, $this, $this->_root);
                        break;
                    case 9:
                        $this->_m_tileExtra = new \GrowtopiaWorld\ProviderExtra($this->_io, $this, $this->_root);
                        break;
                    default:
                        $this->_m_tileExtra = new \GrowtopiaWorld\UnknownExtra($this->_io, $this, $this->_root);
                        break;
                }
            }
            if ( (( ((($this->flag() & 1) == 1) && ($this->extraDataType() == 36)) ) || ($this->fg() == 15546) || ($this->fg() == 14666) || ($this->fg() == 14962) || ($this->fg() == 14662)) ) {
                $this->_m_cborData = new \GrowtopiaWorld\CborData($this->_io, $this, $this->_root);
            }
        }
        protected $_m_fg;
        protected $_m_bg;
        protected $_m_invalidTileFgBgKaitaiCrasher;
        protected $_m_parentBlockIndex;
        protected $_m_flag;
        protected $_m_parentLock;
        protected $_m_extraDataType;
        protected $_m_tileExtra;
        protected $_m_cborData;
        public function fg() { return $this->_m_fg; }
        public function bg() { return $this->_m_bg; }

        /**
         * This type is just to error out kaitai. If this is 
         * encountered, then maybe there was a parsing error.
         * Please report :)
         */
        public function invalidTileFgBgKaitaiCrasher() { return $this->_m_invalidTileFgBgKaitaiCrasher; }
        public function parentBlockIndex() { return $this->_m_parentBlockIndex; }
        public function flag() { return $this->_m_flag; }
        public function parentLock() { return $this->_m_parentLock; }
        public function extraDataType() { return $this->_m_extraDataType; }
        public function tileExtra() { return $this->_m_tileExtra; }
        public function cborData() { return $this->_m_cborData; }
    }
}

namespace GrowtopiaWorld {
    class XenoniteExtra extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\GrowtopiaWorld\WorldTile $_parent = null, ?\GrowtopiaWorld $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_unk1 = $this->_io->readBytes(5);
        }
        protected $_m_unk1;
        public function unk1() { return $this->_m_unk1; }
    }
}
