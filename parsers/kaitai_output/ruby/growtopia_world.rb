# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class GrowtopiaWorld < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @version = @_io.read_u2le
    @unk1 = @_io.read_u4le
    @name = GtStr.new(@_io, self, @_root)
    @width = @_io.read_u4le
    @height = @_io.read_u4le
    @num_tiles = @_io.read_u4le
    @unk2 = @_io.read_bytes(5)
    @tiles = []
    (num_tiles).times { |i|
      @tiles << WorldTile.new(@_io, self, @_root)
    }
    @unk3 = @_io.read_bytes(12)
    @num_objects = @_io.read_u4le
    @last_object_uid = @_io.read_u4le
    @objects = []
    (num_objects).times { |i|
      @objects << WorldObject.new(@_io, self, @_root)
    }
    self
  end
  class ARGB < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @a = @_io.read_u1
      @r = @_io.read_u1
      @g = @_io.read_u1
      @b = @_io.read_u1
      self
    end
    attr_reader :a
    attr_reader :r
    attr_reader :g
    attr_reader :b
  end
  class AchievementBlockExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @unk1 = @_io.read_u4le
      @achievement_id = @_io.read_u1
      self
    end
    attr_reader :unk1
    attr_reader :achievement_id
  end
  class AdventureBeginsExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      self
    end
  end
  class AngelicCountingCloudExtra < Kaitai::Struct::Struct

    STATES = {
      1 => :states_raffling,
      2 => :states_done_raffling,
    }
    I__STATES = STATES.invert
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @state = Kaitai::Struct::Stream::resolve_enum(STATES, @_io.read_u4le)
      @unk1 = @_io.read_u2le
      if state == :states_done_raffling
        @ascii_code = @_io.read_u1
      end
      self
    end
    attr_reader :state
    attr_reader :unk1
    attr_reader :ascii_code
  end
  class AudioRackExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @note = GtStr.new(@_io, self, @_root)
      @volume = @_io.read_u4le
      self
    end
    attr_reader :note
    attr_reader :volume
  end
  class BalloonOMaticExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @total_rarity = @_io.read_u4le
      @team_type = @_io.read_u1
      self
    end
    attr_reader :total_rarity
    attr_reader :team_type
  end
  class CborData < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @len_data = @_io.read_u4le
      @data = @_io.read_bytes(len_data)
      self
    end
    attr_reader :len_data
    attr_reader :data
  end
  class ChallengeTimerExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      self
    end
  end
  class ChemsynthTankExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @current_chem_id = @_io.read_u4le
      @supposed_chem_id = @_io.read_u4le
      self
    end
    attr_reader :current_chem_id
    attr_reader :supposed_chem_id
  end
  class ContainmentFieldPowerNodeExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @time_ms = @_io.read_u4le
      @num_linked_nodes = @_io.read_u4le
      @linked_nodes = []
      (num_linked_nodes).times { |i|
        @linked_nodes << @_io.read_u4le
      }
      self
    end
    attr_reader :time_ms
    attr_reader :num_linked_nodes
    attr_reader :linked_nodes
  end
  class CookingOvenExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @temp_level = @_io.read_u4le
      @ingredient_list_size = @_io.read_u4le
      @ingredients = []
      (ingredient_list_size / 2).times { |i|
        @ingredients << Ingredient.new(@_io, self, @_root)
      }
      @unk1 = @_io.read_u4le
      @unk2 = @_io.read_u4le
      @unk3 = @_io.read_u4le
      self
    end
    class Ingredient < Kaitai::Struct::Struct
      def initialize(_io, _parent = nil, _root = nil)
        super(_io, _parent, _root)
        _read
      end

      def _read
        @item_id = @_io.read_u4le
        @time_added = @_io.read_u4le
        self
      end
      attr_reader :item_id
      attr_reader :time_added
    end
    attr_reader :temp_level
    attr_reader :ingredient_list_size
    attr_reader :ingredients
    attr_reader :unk1
    attr_reader :unk2
    attr_reader :unk3
  end
  class CountryFlagExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      if _parent.fg == 3394
        @country = GtStr.new(@_io, self, @_root)
      end
      self
    end
    attr_reader :country
  end
  class CrimeInProgressExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @crime_name = GtStr.new(@_io, self, @_root)
      @crime_index = @_io.read_u4le
      @unk1 = @_io.read_u1
      self
    end
    attr_reader :crime_name
    attr_reader :crime_index
    attr_reader :unk1
  end
  class CrystalExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @num_crystals = @_io.read_u2le
      @crystals = []
      (num_crystals).times { |i|
        @crystals << @_io.read_u1
      }
      self
    end
    attr_reader :num_crystals
    attr_reader :crystals
  end
  class CybotExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @num_commands = @_io.read_u4le
      @commands = []
      (num_commands).times { |i|
        @commands << Command.new(@_io, self, @_root)
      }
      @timer = @_io.read_u4le
      @is_activated = @_io.read_u4le
      self
    end
    class Command < Kaitai::Struct::Struct
      def initialize(_io, _parent = nil, _root = nil)
        super(_io, _parent, _root)
        _read
      end

      def _read
        @command_id = @_io.read_u4le
        @is_command_used = @_io.read_u4le
        @unk1 = @_io.read_bytes(7)
        self
      end
      attr_reader :command_id
      attr_reader :is_command_used
      attr_reader :unk1
    end
    attr_reader :num_commands
    attr_reader :commands
    attr_reader :timer
    attr_reader :is_activated
  end
  class DataBedrockExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @unk1 = @_io.read_bytes(17)
      @pad1 = @_io.read_bytes(4)
      self
    end
    attr_reader :unk1
    attr_reader :pad1
  end
  class DiceExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @symbol = @_io.read_u1
      self
    end
    attr_reader :symbol
  end
  class DisplayBlockExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @item_id = @_io.read_u4le
      self
    end
    attr_reader :item_id
  end
  class DnaExtractorExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      self
    end
  end
  class DoorExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @label = GtStr.new(@_io, self, @_root)
      @unk1 = @_io.read_u1
      self
    end
    attr_reader :label
    attr_reader :unk1
  end
  class FishTankPortExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @flags = @_io.read_u1
      @fish_data_length = @_io.read_u4le
      @fishes = []
      (fish_data_length / 2).times { |i|
        @fishes << FishInfo.new(@_io, self, @_root)
      }
      self
    end
    class FishInfo < Kaitai::Struct::Struct
      def initialize(_io, _parent = nil, _root = nil)
        super(_io, _parent, _root)
        _read
      end

      def _read
        @item_id = @_io.read_u4le
        @lbs = @_io.read_u4le
        self
      end
      attr_reader :item_id
      attr_reader :lbs
    end
    attr_reader :flags
    attr_reader :fish_data_length
    attr_reader :fishes
  end
  class FishWallMountExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @label = GtStr.new(@_io, self, @_root)
      @item_id = @_io.read_u4le
      @lbs = @_io.read_u1
      self
    end
    attr_reader :label
    attr_reader :item_id
    attr_reader :lbs
  end
  class ForgeExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @temperature = @_io.read_u4le
      self
    end
    attr_reader :temperature
  end
  class FossilPrepStationExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @unk1 = @_io.read_u4le
      self
    end
    attr_reader :unk1
  end
  class FriendsEntranceExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @owner_userid = @_io.read_u4le
      @unk1 = @_io.read_bytes(2)
      @num_allowed_friends_userid = @_io.read_u2le
      @allowed_friends_userid = []
      (num_allowed_friends_userid).times { |i|
        @allowed_friends_userid << @_io.read_u4le
      }
      self
    end
    attr_reader :owner_userid
    attr_reader :unk1
    attr_reader :num_allowed_friends_userid
    attr_reader :allowed_friends_userid
  end
  class GameGeneratorExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      self
    end
  end
  class GameGraveExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @team_id = @_io.read_u1
      self
    end
    attr_reader :team_id
  end
  class GeigerChargerExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @unk1 = @_io.read_bytes(4)
      self
    end
    attr_reader :unk1
  end
  class GivingTreeExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @harvested = @_io.read_u1
      @age = @_io.read_u2le
      @unk1 = @_io.read_u2le
      @decoration_percentage = @_io.read_u1
      self
    end
    attr_reader :harvested
    attr_reader :age
    attr_reader :unk1
    attr_reader :decoration_percentage
  end
  class GrowscanExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @unk1 = @_io.read_u1
      self
    end
    attr_reader :unk1
  end
  class GtStr < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @len_data = @_io.read_u2le
      @str = (@_io.read_bytes(len_data)).force_encoding("ASCII").encode('UTF-8')
      self
    end
    attr_reader :len_data
    attr_reader :str
  end
  class GuildExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @unk1 = @_io.read_bytes(17)
      self
    end
    attr_reader :unk1
  end
  class HeartMonitorExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @user_id = @_io.read_u4le
      @grow_id = GtStr.new(@_io, self, @_root)
      self
    end
    attr_reader :user_id
    attr_reader :grow_id
  end
  class HowlerExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      self
    end
  end
  class InfinityWeatherMachineExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @interval_mins = @_io.read_u4le
      @num_weather_machines = @_io.read_u4le
      @weather_machines = []
      (num_weather_machines).times { |i|
        @weather_machines << @_io.read_u4le
      }
      self
    end
    attr_reader :interval_mins
    attr_reader :num_weather_machines
    attr_reader :weather_machines
  end
  class ItemSuckerExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @item_id = @_io.read_u4le
      @item_amount = @_io.read_u4le
      @flags = @_io.read_u2le
      @item_limit = @_io.read_u4le
      self
    end
    attr_reader :item_id
    attr_reader :item_amount
    attr_reader :flags
    attr_reader :item_limit
  end
  class KrakensGalaticBlockExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @pattern_number = @_io.read_u1
      @unk1 = @_io.read_bytes(4)
      @color_rgb = @_io.read_bytes(3)
      self
    end
    attr_reader :pattern_number
    attr_reader :unk1
    attr_reader :color_rgb
  end
  class LobsterTrapExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      self
    end
  end
  class LockBotExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @time_passed_sec = @_io.read_u4le
      self
    end
    attr_reader :time_passed_sec
  end
  class LockExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @flag = @_io.read_u1
      @owner_user_id = @_io.read_u4le
      @num_authorized_userids = @_io.read_u4le
      @authorized_userids = []
      (num_authorized_userids).times { |i|
        @authorized_userids << @_io.read_u4le
      }
      @minimum_level = @_io.read_u1
      @unk1 = @_io.read_bytes(7)
      if _parent.fg == 5814
        @guild_locks_unk = @_io.read_bytes(16)
      end
      self
    end
    attr_reader :flag
    attr_reader :owner_user_id
    attr_reader :num_authorized_userids
    attr_reader :authorized_userids
    attr_reader :minimum_level
    attr_reader :unk1
    attr_reader :guild_locks_unk
  end
  class MagicEggExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @egg_amount = @_io.read_u4le
      self
    end
    attr_reader :egg_amount
  end
  class MannequinExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @label = GtStr.new(@_io, self, @_root)
      @unk1 = @_io.read_u1
      @unk2 = @_io.read_u2le
      @unk3 = @_io.read_u2le
      @hat = @_io.read_u2le
      @shirt = @_io.read_u2le
      @pants = @_io.read_u2le
      @boots = @_io.read_u2le
      @face = @_io.read_u2le
      @hand = @_io.read_u2le
      @back = @_io.read_u2le
      @hair = @_io.read_u2le
      @neck = @_io.read_u2le
      self
    end
    attr_reader :label
    attr_reader :unk1
    attr_reader :unk2
    attr_reader :unk3
    attr_reader :hat
    attr_reader :shirt
    attr_reader :pants
    attr_reader :boots
    attr_reader :face
    attr_reader :hand
    attr_reader :back
    attr_reader :hair
    attr_reader :neck
  end
  class PaintingEaselExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @item_id = @_io.read_u4le
      @label = GtStr.new(@_io, self, @_root)
      self
    end
    attr_reader :item_id
    attr_reader :label
  end
  class PetBattleCageExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @label = GtStr.new(@_io, self, @_root)
      @base_pet = @_io.read_u4le
      @combined_pet_1 = @_io.read_u4le
      @combined_pet_2 = @_io.read_u4le
      self
    end
    attr_reader :label
    attr_reader :base_pet
    attr_reader :combined_pet_1
    attr_reader :combined_pet_2
  end
  class PetTrainerExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @name = GtStr.new(@_io, self, @_root)
      @num_pets = @_io.read_u4le
      @unk1 = @_io.read_u4le
      @pets = []
      (num_pets).times { |i|
        @pets << @_io.read_u4le
      }
      self
    end
    attr_reader :name
    attr_reader :num_pets
    attr_reader :unk1
    attr_reader :pets
  end
  class PhoneBoothExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @hat = @_io.read_u2le
      @shirt = @_io.read_u2le
      @pants = @_io.read_u2le
      @shoes = @_io.read_u2le
      @face = @_io.read_u2le
      @hand = @_io.read_u2le
      @back = @_io.read_u2le
      @hair = @_io.read_u2le
      @neck = @_io.read_u2le
      self
    end
    attr_reader :hat
    attr_reader :shirt
    attr_reader :pants
    attr_reader :shoes
    attr_reader :face
    attr_reader :hand
    attr_reader :back
    attr_reader :hair
    attr_reader :neck
  end
  class PineappleGuzzlerExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @pineapple_fed = @_io.read_u4le
      self
    end
    attr_reader :pineapple_fed
  end
  class PortraitExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @label = GtStr.new(@_io, self, @_root)
      @unk1 = @_io.read_u4le
      @unk2 = @_io.read_u4le
      @unk3 = @_io.read_bytes(5)
      @unk4 = @_io.read_u1
      @unk5 = @_io.read_u2le
      @face = @_io.read_u2le
      @hat = @_io.read_u2le
      @hair = @_io.read_u2le
      @unk6 = @_io.read_u4le
      if hat == 12958
        @infinity_crown_data = GtStr.new(@_io, self, @_root)
      end
      self
    end
    attr_reader :label
    attr_reader :unk1
    attr_reader :unk2
    attr_reader :unk3
    attr_reader :unk4
    attr_reader :unk5
    attr_reader :face
    attr_reader :hat
    attr_reader :hair
    attr_reader :unk6
    attr_reader :infinity_crown_data
  end
  class ProviderExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @growth = @_io.read_u4le
      if _parent.fg == 10656
        @pad1 = @_io.read_bytes(4)
      end
      self
    end
    attr_reader :growth
    attr_reader :pad1
  end
  class SafeVaultExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      self
    end
  end
  class SeedExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @age = @_io.read_u4le
      @fruit_count = @_io.read_u1
      self
    end
    attr_reader :age
    attr_reader :fruit_count
  end
  class SewingMachineExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @num_bolt_ids = @_io.read_u4le
      @bolt_ids = []
      (num_bolt_ids).times { |i|
        @bolt_ids << @_io.read_u4le
      }
      self
    end
    attr_reader :num_bolt_ids
    attr_reader :bolt_ids
  end
  class ShelfExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @top_left_item_id = @_io.read_u4le
      @top_right_item_id = @_io.read_u4le
      @bottom_left_item_id = @_io.read_u4le
      @bottom_right_item_id = @_io.read_u4le
      self
    end
    attr_reader :top_left_item_id
    attr_reader :top_right_item_id
    attr_reader :bottom_left_item_id
    attr_reader :bottom_right_item_id
  end
  class SignExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @label = GtStr.new(@_io, self, @_root)
      @pad1 = @_io.read_bytes(4)
      self
    end
    attr_reader :label
    attr_reader :pad1
  end
  class SilkWormExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @flags = @_io.read_u1
      @name = GtStr.new(@_io, self, @_root)
      @age_sec = @_io.read_u4le
      @unk1 = @_io.read_u4le
      @unk2 = @_io.read_u4le
      @can_be_fed = @_io.read_u1
      @food_saturation = @_io.read_u4le
      @water_saturation = @_io.read_u4le
      @color_argb = ARGB.new(@_io, self, @_root)
      @sick_duration = @_io.read_u4le
      self
    end
    attr_reader :flags
    attr_reader :name
    attr_reader :age_sec
    attr_reader :unk1
    attr_reader :unk2
    attr_reader :can_be_fed
    attr_reader :food_saturation
    attr_reader :water_saturation
    attr_reader :color_argb
    attr_reader :sick_duration
  end
  class SolarCollectorExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @unk1 = @_io.read_bytes(5)
      self
    end
    attr_reader :unk1
  end
  class SpiritBoardExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @player_required = @_io.read_u4le
      @unk1 = GtStr.new(@_io, self, @_root)
      @command = GtStr.new(@_io, self, @_root)
      @num_required_items = @_io.read_u4le
      @required_items = []
      (num_required_items).times { |i|
        @required_items << @_io.read_u4le
      }
      self
    end
    attr_reader :player_required
    attr_reader :unk1
    attr_reader :command
    attr_reader :num_required_items
    attr_reader :required_items
  end
  class SpiritStorageUnitExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @ghost_jar_count = @_io.read_u4le
      self
    end
    attr_reader :ghost_jar_count
  end
  class SpotlightExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      self
    end
  end
  class SteamEngineExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @temperature = @_io.read_u4le
      self
    end
    attr_reader :temperature
  end
  class SteamOrganExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @instrument_type = @_io.read_u1
      @note = @_io.read_u4le
      self
    end
    attr_reader :instrument_type
    attr_reader :note
  end
  class StorageBoxXtremeExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @data_len = @_io.read_u2le
      @items = []
      (data_len / 13).times { |i|
        @items << StorageItem.new(@_io, self, @_root)
      }
      self
    end
    class StorageItem < Kaitai::Struct::Struct
      def initialize(_io, _parent = nil, _root = nil)
        super(_io, _parent, _root)
        _read
      end

      def _read
        @pad1 = @_io.read_bytes(3)
        @item_id = @_io.read_u4le
        @pad2 = @_io.read_bytes(2)
        @item_amt = @_io.read_u4le
        self
      end
      attr_reader :pad1
      attr_reader :item_id
      attr_reader :pad2
      attr_reader :item_amt
    end
    attr_reader :data_len
    attr_reader :items
  end
  class StormyCloudExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @sting_duration = @_io.read_u4le
      @is_solid = @_io.read_u4le
      @non_solid_duration = @_io.read_u4le
      self
    end
    attr_reader :sting_duration
    attr_reader :is_solid
    attr_reader :non_solid_duration
  end
  class TemporaryPlatformExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @unk1 = @_io.read_u4le
      self
    end
    attr_reader :unk1
  end
  class TesseractManipulatorExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @gems_left = @_io.read_u4le
      @next_update_ms = @_io.read_u4le
      @item_id = @_io.read_u4le
      @enabled = @_io.read_u4le
      self
    end
    attr_reader :gems_left
    attr_reader :next_update_ms
    attr_reader :item_id
    attr_reader :enabled
  end
  class TombRobberExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      self
    end
  end
  class TrainingPortExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @fish_lb = @_io.read_u4le
      @status = @_io.read_u2le
      @item_id = @_io.read_u4le
      @total_exp = @_io.read_u4le
      @unk1 = @_io.read_bytes(8)
      @fish_level = @_io.read_u4le
      @unk2 = @_io.read_u4le
      @unk3 = @_io.read_bytes(5)
      self
    end
    attr_reader :fish_lb
    attr_reader :status
    attr_reader :item_id
    attr_reader :total_exp
    attr_reader :unk1
    attr_reader :fish_level
    attr_reader :unk2
    attr_reader :unk3
  end
  class UnknownExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @this_is_just_to_error_out_kaitai_pls = @_io.read_bytes_full
      self
    end

    ##
    # This type is just to error out kaitai. So if you encounter any error, 
    # please either give the world name or dump the world and submit it to me
    # (81739844+badewen@users.noreply.github.com).  
    attr_reader :this_is_just_to_error_out_kaitai_pls
  end
  class VendingMachineExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @item_id = @_io.read_u4le
      @price = @_io.read_s4le
      self
    end
    attr_reader :item_id
    attr_reader :price
  end
  class VipEntranceExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @unk1 = @_io.read_u1
      @owner_userid = @_io.read_u4le
      @num_allowed_userids = @_io.read_u4le
      @allowed_userids = []
      (num_allowed_userids).times { |i|
        @allowed_userids << @_io.read_u4le
      }
      self
    end
    attr_reader :unk1
    attr_reader :owner_userid
    attr_reader :num_allowed_userids
    attr_reader :allowed_userids
  end
  class WeatherMachine1Extra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @settings = @_io.read_bytes(4)
      self
    end
    attr_reader :settings
  end
  class WeatherMachine2Extra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @item_id = @_io.read_u4le
      @gravity = @_io.read_u4le
      @flag = @_io.read_u1
      self
    end
    attr_reader :item_id
    attr_reader :gravity
    attr_reader :flag
  end
  class WorldObject < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @item_id = @_io.read_u2le
      @x = @_io.read_f4le
      @y = @_io.read_f4le
      @amount = @_io.read_u1
      @flag = @_io.read_u1
      @uid = @_io.read_u4le
      self
    end
    attr_reader :item_id
    attr_reader :x
    attr_reader :y
    attr_reader :amount
    attr_reader :flag
    attr_reader :uid
  end
  class WorldTile < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @fg = @_io.read_u2le
      @bg = @_io.read_u2le
      if  ((fg > 25000) || (bg > 25000)) 
        @invalid_tile_fg_bg_kaitai_crasher = @_io.read_bytes_full
      end
      @parent_block_index = @_io.read_u2le
      @flag = @_io.read_u2le
      if flag & 2 == 2
        @parent_lock = @_io.read_u2le
      end
      if flag & 1 == 1
        @extra_data_type = @_io.read_u1
      end
      if flag & 1 == 1
        case extra_data_type
        when 1
          @tile_extra = DoorExtra.new(@_io, self, @_root)
        when 10
          @tile_extra = AchievementBlockExtra.new(@_io, self, @_root)
        when 11
          @tile_extra = HeartMonitorExtra.new(@_io, self, @_root)
        when 14
          @tile_extra = MannequinExtra.new(@_io, self, @_root)
        when 15
          @tile_extra = MagicEggExtra.new(@_io, self, @_root)
        when 16
          @tile_extra = GameGraveExtra.new(@_io, self, @_root)
        when 17
          @tile_extra = GameGeneratorExtra.new(@_io, self, @_root)
        when 18
          @tile_extra = XenoniteExtra.new(@_io, self, @_root)
        when 19
          @tile_extra = PhoneBoothExtra.new(@_io, self, @_root)
        when 2
          @tile_extra = SignExtra.new(@_io, self, @_root)
        when 20
          @tile_extra = CrystalExtra.new(@_io, self, @_root)
        when 21
          @tile_extra = CrimeInProgressExtra.new(@_io, self, @_root)
        when 22
          @tile_extra = SpotlightExtra.new(@_io, self, @_root)
        when 23
          @tile_extra = DisplayBlockExtra.new(@_io, self, @_root)
        when 24
          @tile_extra = VendingMachineExtra.new(@_io, self, @_root)
        when 25
          @tile_extra = FishTankPortExtra.new(@_io, self, @_root)
        when 26
          @tile_extra = SolarCollectorExtra.new(@_io, self, @_root)
        when 27
          @tile_extra = ForgeExtra.new(@_io, self, @_root)
        when 28
          @tile_extra = GivingTreeExtra.new(@_io, self, @_root)
        when 3
          @tile_extra = LockExtra.new(@_io, self, @_root)
        when 30
          @tile_extra = SteamOrganExtra.new(@_io, self, @_root)
        when 31
          @tile_extra = SilkWormExtra.new(@_io, self, @_root)
        when 32
          @tile_extra = SewingMachineExtra.new(@_io, self, @_root)
        when 33
          @tile_extra = CountryFlagExtra.new(@_io, self, @_root)
        when 34
          @tile_extra = LobsterTrapExtra.new(@_io, self, @_root)
        when 35
          @tile_extra = PaintingEaselExtra.new(@_io, self, @_root)
        when 36
          @tile_extra = PetBattleCageExtra.new(@_io, self, @_root)
        when 37
          @tile_extra = PetTrainerExtra.new(@_io, self, @_root)
        when 38
          @tile_extra = SteamEngineExtra.new(@_io, self, @_root)
        when 39
          @tile_extra = LockBotExtra.new(@_io, self, @_root)
        when 4
          @tile_extra = SeedExtra.new(@_io, self, @_root)
        when 40
          @tile_extra = WeatherMachine1Extra.new(@_io, self, @_root)
        when 41
          @tile_extra = SpiritStorageUnitExtra.new(@_io, self, @_root)
        when 42
          @tile_extra = DataBedrockExtra.new(@_io, self, @_root)
        when 43
          @tile_extra = ShelfExtra.new(@_io, self, @_root)
        when 44
          @tile_extra = VipEntranceExtra.new(@_io, self, @_root)
        when 45
          @tile_extra = ChallengeTimerExtra.new(@_io, self, @_root)
        when 47
          @tile_extra = FishWallMountExtra.new(@_io, self, @_root)
        when 48
          @tile_extra = PortraitExtra.new(@_io, self, @_root)
        when 49
          @tile_extra = WeatherMachine2Extra.new(@_io, self, @_root)
        when 50
          @tile_extra = FossilPrepStationExtra.new(@_io, self, @_root)
        when 51
          @tile_extra = DnaExtractorExtra.new(@_io, self, @_root)
        when 52
          @tile_extra = HowlerExtra.new(@_io, self, @_root)
        when 53
          @tile_extra = ChemsynthTankExtra.new(@_io, self, @_root)
        when 54
          @tile_extra = StorageBoxXtremeExtra.new(@_io, self, @_root)
        when 55
          @tile_extra = CookingOvenExtra.new(@_io, self, @_root)
        when 56
          @tile_extra = AudioRackExtra.new(@_io, self, @_root)
        when 57
          @tile_extra = GeigerChargerExtra.new(@_io, self, @_root)
        when 58
          @tile_extra = AdventureBeginsExtra.new(@_io, self, @_root)
        when 59
          @tile_extra = TombRobberExtra.new(@_io, self, @_root)
        when 60
          @tile_extra = BalloonOMaticExtra.new(@_io, self, @_root)
        when 61
          @tile_extra = TrainingPortExtra.new(@_io, self, @_root)
        when 62
          @tile_extra = ItemSuckerExtra.new(@_io, self, @_root)
        when 63
          @tile_extra = CybotExtra.new(@_io, self, @_root)
        when 65
          @tile_extra = GuildExtra.new(@_io, self, @_root)
        when 66
          @tile_extra = GrowscanExtra.new(@_io, self, @_root)
        when 67
          @tile_extra = ContainmentFieldPowerNodeExtra.new(@_io, self, @_root)
        when 68
          @tile_extra = SpiritBoardExtra.new(@_io, self, @_root)
        when 69
          @tile_extra = TesseractManipulatorExtra.new(@_io, self, @_root)
        when 72
          @tile_extra = StormyCloudExtra.new(@_io, self, @_root)
        when 73
          @tile_extra = TemporaryPlatformExtra.new(@_io, self, @_root)
        when 74
          @tile_extra = SafeVaultExtra.new(@_io, self, @_root)
        when 75
          @tile_extra = AngelicCountingCloudExtra.new(@_io, self, @_root)
        when 77
          @tile_extra = InfinityWeatherMachineExtra.new(@_io, self, @_root)
        when 79
          @tile_extra = PineappleGuzzlerExtra.new(@_io, self, @_root)
        when 8
          @tile_extra = DiceExtra.new(@_io, self, @_root)
        when 80
          @tile_extra = KrakensGalaticBlockExtra.new(@_io, self, @_root)
        when 81
          @tile_extra = FriendsEntranceExtra.new(@_io, self, @_root)
        when 9
          @tile_extra = ProviderExtra.new(@_io, self, @_root)
        else
          @tile_extra = UnknownExtra.new(@_io, self, @_root)
        end
      end
      if  (( ((flag & 1 == 1) && (extra_data_type == 36)) ) || (fg == 15546) || (fg == 14666) || (fg == 14962) || (fg == 14662)) 
        @cbor_data = CborData.new(@_io, self, @_root)
      end
      self
    end
    attr_reader :fg
    attr_reader :bg

    ##
    # This type is just to error out kaitai. If this is 
    # encountered, then maybe there was a parsing error.
    # Please report :)
    attr_reader :invalid_tile_fg_bg_kaitai_crasher
    attr_reader :parent_block_index
    attr_reader :flag
    attr_reader :parent_lock
    attr_reader :extra_data_type
    attr_reader :tile_extra
    attr_reader :cbor_data
  end
  class XenoniteExtra < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @unk1 = @_io.read_bytes(5)
      self
    end
    attr_reader :unk1
  end
  attr_reader :version
  attr_reader :unk1
  attr_reader :name
  attr_reader :width
  attr_reader :height
  attr_reader :num_tiles
  attr_reader :unk2
  attr_reader :tiles
  attr_reader :unk3
  attr_reader :num_objects
  attr_reader :last_object_uid
  attr_reader :objects
end
