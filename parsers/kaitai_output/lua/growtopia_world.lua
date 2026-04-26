-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local enum = require("enum")
local str_decode = require("string_decode")

GrowtopiaWorld = class.class(KaitaiStruct)

function GrowtopiaWorld:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function GrowtopiaWorld:_read()
  self.version = self._io:read_u2le()
  self.unk1 = self._io:read_u4le()
  self.name = GrowtopiaWorld.GtStr(self._io, self, self._root)
  self.width = self._io:read_u4le()
  self.height = self._io:read_u4le()
  self.num_tiles = self._io:read_u4le()
  self.unk2 = self._io:read_bytes(5)
  self.tiles = {}
  for i = 0, self.num_tiles - 1 do
    self.tiles[i + 1] = GrowtopiaWorld.WorldTile(self._io, self, self._root)
  end
  self.unk3 = self._io:read_bytes(12)
  self.num_objects = self._io:read_u4le()
  self.last_object_uid = self._io:read_u4le()
  self.objects = {}
  for i = 0, self.num_objects - 1 do
    self.objects[i + 1] = GrowtopiaWorld.WorldObject(self._io, self, self._root)
  end
end


GrowtopiaWorld.ARGB = class.class(KaitaiStruct)

function GrowtopiaWorld.ARGB:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.ARGB:_read()
  self.a = self._io:read_u1()
  self.r = self._io:read_u1()
  self.g = self._io:read_u1()
  self.b = self._io:read_u1()
end


GrowtopiaWorld.AchievementBlockExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.AchievementBlockExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.AchievementBlockExtra:_read()
  self.unk1 = self._io:read_u4le()
  self.achievement_id = self._io:read_u1()
end


GrowtopiaWorld.AdventureBeginsExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.AdventureBeginsExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.AdventureBeginsExtra:_read()
end


GrowtopiaWorld.AngelicCountingCloudExtra = class.class(KaitaiStruct)

GrowtopiaWorld.AngelicCountingCloudExtra.States = enum.Enum {
  raffling = 1,
  done_raffling = 2,
}

function GrowtopiaWorld.AngelicCountingCloudExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.AngelicCountingCloudExtra:_read()
  self.state = GrowtopiaWorld.AngelicCountingCloudExtra.States(self._io:read_u4le())
  self.unk1 = self._io:read_u2le()
  if self.state == GrowtopiaWorld.AngelicCountingCloudExtra.States.done_raffling then
    self.ascii_code = self._io:read_u1()
  end
end


GrowtopiaWorld.AudioRackExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.AudioRackExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.AudioRackExtra:_read()
  self.note = GrowtopiaWorld.GtStr(self._io, self, self._root)
  self.volume = self._io:read_u4le()
end


GrowtopiaWorld.BalloonOMaticExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.BalloonOMaticExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.BalloonOMaticExtra:_read()
  self.total_rarity = self._io:read_u4le()
  self.team_type = self._io:read_u1()
end


GrowtopiaWorld.CborData = class.class(KaitaiStruct)

function GrowtopiaWorld.CborData:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.CborData:_read()
  self.len_data = self._io:read_u4le()
  self.data = self._io:read_bytes(self.len_data)
end


GrowtopiaWorld.ChallengeTimerExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.ChallengeTimerExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.ChallengeTimerExtra:_read()
end


GrowtopiaWorld.ChemsynthTankExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.ChemsynthTankExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.ChemsynthTankExtra:_read()
  self.current_chem_id = self._io:read_u4le()
  self.supposed_chem_id = self._io:read_u4le()
end


GrowtopiaWorld.ContainmentFieldPowerNodeExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.ContainmentFieldPowerNodeExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.ContainmentFieldPowerNodeExtra:_read()
  self.time_ms = self._io:read_u4le()
  self.num_linked_nodes = self._io:read_u4le()
  self.linked_nodes = {}
  for i = 0, self.num_linked_nodes - 1 do
    self.linked_nodes[i + 1] = self._io:read_u4le()
  end
end


GrowtopiaWorld.CookingOvenExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.CookingOvenExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.CookingOvenExtra:_read()
  self.temp_level = self._io:read_u4le()
  self.ingredient_list_size = self._io:read_u4le()
  self.ingredients = {}
  for i = 0, math.floor(self.ingredient_list_size / 2) - 1 do
    self.ingredients[i + 1] = GrowtopiaWorld.CookingOvenExtra.Ingredient(self._io, self, self._root)
  end
  self.unk1 = self._io:read_u4le()
  self.unk2 = self._io:read_u4le()
  self.unk3 = self._io:read_u4le()
end


GrowtopiaWorld.CookingOvenExtra.Ingredient = class.class(KaitaiStruct)

function GrowtopiaWorld.CookingOvenExtra.Ingredient:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.CookingOvenExtra.Ingredient:_read()
  self.item_id = self._io:read_u4le()
  self.time_added = self._io:read_u4le()
end


GrowtopiaWorld.CountryFlagExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.CountryFlagExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.CountryFlagExtra:_read()
  if self._parent.fg == 3394 then
    self.country = GrowtopiaWorld.GtStr(self._io, self, self._root)
  end
end


GrowtopiaWorld.CrimeInProgressExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.CrimeInProgressExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.CrimeInProgressExtra:_read()
  self.crime_name = GrowtopiaWorld.GtStr(self._io, self, self._root)
  self.crime_index = self._io:read_u4le()
  self.unk1 = self._io:read_u1()
end


GrowtopiaWorld.CrystalExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.CrystalExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.CrystalExtra:_read()
  self.num_crystals = self._io:read_u2le()
  self.crystals = {}
  for i = 0, self.num_crystals - 1 do
    self.crystals[i + 1] = self._io:read_u1()
  end
end


GrowtopiaWorld.CybotExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.CybotExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.CybotExtra:_read()
  self.num_commands = self._io:read_u4le()
  self.commands = {}
  for i = 0, self.num_commands - 1 do
    self.commands[i + 1] = GrowtopiaWorld.CybotExtra.Command(self._io, self, self._root)
  end
  self.timer = self._io:read_u4le()
  self.is_activated = self._io:read_u4le()
end


GrowtopiaWorld.CybotExtra.Command = class.class(KaitaiStruct)

function GrowtopiaWorld.CybotExtra.Command:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.CybotExtra.Command:_read()
  self.command_id = self._io:read_u4le()
  self.is_command_used = self._io:read_u4le()
  self.unk1 = self._io:read_bytes(7)
end


GrowtopiaWorld.DataBedrockExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.DataBedrockExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.DataBedrockExtra:_read()
  self.unk1 = self._io:read_bytes(17)
  self.pad1 = self._io:read_bytes(4)
end


GrowtopiaWorld.DiceExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.DiceExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.DiceExtra:_read()
  self.symbol = self._io:read_u1()
end


GrowtopiaWorld.DisplayBlockExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.DisplayBlockExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.DisplayBlockExtra:_read()
  self.item_id = self._io:read_u4le()
end


GrowtopiaWorld.DnaExtractorExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.DnaExtractorExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.DnaExtractorExtra:_read()
end


GrowtopiaWorld.DoorExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.DoorExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.DoorExtra:_read()
  self.label = GrowtopiaWorld.GtStr(self._io, self, self._root)
  self.flags = self._io:read_u1()
end


GrowtopiaWorld.FishTankPortExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.FishTankPortExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.FishTankPortExtra:_read()
  self.flags = self._io:read_u1()
  self.fish_data_length = self._io:read_u4le()
  self.fishes = {}
  for i = 0, math.floor(self.fish_data_length / 2) - 1 do
    self.fishes[i + 1] = GrowtopiaWorld.FishTankPortExtra.FishInfo(self._io, self, self._root)
  end
end


GrowtopiaWorld.FishTankPortExtra.FishInfo = class.class(KaitaiStruct)

function GrowtopiaWorld.FishTankPortExtra.FishInfo:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.FishTankPortExtra.FishInfo:_read()
  self.item_id = self._io:read_u4le()
  self.lbs = self._io:read_u4le()
end


GrowtopiaWorld.FishWallMountExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.FishWallMountExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.FishWallMountExtra:_read()
  self.label = GrowtopiaWorld.GtStr(self._io, self, self._root)
  self.item_id = self._io:read_u4le()
  self.lbs = self._io:read_u1()
end


GrowtopiaWorld.ForgeExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.ForgeExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.ForgeExtra:_read()
  self.temperature = self._io:read_u4le()
end


GrowtopiaWorld.FossilPrepStationExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.FossilPrepStationExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.FossilPrepStationExtra:_read()
  self.unk1 = self._io:read_u4le()
end


GrowtopiaWorld.FriendsEntranceExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.FriendsEntranceExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.FriendsEntranceExtra:_read()
  self.owner_userid = self._io:read_u4le()
  self.unk1 = self._io:read_bytes(2)
  self.num_allowed_friends_userid = self._io:read_u2le()
  self.allowed_friends_userid = {}
  for i = 0, self.num_allowed_friends_userid - 1 do
    self.allowed_friends_userid[i + 1] = self._io:read_u4le()
  end
end


GrowtopiaWorld.GameGeneratorExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.GameGeneratorExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.GameGeneratorExtra:_read()
end


GrowtopiaWorld.GameGraveExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.GameGraveExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.GameGraveExtra:_read()
  self.team_id = self._io:read_u1()
end


GrowtopiaWorld.GeigerChargerExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.GeigerChargerExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.GeigerChargerExtra:_read()
  self.unk1 = self._io:read_bytes(4)
end


GrowtopiaWorld.GivingTreeExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.GivingTreeExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.GivingTreeExtra:_read()
  self.harvested = self._io:read_u1()
  self.age = self._io:read_u2le()
  self.unk1 = self._io:read_u2le()
  self.decoration_percentage = self._io:read_u1()
end


GrowtopiaWorld.GrowscanExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.GrowscanExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.GrowscanExtra:_read()
  self.unk1 = self._io:read_u1()
end


GrowtopiaWorld.GtStr = class.class(KaitaiStruct)

function GrowtopiaWorld.GtStr:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.GtStr:_read()
  self.len_data = self._io:read_u2le()
  self.str = str_decode.decode(self._io:read_bytes(self.len_data), "ASCII")
end


GrowtopiaWorld.GuildExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.GuildExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.GuildExtra:_read()
  self.unk1 = self._io:read_u1()
  self.guild_id = self._io:read_u4le()
  self.guild_mascot_fg = self._io:read_u2le()
  self.guild_mascot_bg = self._io:read_u2le()
  self.guild_level = self._io:read_u4le()
  self.guild_flags = self._io:read_u4le()
end


GrowtopiaWorld.HeartMonitorExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.HeartMonitorExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.HeartMonitorExtra:_read()
  self.user_id = self._io:read_u4le()
  self.grow_id = GrowtopiaWorld.GtStr(self._io, self, self._root)
end


GrowtopiaWorld.HowlerExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.HowlerExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.HowlerExtra:_read()
end


GrowtopiaWorld.InfinityWeatherMachineExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.InfinityWeatherMachineExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.InfinityWeatherMachineExtra:_read()
  self.interval_mins = self._io:read_u4le()
  self.num_weather_machines = self._io:read_u4le()
  self.weather_machines = {}
  for i = 0, self.num_weather_machines - 1 do
    self.weather_machines[i + 1] = self._io:read_u4le()
  end
end


GrowtopiaWorld.ItemSuckerExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.ItemSuckerExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.ItemSuckerExtra:_read()
  self.item_id = self._io:read_u4le()
  self.item_amount = self._io:read_u4le()
  self.flags = self._io:read_u2le()
  self.item_limit = self._io:read_u4le()
end


GrowtopiaWorld.KrakensGalaticBlockExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.KrakensGalaticBlockExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.KrakensGalaticBlockExtra:_read()
  self.pattern_number = self._io:read_u1()
  self.unk1 = self._io:read_bytes(4)
  self.color_rgb = self._io:read_bytes(3)
end


GrowtopiaWorld.LobsterTrapExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.LobsterTrapExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.LobsterTrapExtra:_read()
end


GrowtopiaWorld.LockBotExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.LockBotExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.LockBotExtra:_read()
  self.age = self._io:read_u4le()
end


GrowtopiaWorld.LockExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.LockExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.LockExtra:_read()
  self.flag = self._io:read_u1()
  self.owner_user_id = self._io:read_u4le()
  self.num_authorized_userids = self._io:read_u4le()
  self.authorized_userids = {}
  for i = 0, self.num_authorized_userids - 1 do
    self.authorized_userids[i + 1] = self._io:read_s4le()
  end
  self.minimum_level = self._io:read_u4le()
  self.world_timer = self._io:read_u4le()
  if self._parent.fg == 5814 then
    self.guild_id = self._io:read_u4le()
  end
  if self._parent.fg == 5814 then
    self.guild_mascot_fg = self._io:read_u2le()
  end
  if self._parent.fg == 5814 then
    self.guild_mascot_bg = self._io:read_u2le()
  end
  if self._parent.fg == 5814 then
    self.guild_level = self._io:read_u4le()
  end
  if self._parent.fg == 5814 then
    self.guild_flags = self._io:read_u4le()
  end
end

-- 
-- if you encounter negative user id, it is a world BPM. Kaitai doesnt support
-- complex logic yet. 

GrowtopiaWorld.MagicEggExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.MagicEggExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.MagicEggExtra:_read()
  self.egg_amount = self._io:read_u4le()
end


GrowtopiaWorld.MannequinExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.MannequinExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.MannequinExtra:_read()
  self.label = GrowtopiaWorld.GtStr(self._io, self, self._root)
  self.unk1 = self._io:read_u1()
  self.unk2 = self._io:read_u2le()
  self.unk3 = self._io:read_u2le()
  self.hat = self._io:read_u2le()
  self.shirt = self._io:read_u2le()
  self.pants = self._io:read_u2le()
  self.boots = self._io:read_u2le()
  self.face = self._io:read_u2le()
  self.hand = self._io:read_u2le()
  self.back = self._io:read_u2le()
  self.hair = self._io:read_u2le()
  self.neck = self._io:read_u2le()
end


GrowtopiaWorld.PaintingEaselExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.PaintingEaselExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.PaintingEaselExtra:_read()
  self.item_id = self._io:read_u4le()
  self.label = GrowtopiaWorld.GtStr(self._io, self, self._root)
end


GrowtopiaWorld.PetBattleCageExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.PetBattleCageExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.PetBattleCageExtra:_read()
  self.label = GrowtopiaWorld.GtStr(self._io, self, self._root)
  self.base_pet = self._io:read_u4le()
  self.combined_pet_1 = self._io:read_u4le()
  self.combined_pet_2 = self._io:read_u4le()
end


GrowtopiaWorld.PetTrainerExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.PetTrainerExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.PetTrainerExtra:_read()
  self.name = GrowtopiaWorld.GtStr(self._io, self, self._root)
  self.num_pets = self._io:read_u4le()
  self.unk1 = self._io:read_u4le()
  self.pets = {}
  for i = 0, self.num_pets - 1 do
    self.pets[i + 1] = self._io:read_u4le()
  end
end


GrowtopiaWorld.PhoneBoothExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.PhoneBoothExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.PhoneBoothExtra:_read()
  self.hat = self._io:read_u2le()
  self.shirt = self._io:read_u2le()
  self.pants = self._io:read_u2le()
  self.shoes = self._io:read_u2le()
  self.face = self._io:read_u2le()
  self.hand = self._io:read_u2le()
  self.back = self._io:read_u2le()
  self.hair = self._io:read_u2le()
  self.neck = self._io:read_u2le()
end


GrowtopiaWorld.PineappleGuzzlerExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.PineappleGuzzlerExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.PineappleGuzzlerExtra:_read()
  self.pineapple_fed = self._io:read_u4le()
end


GrowtopiaWorld.PortraitExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.PortraitExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.PortraitExtra:_read()
  self.label = GrowtopiaWorld.GtStr(self._io, self, self._root)
  self.unk1 = self._io:read_u4le()
  self.unk2 = self._io:read_u4le()
  self.unk3 = self._io:read_bytes(5)
  self.unk4 = self._io:read_u1()
  self.unk5 = self._io:read_u2le()
  self.face = self._io:read_u2le()
  self.hat = self._io:read_u2le()
  self.hair = self._io:read_u2le()
  self.unk6 = self._io:read_u4le()
  if self.hat == 12958 then
    self.infinity_crown_data = GrowtopiaWorld.GtStr(self._io, self, self._root)
  end
end


GrowtopiaWorld.ProviderExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.ProviderExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.ProviderExtra:_read()
  self.age = self._io:read_u4le()
  if self._parent.fg == 10656 then
    self.pad1 = self._io:read_bytes(4)
  end
end


GrowtopiaWorld.SafeVaultExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.SafeVaultExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.SafeVaultExtra:_read()
end


GrowtopiaWorld.SeedExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.SeedExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.SeedExtra:_read()
  self.age = self._io:read_u4le()
  self.fruit_count = self._io:read_u1()
end


GrowtopiaWorld.SewingMachineExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.SewingMachineExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.SewingMachineExtra:_read()
  self.num_bolt_ids = self._io:read_u4le()
  self.bolt_ids = {}
  for i = 0, self.num_bolt_ids - 1 do
    self.bolt_ids[i + 1] = self._io:read_u4le()
  end
end


GrowtopiaWorld.ShelfExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.ShelfExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.ShelfExtra:_read()
  self.top_left_item_id = self._io:read_u4le()
  self.top_right_item_id = self._io:read_u4le()
  self.bottom_left_item_id = self._io:read_u4le()
  self.bottom_right_item_id = self._io:read_u4le()
end


GrowtopiaWorld.SignExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.SignExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.SignExtra:_read()
  self.label = GrowtopiaWorld.GtStr(self._io, self, self._root)
  self.pad1 = self._io:read_bytes(4)
end


GrowtopiaWorld.SilkWormExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.SilkWormExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.SilkWormExtra:_read()
  self.flags = self._io:read_u1()
  self.name = GrowtopiaWorld.GtStr(self._io, self, self._root)
  self.age_sec = self._io:read_u4le()
  self.unk1 = self._io:read_u4le()
  self.unk2 = self._io:read_u4le()
  self.can_be_fed = self._io:read_u1()
  self.food_saturation = self._io:read_u4le()
  self.water_saturation = self._io:read_u4le()
  self.color_argb = GrowtopiaWorld.ARGB(self._io, self, self._root)
  self.sick_duration = self._io:read_u4le()
end


GrowtopiaWorld.SolarCollectorExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.SolarCollectorExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.SolarCollectorExtra:_read()
  self.unk1 = self._io:read_bytes(5)
end


GrowtopiaWorld.SpiritBoardExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.SpiritBoardExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.SpiritBoardExtra:_read()
  self.player_required = self._io:read_u4le()
  self.unk1 = GrowtopiaWorld.GtStr(self._io, self, self._root)
  self.command = GrowtopiaWorld.GtStr(self._io, self, self._root)
  self.num_required_items = self._io:read_u4le()
  self.required_items = {}
  for i = 0, self.num_required_items - 1 do
    self.required_items[i + 1] = self._io:read_u4le()
  end
end


GrowtopiaWorld.SpiritStorageUnitExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.SpiritStorageUnitExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.SpiritStorageUnitExtra:_read()
  self.ghost_jar_count = self._io:read_u4le()
end


GrowtopiaWorld.SpotlightExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.SpotlightExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.SpotlightExtra:_read()
end


GrowtopiaWorld.SteamEngineExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.SteamEngineExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.SteamEngineExtra:_read()
  self.temperature = self._io:read_u4le()
end


GrowtopiaWorld.SteamOrganExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.SteamOrganExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.SteamOrganExtra:_read()
  self.instrument_type = self._io:read_u1()
  self.note = self._io:read_u4le()
end


GrowtopiaWorld.StorageBoxXtremeExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.StorageBoxXtremeExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.StorageBoxXtremeExtra:_read()
  self.data_len = self._io:read_u2le()
  self.items = {}
  for i = 0, math.floor(self.data_len / 13) - 1 do
    self.items[i + 1] = GrowtopiaWorld.StorageBoxXtremeExtra.StorageItem(self._io, self, self._root)
  end
end


GrowtopiaWorld.StorageBoxXtremeExtra.StorageItem = class.class(KaitaiStruct)

function GrowtopiaWorld.StorageBoxXtremeExtra.StorageItem:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.StorageBoxXtremeExtra.StorageItem:_read()
  self.pad1 = self._io:read_bytes(3)
  self.item_id = self._io:read_u4le()
  self.pad2 = self._io:read_bytes(2)
  self.item_amt = self._io:read_u4le()
end


GrowtopiaWorld.StormyCloudExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.StormyCloudExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.StormyCloudExtra:_read()
  self.sting_duration = self._io:read_u4le()
  self.is_solid = self._io:read_u4le()
  self.non_solid_duration = self._io:read_u4le()
end


GrowtopiaWorld.TemporaryPlatformExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.TemporaryPlatformExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.TemporaryPlatformExtra:_read()
  self.unk1 = self._io:read_u4le()
end


GrowtopiaWorld.TesseractManipulatorExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.TesseractManipulatorExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.TesseractManipulatorExtra:_read()
  self.gems_left = self._io:read_u4le()
  self.next_update_ms = self._io:read_u4le()
  self.item_id = self._io:read_u4le()
  self.enabled = self._io:read_u4le()
end


GrowtopiaWorld.TombRobberExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.TombRobberExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.TombRobberExtra:_read()
end


GrowtopiaWorld.TrainingPortExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.TrainingPortExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.TrainingPortExtra:_read()
  self.fish_lb = self._io:read_u4le()
  self.status = self._io:read_u2le()
  self.item_id = self._io:read_u4le()
  self.total_exp = self._io:read_u4le()
  self.unk1 = self._io:read_bytes(8)
  self.fish_level = self._io:read_u4le()
  self.unk2 = self._io:read_u4le()
  self.unk3 = self._io:read_bytes(5)
end


GrowtopiaWorld.UnknownExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.UnknownExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.UnknownExtra:_read()
  self.this_is_just_to_error_out_kaitai_pls = self._io:read_bytes_full()
end

-- 
-- This type is just to error out kaitai. So if you encounter any error, 
-- please either give the world name or dump the world and submit it to me
-- (81739844+badewen@users.noreply.github.com).  

GrowtopiaWorld.VendingMachineExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.VendingMachineExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.VendingMachineExtra:_read()
  self.item_id = self._io:read_u4le()
  self.price = self._io:read_s4le()
end


GrowtopiaWorld.VipEntranceExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.VipEntranceExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.VipEntranceExtra:_read()
  self.unk1 = self._io:read_u1()
  self.owner_userid = self._io:read_u4le()
  self.num_allowed_userids = self._io:read_u4le()
  self.allowed_userids = {}
  for i = 0, self.num_allowed_userids - 1 do
    self.allowed_userids[i + 1] = self._io:read_u4le()
  end
end


GrowtopiaWorld.WeatherMachine1Extra = class.class(KaitaiStruct)

function GrowtopiaWorld.WeatherMachine1Extra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.WeatherMachine1Extra:_read()
  self.settings = self._io:read_bytes(4)
end


GrowtopiaWorld.WeatherMachine2Extra = class.class(KaitaiStruct)

function GrowtopiaWorld.WeatherMachine2Extra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.WeatherMachine2Extra:_read()
  self.item_id = self._io:read_u4le()
  self.gravity = self._io:read_u4le()
  self.flag = self._io:read_u1()
end


GrowtopiaWorld.WorldObject = class.class(KaitaiStruct)

function GrowtopiaWorld.WorldObject:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.WorldObject:_read()
  self.item_id = self._io:read_u2le()
  self.x = self._io:read_f4le()
  self.y = self._io:read_f4le()
  self.amount = self._io:read_u1()
  self.flag = self._io:read_u1()
  self.uid = self._io:read_u4le()
end


GrowtopiaWorld.WorldTile = class.class(KaitaiStruct)

function GrowtopiaWorld.WorldTile:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.WorldTile:_read()
  self.fg = self._io:read_u2le()
  self.bg = self._io:read_u2le()
  if  ((self.fg > 25000) or (self.bg > 25000))  then
    self.invalid_tile_fg_bg_kaitai_crasher = self._io:read_bytes_full()
  end
  self.parent_block_index = self._io:read_u2le()
  self.flag = self._io:read_u2le()
  if self.flag & 2 == 2 then
    self.parent_lock = self._io:read_u2le()
  end
  if self.flag & 1 == 1 then
    self.extra_data_type = self._io:read_u1()
  end
  if self.flag & 1 == 1 then
    local _on = self.extra_data_type
    if _on == 1 then
      self.tile_extra = GrowtopiaWorld.DoorExtra(self._io, self, self._root)
    elseif _on == 10 then
      self.tile_extra = GrowtopiaWorld.AchievementBlockExtra(self._io, self, self._root)
    elseif _on == 11 then
      self.tile_extra = GrowtopiaWorld.HeartMonitorExtra(self._io, self, self._root)
    elseif _on == 14 then
      self.tile_extra = GrowtopiaWorld.MannequinExtra(self._io, self, self._root)
    elseif _on == 15 then
      self.tile_extra = GrowtopiaWorld.MagicEggExtra(self._io, self, self._root)
    elseif _on == 16 then
      self.tile_extra = GrowtopiaWorld.GameGraveExtra(self._io, self, self._root)
    elseif _on == 17 then
      self.tile_extra = GrowtopiaWorld.GameGeneratorExtra(self._io, self, self._root)
    elseif _on == 18 then
      self.tile_extra = GrowtopiaWorld.XenoniteExtra(self._io, self, self._root)
    elseif _on == 19 then
      self.tile_extra = GrowtopiaWorld.PhoneBoothExtra(self._io, self, self._root)
    elseif _on == 2 then
      self.tile_extra = GrowtopiaWorld.SignExtra(self._io, self, self._root)
    elseif _on == 20 then
      self.tile_extra = GrowtopiaWorld.CrystalExtra(self._io, self, self._root)
    elseif _on == 21 then
      self.tile_extra = GrowtopiaWorld.CrimeInProgressExtra(self._io, self, self._root)
    elseif _on == 22 then
      self.tile_extra = GrowtopiaWorld.SpotlightExtra(self._io, self, self._root)
    elseif _on == 23 then
      self.tile_extra = GrowtopiaWorld.DisplayBlockExtra(self._io, self, self._root)
    elseif _on == 24 then
      self.tile_extra = GrowtopiaWorld.VendingMachineExtra(self._io, self, self._root)
    elseif _on == 25 then
      self.tile_extra = GrowtopiaWorld.FishTankPortExtra(self._io, self, self._root)
    elseif _on == 26 then
      self.tile_extra = GrowtopiaWorld.SolarCollectorExtra(self._io, self, self._root)
    elseif _on == 27 then
      self.tile_extra = GrowtopiaWorld.ForgeExtra(self._io, self, self._root)
    elseif _on == 28 then
      self.tile_extra = GrowtopiaWorld.GivingTreeExtra(self._io, self, self._root)
    elseif _on == 3 then
      self.tile_extra = GrowtopiaWorld.LockExtra(self._io, self, self._root)
    elseif _on == 30 then
      self.tile_extra = GrowtopiaWorld.SteamOrganExtra(self._io, self, self._root)
    elseif _on == 31 then
      self.tile_extra = GrowtopiaWorld.SilkWormExtra(self._io, self, self._root)
    elseif _on == 32 then
      self.tile_extra = GrowtopiaWorld.SewingMachineExtra(self._io, self, self._root)
    elseif _on == 33 then
      self.tile_extra = GrowtopiaWorld.CountryFlagExtra(self._io, self, self._root)
    elseif _on == 34 then
      self.tile_extra = GrowtopiaWorld.LobsterTrapExtra(self._io, self, self._root)
    elseif _on == 35 then
      self.tile_extra = GrowtopiaWorld.PaintingEaselExtra(self._io, self, self._root)
    elseif _on == 36 then
      self.tile_extra = GrowtopiaWorld.PetBattleCageExtra(self._io, self, self._root)
    elseif _on == 37 then
      self.tile_extra = GrowtopiaWorld.PetTrainerExtra(self._io, self, self._root)
    elseif _on == 38 then
      self.tile_extra = GrowtopiaWorld.SteamEngineExtra(self._io, self, self._root)
    elseif _on == 39 then
      self.tile_extra = GrowtopiaWorld.LockBotExtra(self._io, self, self._root)
    elseif _on == 4 then
      self.tile_extra = GrowtopiaWorld.SeedExtra(self._io, self, self._root)
    elseif _on == 40 then
      self.tile_extra = GrowtopiaWorld.WeatherMachine1Extra(self._io, self, self._root)
    elseif _on == 41 then
      self.tile_extra = GrowtopiaWorld.SpiritStorageUnitExtra(self._io, self, self._root)
    elseif _on == 42 then
      self.tile_extra = GrowtopiaWorld.DataBedrockExtra(self._io, self, self._root)
    elseif _on == 43 then
      self.tile_extra = GrowtopiaWorld.ShelfExtra(self._io, self, self._root)
    elseif _on == 44 then
      self.tile_extra = GrowtopiaWorld.VipEntranceExtra(self._io, self, self._root)
    elseif _on == 45 then
      self.tile_extra = GrowtopiaWorld.ChallengeTimerExtra(self._io, self, self._root)
    elseif _on == 47 then
      self.tile_extra = GrowtopiaWorld.FishWallMountExtra(self._io, self, self._root)
    elseif _on == 48 then
      self.tile_extra = GrowtopiaWorld.PortraitExtra(self._io, self, self._root)
    elseif _on == 49 then
      self.tile_extra = GrowtopiaWorld.WeatherMachine2Extra(self._io, self, self._root)
    elseif _on == 50 then
      self.tile_extra = GrowtopiaWorld.FossilPrepStationExtra(self._io, self, self._root)
    elseif _on == 51 then
      self.tile_extra = GrowtopiaWorld.DnaExtractorExtra(self._io, self, self._root)
    elseif _on == 52 then
      self.tile_extra = GrowtopiaWorld.HowlerExtra(self._io, self, self._root)
    elseif _on == 53 then
      self.tile_extra = GrowtopiaWorld.ChemsynthTankExtra(self._io, self, self._root)
    elseif _on == 54 then
      self.tile_extra = GrowtopiaWorld.StorageBoxXtremeExtra(self._io, self, self._root)
    elseif _on == 55 then
      self.tile_extra = GrowtopiaWorld.CookingOvenExtra(self._io, self, self._root)
    elseif _on == 56 then
      self.tile_extra = GrowtopiaWorld.AudioRackExtra(self._io, self, self._root)
    elseif _on == 57 then
      self.tile_extra = GrowtopiaWorld.GeigerChargerExtra(self._io, self, self._root)
    elseif _on == 58 then
      self.tile_extra = GrowtopiaWorld.AdventureBeginsExtra(self._io, self, self._root)
    elseif _on == 59 then
      self.tile_extra = GrowtopiaWorld.TombRobberExtra(self._io, self, self._root)
    elseif _on == 60 then
      self.tile_extra = GrowtopiaWorld.BalloonOMaticExtra(self._io, self, self._root)
    elseif _on == 61 then
      self.tile_extra = GrowtopiaWorld.TrainingPortExtra(self._io, self, self._root)
    elseif _on == 62 then
      self.tile_extra = GrowtopiaWorld.ItemSuckerExtra(self._io, self, self._root)
    elseif _on == 63 then
      self.tile_extra = GrowtopiaWorld.CybotExtra(self._io, self, self._root)
    elseif _on == 65 then
      self.tile_extra = GrowtopiaWorld.GuildExtra(self._io, self, self._root)
    elseif _on == 66 then
      self.tile_extra = GrowtopiaWorld.GrowscanExtra(self._io, self, self._root)
    elseif _on == 67 then
      self.tile_extra = GrowtopiaWorld.ContainmentFieldPowerNodeExtra(self._io, self, self._root)
    elseif _on == 68 then
      self.tile_extra = GrowtopiaWorld.SpiritBoardExtra(self._io, self, self._root)
    elseif _on == 69 then
      self.tile_extra = GrowtopiaWorld.TesseractManipulatorExtra(self._io, self, self._root)
    elseif _on == 72 then
      self.tile_extra = GrowtopiaWorld.StormyCloudExtra(self._io, self, self._root)
    elseif _on == 73 then
      self.tile_extra = GrowtopiaWorld.TemporaryPlatformExtra(self._io, self, self._root)
    elseif _on == 74 then
      self.tile_extra = GrowtopiaWorld.SafeVaultExtra(self._io, self, self._root)
    elseif _on == 75 then
      self.tile_extra = GrowtopiaWorld.AngelicCountingCloudExtra(self._io, self, self._root)
    elseif _on == 77 then
      self.tile_extra = GrowtopiaWorld.InfinityWeatherMachineExtra(self._io, self, self._root)
    elseif _on == 79 then
      self.tile_extra = GrowtopiaWorld.PineappleGuzzlerExtra(self._io, self, self._root)
    elseif _on == 8 then
      self.tile_extra = GrowtopiaWorld.DiceExtra(self._io, self, self._root)
    elseif _on == 80 then
      self.tile_extra = GrowtopiaWorld.KrakensGalaticBlockExtra(self._io, self, self._root)
    elseif _on == 81 then
      self.tile_extra = GrowtopiaWorld.FriendsEntranceExtra(self._io, self, self._root)
    elseif _on == 9 then
      self.tile_extra = GrowtopiaWorld.ProviderExtra(self._io, self, self._root)
    else
      self.tile_extra = GrowtopiaWorld.UnknownExtra(self._io, self, self._root)
    end
  end
  if  (( ((self.flag & 1 == 1) and (self.extra_data_type == 36)) ) or (self.fg == 15546) or (self.fg == 14666) or (self.fg == 14962) or (self.fg == 14662))  then
    self.cbor_data = GrowtopiaWorld.CborData(self._io, self, self._root)
  end
end

-- 
-- This type is just to error out kaitai. If this is 
-- encountered, then maybe there was a parsing error.
-- Please report :)

GrowtopiaWorld.XenoniteExtra = class.class(KaitaiStruct)

function GrowtopiaWorld.XenoniteExtra:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function GrowtopiaWorld.XenoniteExtra:_read()
  self.unk1 = self._io:read_bytes(5)
end


