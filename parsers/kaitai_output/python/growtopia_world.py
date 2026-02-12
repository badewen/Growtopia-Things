# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO
from enum import IntEnum


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class GrowtopiaWorld(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super(GrowtopiaWorld, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.version = self._io.read_u2le()
        self.unk1 = self._io.read_u4le()
        self.name = GrowtopiaWorld.GtStr(self._io, self, self._root)
        self.width = self._io.read_u4le()
        self.height = self._io.read_u4le()
        self.num_tiles = self._io.read_u4le()
        self.unk2 = self._io.read_bytes(5)
        self.tiles = []
        for i in range(self.num_tiles):
            self.tiles.append(GrowtopiaWorld.WorldTile(self._io, self, self._root))

        self.unk3 = self._io.read_bytes(12)
        self.num_objects = self._io.read_u4le()
        self.last_object_uid = self._io.read_u4le()
        self.objects = []
        for i in range(self.num_objects):
            self.objects.append(GrowtopiaWorld.WorldObject(self._io, self, self._root))



    def _fetch_instances(self):
        pass
        self.name._fetch_instances()
        for i in range(len(self.tiles)):
            pass
            self.tiles[i]._fetch_instances()

        for i in range(len(self.objects)):
            pass
            self.objects[i]._fetch_instances()


    class ARGB(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.ARGB, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.a = self._io.read_u1()
            self.r = self._io.read_u1()
            self.g = self._io.read_u1()
            self.b = self._io.read_u1()


        def _fetch_instances(self):
            pass


    class AchievementBlockExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.AchievementBlockExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.unk1 = self._io.read_u4le()
            self.achievement_id = self._io.read_u1()


        def _fetch_instances(self):
            pass


    class AdventureBeginsExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.AdventureBeginsExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            pass


        def _fetch_instances(self):
            pass


    class AngelicCountingCloudExtra(KaitaiStruct):

        class States(IntEnum):
            raffling = 1
            done_raffling = 2
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.AngelicCountingCloudExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.state = KaitaiStream.resolve_enum(GrowtopiaWorld.AngelicCountingCloudExtra.States, self._io.read_u4le())
            self.unk1 = self._io.read_u2le()
            if self.state == GrowtopiaWorld.AngelicCountingCloudExtra.States.done_raffling:
                pass
                self.ascii_code = self._io.read_u1()



        def _fetch_instances(self):
            pass
            if self.state == GrowtopiaWorld.AngelicCountingCloudExtra.States.done_raffling:
                pass



    class AudioRackExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.AudioRackExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.note = GrowtopiaWorld.GtStr(self._io, self, self._root)
            self.volume = self._io.read_u4le()


        def _fetch_instances(self):
            pass
            self.note._fetch_instances()


    class BalloonOMaticExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.BalloonOMaticExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.total_rarity = self._io.read_u4le()
            self.team_type = self._io.read_u1()


        def _fetch_instances(self):
            pass


    class CborData(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.CborData, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.len_data = self._io.read_u4le()
            self.data = self._io.read_bytes(self.len_data)


        def _fetch_instances(self):
            pass


    class ChallengeTimerExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.ChallengeTimerExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            pass


        def _fetch_instances(self):
            pass


    class ChemsynthTankExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.ChemsynthTankExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.current_chem_id = self._io.read_u4le()
            self.supposed_chem_id = self._io.read_u4le()


        def _fetch_instances(self):
            pass


    class ContainmentFieldPowerNodeExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.ContainmentFieldPowerNodeExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.time_ms = self._io.read_u4le()
            self.num_linked_nodes = self._io.read_u4le()
            self.linked_nodes = []
            for i in range(self.num_linked_nodes):
                self.linked_nodes.append(self._io.read_u4le())



        def _fetch_instances(self):
            pass
            for i in range(len(self.linked_nodes)):
                pass



    class CookingOvenExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.CookingOvenExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.temp_level = self._io.read_u4le()
            self.ingredient_list_size = self._io.read_u4le()
            self.ingredients = []
            for i in range(self.ingredient_list_size // 2):
                self.ingredients.append(GrowtopiaWorld.CookingOvenExtra.Ingredient(self._io, self, self._root))

            self.unk1 = self._io.read_u4le()
            self.unk2 = self._io.read_u4le()
            self.unk3 = self._io.read_u4le()


        def _fetch_instances(self):
            pass
            for i in range(len(self.ingredients)):
                pass
                self.ingredients[i]._fetch_instances()


        class Ingredient(KaitaiStruct):
            def __init__(self, _io, _parent=None, _root=None):
                super(GrowtopiaWorld.CookingOvenExtra.Ingredient, self).__init__(_io)
                self._parent = _parent
                self._root = _root
                self._read()

            def _read(self):
                self.item_id = self._io.read_u4le()
                self.time_added = self._io.read_u4le()


            def _fetch_instances(self):
                pass



    class CountryFlagExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.CountryFlagExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            if self._parent.fg == 3394:
                pass
                self.country = GrowtopiaWorld.GtStr(self._io, self, self._root)



        def _fetch_instances(self):
            pass
            if self._parent.fg == 3394:
                pass
                self.country._fetch_instances()



    class CrimeInProgressExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.CrimeInProgressExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.crime_name = GrowtopiaWorld.GtStr(self._io, self, self._root)
            self.crime_index = self._io.read_u4le()
            self.unk1 = self._io.read_u1()


        def _fetch_instances(self):
            pass
            self.crime_name._fetch_instances()


    class CrystalExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.CrystalExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.num_crystals = self._io.read_u2le()
            self.crystals = []
            for i in range(self.num_crystals):
                self.crystals.append(self._io.read_u1())



        def _fetch_instances(self):
            pass
            for i in range(len(self.crystals)):
                pass



    class CybotExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.CybotExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.num_commands = self._io.read_u4le()
            self.commands = []
            for i in range(self.num_commands):
                self.commands.append(GrowtopiaWorld.CybotExtra.Command(self._io, self, self._root))

            self.timer = self._io.read_u4le()
            self.is_activated = self._io.read_u4le()


        def _fetch_instances(self):
            pass
            for i in range(len(self.commands)):
                pass
                self.commands[i]._fetch_instances()


        class Command(KaitaiStruct):
            def __init__(self, _io, _parent=None, _root=None):
                super(GrowtopiaWorld.CybotExtra.Command, self).__init__(_io)
                self._parent = _parent
                self._root = _root
                self._read()

            def _read(self):
                self.command_id = self._io.read_u4le()
                self.is_command_used = self._io.read_u4le()
                self.unk1 = self._io.read_bytes(7)


            def _fetch_instances(self):
                pass



    class DataBedrockExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.DataBedrockExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.unk1 = self._io.read_bytes(17)
            self.pad1 = self._io.read_bytes(4)


        def _fetch_instances(self):
            pass


    class DiceExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.DiceExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.symbol = self._io.read_u1()


        def _fetch_instances(self):
            pass


    class DisplayBlockExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.DisplayBlockExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.item_id = self._io.read_u4le()


        def _fetch_instances(self):
            pass


    class DnaExtractorExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.DnaExtractorExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            pass


        def _fetch_instances(self):
            pass


    class DoorExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.DoorExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.label = GrowtopiaWorld.GtStr(self._io, self, self._root)
            self.unk1 = self._io.read_u1()


        def _fetch_instances(self):
            pass
            self.label._fetch_instances()


    class FishTankPortExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.FishTankPortExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.flags = self._io.read_u1()
            self.fish_data_length = self._io.read_u4le()
            self.fishes = []
            for i in range(self.fish_data_length // 2):
                self.fishes.append(GrowtopiaWorld.FishTankPortExtra.FishInfo(self._io, self, self._root))



        def _fetch_instances(self):
            pass
            for i in range(len(self.fishes)):
                pass
                self.fishes[i]._fetch_instances()


        class FishInfo(KaitaiStruct):
            def __init__(self, _io, _parent=None, _root=None):
                super(GrowtopiaWorld.FishTankPortExtra.FishInfo, self).__init__(_io)
                self._parent = _parent
                self._root = _root
                self._read()

            def _read(self):
                self.item_id = self._io.read_u4le()
                self.lbs = self._io.read_u4le()


            def _fetch_instances(self):
                pass



    class FishWallMountExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.FishWallMountExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.label = GrowtopiaWorld.GtStr(self._io, self, self._root)
            self.item_id = self._io.read_u4le()
            self.lbs = self._io.read_u1()


        def _fetch_instances(self):
            pass
            self.label._fetch_instances()


    class ForgeExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.ForgeExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.temperature = self._io.read_u4le()


        def _fetch_instances(self):
            pass


    class FossilPrepStationExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.FossilPrepStationExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.unk1 = self._io.read_u4le()


        def _fetch_instances(self):
            pass


    class FriendsEntranceExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.FriendsEntranceExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.owner_userid = self._io.read_u4le()
            self.unk1 = self._io.read_bytes(2)
            self.num_allowed_friends_userid = self._io.read_u2le()
            self.allowed_friends_userid = []
            for i in range(self.num_allowed_friends_userid):
                self.allowed_friends_userid.append(self._io.read_u4le())



        def _fetch_instances(self):
            pass
            for i in range(len(self.allowed_friends_userid)):
                pass



    class GameGeneratorExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.GameGeneratorExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            pass


        def _fetch_instances(self):
            pass


    class GameGraveExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.GameGraveExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.team_id = self._io.read_u1()


        def _fetch_instances(self):
            pass


    class GeigerChargerExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.GeigerChargerExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.unk1 = self._io.read_bytes(4)


        def _fetch_instances(self):
            pass


    class GivingTreeExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.GivingTreeExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.harvested = self._io.read_u1()
            self.age = self._io.read_u2le()
            self.unk1 = self._io.read_u2le()
            self.decoration_percentage = self._io.read_u1()


        def _fetch_instances(self):
            pass


    class GrowscanExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.GrowscanExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.unk1 = self._io.read_u1()


        def _fetch_instances(self):
            pass


    class GtStr(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.GtStr, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.len_data = self._io.read_u2le()
            self.str = (self._io.read_bytes(self.len_data)).decode(u"ASCII")


        def _fetch_instances(self):
            pass


    class GuildExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.GuildExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.unk1 = self._io.read_bytes(17)


        def _fetch_instances(self):
            pass


    class HeartMonitorExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.HeartMonitorExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.user_id = self._io.read_u4le()
            self.grow_id = GrowtopiaWorld.GtStr(self._io, self, self._root)


        def _fetch_instances(self):
            pass
            self.grow_id._fetch_instances()


    class HowlerExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.HowlerExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            pass


        def _fetch_instances(self):
            pass


    class InfinityWeatherMachineExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.InfinityWeatherMachineExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.interval_mins = self._io.read_u4le()
            self.num_weather_machines = self._io.read_u4le()
            self.weather_machines = []
            for i in range(self.num_weather_machines):
                self.weather_machines.append(self._io.read_u4le())



        def _fetch_instances(self):
            pass
            for i in range(len(self.weather_machines)):
                pass



    class ItemSuckerExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.ItemSuckerExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.item_id = self._io.read_u4le()
            self.item_amount = self._io.read_u4le()
            self.flags = self._io.read_u2le()
            self.item_limit = self._io.read_u4le()


        def _fetch_instances(self):
            pass


    class KrakensGalaticBlockExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.KrakensGalaticBlockExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.pattern_number = self._io.read_u1()
            self.unk1 = self._io.read_bytes(4)
            self.color_rgb = self._io.read_bytes(3)


        def _fetch_instances(self):
            pass


    class LobsterTrapExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.LobsterTrapExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            pass


        def _fetch_instances(self):
            pass


    class LockBotExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.LockBotExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.time_passed_sec = self._io.read_u4le()


        def _fetch_instances(self):
            pass


    class LockExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.LockExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.flag = self._io.read_u1()
            self.owner_user_id = self._io.read_u4le()
            self.num_authorized_userids = self._io.read_u4le()
            self.authorized_userids = []
            for i in range(self.num_authorized_userids):
                self.authorized_userids.append(self._io.read_u4le())

            self.minimum_level = self._io.read_u1()
            self.unk1 = self._io.read_bytes(7)
            if self._parent.fg == 5814:
                pass
                self.guild_locks_unk = self._io.read_bytes(16)



        def _fetch_instances(self):
            pass
            for i in range(len(self.authorized_userids)):
                pass

            if self._parent.fg == 5814:
                pass



    class MagicEggExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.MagicEggExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.egg_amount = self._io.read_u4le()


        def _fetch_instances(self):
            pass


    class MannequinExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.MannequinExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.label = GrowtopiaWorld.GtStr(self._io, self, self._root)
            self.unk1 = self._io.read_u1()
            self.unk2 = self._io.read_u2le()
            self.unk3 = self._io.read_u2le()
            self.hat = self._io.read_u2le()
            self.shirt = self._io.read_u2le()
            self.pants = self._io.read_u2le()
            self.boots = self._io.read_u2le()
            self.face = self._io.read_u2le()
            self.hand = self._io.read_u2le()
            self.back = self._io.read_u2le()
            self.hair = self._io.read_u2le()
            self.neck = self._io.read_u2le()


        def _fetch_instances(self):
            pass
            self.label._fetch_instances()


    class PaintingEaselExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.PaintingEaselExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.item_id = self._io.read_u4le()
            self.label = GrowtopiaWorld.GtStr(self._io, self, self._root)


        def _fetch_instances(self):
            pass
            self.label._fetch_instances()


    class PetBattleCageExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.PetBattleCageExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.label = GrowtopiaWorld.GtStr(self._io, self, self._root)
            self.base_pet = self._io.read_u4le()
            self.combined_pet_1 = self._io.read_u4le()
            self.combined_pet_2 = self._io.read_u4le()


        def _fetch_instances(self):
            pass
            self.label._fetch_instances()


    class PetTrainerExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.PetTrainerExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.name = GrowtopiaWorld.GtStr(self._io, self, self._root)
            self.num_pets = self._io.read_u4le()
            self.unk1 = self._io.read_u4le()
            self.pets = []
            for i in range(self.num_pets):
                self.pets.append(self._io.read_u4le())



        def _fetch_instances(self):
            pass
            self.name._fetch_instances()
            for i in range(len(self.pets)):
                pass



    class PhoneBoothExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.PhoneBoothExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.hat = self._io.read_u2le()
            self.shirt = self._io.read_u2le()
            self.pants = self._io.read_u2le()
            self.shoes = self._io.read_u2le()
            self.face = self._io.read_u2le()
            self.hand = self._io.read_u2le()
            self.back = self._io.read_u2le()
            self.hair = self._io.read_u2le()
            self.neck = self._io.read_u2le()


        def _fetch_instances(self):
            pass


    class PineappleGuzzlerExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.PineappleGuzzlerExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.pineapple_fed = self._io.read_u4le()


        def _fetch_instances(self):
            pass


    class PortraitExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.PortraitExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.label = GrowtopiaWorld.GtStr(self._io, self, self._root)
            self.unk1 = self._io.read_u4le()
            self.unk2 = self._io.read_u4le()
            self.unk3 = self._io.read_bytes(5)
            self.unk4 = self._io.read_u1()
            self.unk5 = self._io.read_u2le()
            self.face = self._io.read_u2le()
            self.hat = self._io.read_u2le()
            self.hair = self._io.read_u2le()
            self.unk6 = self._io.read_u4le()
            if self.hat == 12958:
                pass
                self.infinity_crown_data = GrowtopiaWorld.GtStr(self._io, self, self._root)



        def _fetch_instances(self):
            pass
            self.label._fetch_instances()
            if self.hat == 12958:
                pass
                self.infinity_crown_data._fetch_instances()



    class ProviderExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.ProviderExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.growth = self._io.read_u4le()
            if self._parent.fg == 10656:
                pass
                self.pad1 = self._io.read_bytes(4)



        def _fetch_instances(self):
            pass
            if self._parent.fg == 10656:
                pass



    class SafeVaultExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.SafeVaultExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            pass


        def _fetch_instances(self):
            pass


    class SeedExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.SeedExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.age = self._io.read_u4le()
            self.fruit_count = self._io.read_u1()


        def _fetch_instances(self):
            pass


    class SewingMachineExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.SewingMachineExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.num_bolt_ids = self._io.read_u4le()
            self.bolt_ids = []
            for i in range(self.num_bolt_ids):
                self.bolt_ids.append(self._io.read_u4le())



        def _fetch_instances(self):
            pass
            for i in range(len(self.bolt_ids)):
                pass



    class ShelfExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.ShelfExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.top_left_item_id = self._io.read_u4le()
            self.top_right_item_id = self._io.read_u4le()
            self.bottom_left_item_id = self._io.read_u4le()
            self.bottom_right_item_id = self._io.read_u4le()


        def _fetch_instances(self):
            pass


    class SignExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.SignExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.label = GrowtopiaWorld.GtStr(self._io, self, self._root)
            self.pad1 = self._io.read_bytes(4)


        def _fetch_instances(self):
            pass
            self.label._fetch_instances()


    class SilkWormExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.SilkWormExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.flags = self._io.read_u1()
            self.name = GrowtopiaWorld.GtStr(self._io, self, self._root)
            self.age_sec = self._io.read_u4le()
            self.unk1 = self._io.read_u4le()
            self.unk2 = self._io.read_u4le()
            self.can_be_fed = self._io.read_u1()
            self.food_saturation = self._io.read_u4le()
            self.water_saturation = self._io.read_u4le()
            self.color_argb = GrowtopiaWorld.ARGB(self._io, self, self._root)
            self.sick_duration = self._io.read_u4le()


        def _fetch_instances(self):
            pass
            self.name._fetch_instances()
            self.color_argb._fetch_instances()


    class SolarCollectorExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.SolarCollectorExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.unk1 = self._io.read_bytes(5)


        def _fetch_instances(self):
            pass


    class SpiritBoardExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.SpiritBoardExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.player_required = self._io.read_u4le()
            self.unk1 = GrowtopiaWorld.GtStr(self._io, self, self._root)
            self.command = GrowtopiaWorld.GtStr(self._io, self, self._root)
            self.num_required_items = self._io.read_u4le()
            self.required_items = []
            for i in range(self.num_required_items):
                self.required_items.append(self._io.read_u4le())



        def _fetch_instances(self):
            pass
            self.unk1._fetch_instances()
            self.command._fetch_instances()
            for i in range(len(self.required_items)):
                pass



    class SpiritStorageUnitExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.SpiritStorageUnitExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.ghost_jar_count = self._io.read_u4le()


        def _fetch_instances(self):
            pass


    class SpotlightExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.SpotlightExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            pass


        def _fetch_instances(self):
            pass


    class SteamEngineExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.SteamEngineExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.temperature = self._io.read_u4le()


        def _fetch_instances(self):
            pass


    class SteamOrganExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.SteamOrganExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.instrument_type = self._io.read_u1()
            self.note = self._io.read_u4le()


        def _fetch_instances(self):
            pass


    class StorageBoxXtremeExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.StorageBoxXtremeExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.data_len = self._io.read_u2le()
            self.items = []
            for i in range(self.data_len // 13):
                self.items.append(GrowtopiaWorld.StorageBoxXtremeExtra.StorageItem(self._io, self, self._root))



        def _fetch_instances(self):
            pass
            for i in range(len(self.items)):
                pass
                self.items[i]._fetch_instances()


        class StorageItem(KaitaiStruct):
            def __init__(self, _io, _parent=None, _root=None):
                super(GrowtopiaWorld.StorageBoxXtremeExtra.StorageItem, self).__init__(_io)
                self._parent = _parent
                self._root = _root
                self._read()

            def _read(self):
                self.pad1 = self._io.read_bytes(3)
                self.item_id = self._io.read_u4le()
                self.pad2 = self._io.read_bytes(2)
                self.item_amt = self._io.read_u4le()


            def _fetch_instances(self):
                pass



    class StormyCloudExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.StormyCloudExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.sting_duration = self._io.read_u4le()
            self.is_solid = self._io.read_u4le()
            self.non_solid_duration = self._io.read_u4le()


        def _fetch_instances(self):
            pass


    class TemporaryPlatformExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.TemporaryPlatformExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.unk1 = self._io.read_u4le()


        def _fetch_instances(self):
            pass


    class TesseractManipulatorExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.TesseractManipulatorExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.gems_left = self._io.read_u4le()
            self.next_update_ms = self._io.read_u4le()
            self.item_id = self._io.read_u4le()
            self.enabled = self._io.read_u4le()


        def _fetch_instances(self):
            pass


    class TombRobberExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.TombRobberExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            pass


        def _fetch_instances(self):
            pass


    class TrainingPortExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.TrainingPortExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.fish_lb = self._io.read_u4le()
            self.status = self._io.read_u2le()
            self.item_id = self._io.read_u4le()
            self.total_exp = self._io.read_u4le()
            self.unk1 = self._io.read_bytes(8)
            self.fish_level = self._io.read_u4le()
            self.unk2 = self._io.read_u4le()
            self.unk3 = self._io.read_bytes(5)


        def _fetch_instances(self):
            pass


    class UnknownExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.UnknownExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.this_is_just_to_error_out_kaitai_pls = self._io.read_bytes_full()


        def _fetch_instances(self):
            pass


    class VendingMachineExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.VendingMachineExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.item_id = self._io.read_u4le()
            self.price = self._io.read_s4le()


        def _fetch_instances(self):
            pass


    class VipEntranceExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.VipEntranceExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.unk1 = self._io.read_u1()
            self.owner_userid = self._io.read_u4le()
            self.num_allowed_userids = self._io.read_u4le()
            self.allowed_userids = []
            for i in range(self.num_allowed_userids):
                self.allowed_userids.append(self._io.read_u4le())



        def _fetch_instances(self):
            pass
            for i in range(len(self.allowed_userids)):
                pass



    class WeatherMachine1Extra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.WeatherMachine1Extra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.settings = self._io.read_bytes(4)


        def _fetch_instances(self):
            pass


    class WeatherMachine2Extra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.WeatherMachine2Extra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.item_id = self._io.read_u4le()
            self.gravity = self._io.read_u4le()
            self.flag = self._io.read_u1()


        def _fetch_instances(self):
            pass


    class WorldObject(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.WorldObject, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.item_id = self._io.read_u2le()
            self.x = self._io.read_f4le()
            self.y = self._io.read_f4le()
            self.amount = self._io.read_u1()
            self.flag = self._io.read_u1()
            self.uid = self._io.read_u4le()


        def _fetch_instances(self):
            pass


    class WorldTile(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.WorldTile, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.fg = self._io.read_u2le()
            self.bg = self._io.read_u2le()
            if  ((self.fg > 25000) or (self.bg > 25000)) :
                pass
                self.invalid_tile_fg_bg_kaitai_crasher = self._io.read_bytes_full()

            self.parent_block_index = self._io.read_u2le()
            self.flag = self._io.read_u2le()
            if self.flag & 2 == 2:
                pass
                self.parent_lock = self._io.read_u2le()

            if self.flag & 1 == 1:
                pass
                self.extra_data_type = self._io.read_u1()

            if self.flag & 1 == 1:
                pass
                _on = self.extra_data_type
                if _on == 1:
                    pass
                    self.tile_extra = GrowtopiaWorld.DoorExtra(self._io, self, self._root)
                elif _on == 10:
                    pass
                    self.tile_extra = GrowtopiaWorld.AchievementBlockExtra(self._io, self, self._root)
                elif _on == 11:
                    pass
                    self.tile_extra = GrowtopiaWorld.HeartMonitorExtra(self._io, self, self._root)
                elif _on == 14:
                    pass
                    self.tile_extra = GrowtopiaWorld.MannequinExtra(self._io, self, self._root)
                elif _on == 15:
                    pass
                    self.tile_extra = GrowtopiaWorld.MagicEggExtra(self._io, self, self._root)
                elif _on == 16:
                    pass
                    self.tile_extra = GrowtopiaWorld.GameGraveExtra(self._io, self, self._root)
                elif _on == 17:
                    pass
                    self.tile_extra = GrowtopiaWorld.GameGeneratorExtra(self._io, self, self._root)
                elif _on == 18:
                    pass
                    self.tile_extra = GrowtopiaWorld.XenoniteExtra(self._io, self, self._root)
                elif _on == 19:
                    pass
                    self.tile_extra = GrowtopiaWorld.PhoneBoothExtra(self._io, self, self._root)
                elif _on == 2:
                    pass
                    self.tile_extra = GrowtopiaWorld.SignExtra(self._io, self, self._root)
                elif _on == 20:
                    pass
                    self.tile_extra = GrowtopiaWorld.CrystalExtra(self._io, self, self._root)
                elif _on == 21:
                    pass
                    self.tile_extra = GrowtopiaWorld.CrimeInProgressExtra(self._io, self, self._root)
                elif _on == 22:
                    pass
                    self.tile_extra = GrowtopiaWorld.SpotlightExtra(self._io, self, self._root)
                elif _on == 23:
                    pass
                    self.tile_extra = GrowtopiaWorld.DisplayBlockExtra(self._io, self, self._root)
                elif _on == 24:
                    pass
                    self.tile_extra = GrowtopiaWorld.VendingMachineExtra(self._io, self, self._root)
                elif _on == 25:
                    pass
                    self.tile_extra = GrowtopiaWorld.FishTankPortExtra(self._io, self, self._root)
                elif _on == 26:
                    pass
                    self.tile_extra = GrowtopiaWorld.SolarCollectorExtra(self._io, self, self._root)
                elif _on == 27:
                    pass
                    self.tile_extra = GrowtopiaWorld.ForgeExtra(self._io, self, self._root)
                elif _on == 28:
                    pass
                    self.tile_extra = GrowtopiaWorld.GivingTreeExtra(self._io, self, self._root)
                elif _on == 3:
                    pass
                    self.tile_extra = GrowtopiaWorld.LockExtra(self._io, self, self._root)
                elif _on == 30:
                    pass
                    self.tile_extra = GrowtopiaWorld.SteamOrganExtra(self._io, self, self._root)
                elif _on == 31:
                    pass
                    self.tile_extra = GrowtopiaWorld.SilkWormExtra(self._io, self, self._root)
                elif _on == 32:
                    pass
                    self.tile_extra = GrowtopiaWorld.SewingMachineExtra(self._io, self, self._root)
                elif _on == 33:
                    pass
                    self.tile_extra = GrowtopiaWorld.CountryFlagExtra(self._io, self, self._root)
                elif _on == 34:
                    pass
                    self.tile_extra = GrowtopiaWorld.LobsterTrapExtra(self._io, self, self._root)
                elif _on == 35:
                    pass
                    self.tile_extra = GrowtopiaWorld.PaintingEaselExtra(self._io, self, self._root)
                elif _on == 36:
                    pass
                    self.tile_extra = GrowtopiaWorld.PetBattleCageExtra(self._io, self, self._root)
                elif _on == 37:
                    pass
                    self.tile_extra = GrowtopiaWorld.PetTrainerExtra(self._io, self, self._root)
                elif _on == 38:
                    pass
                    self.tile_extra = GrowtopiaWorld.SteamEngineExtra(self._io, self, self._root)
                elif _on == 39:
                    pass
                    self.tile_extra = GrowtopiaWorld.LockBotExtra(self._io, self, self._root)
                elif _on == 4:
                    pass
                    self.tile_extra = GrowtopiaWorld.SeedExtra(self._io, self, self._root)
                elif _on == 40:
                    pass
                    self.tile_extra = GrowtopiaWorld.WeatherMachine1Extra(self._io, self, self._root)
                elif _on == 41:
                    pass
                    self.tile_extra = GrowtopiaWorld.SpiritStorageUnitExtra(self._io, self, self._root)
                elif _on == 42:
                    pass
                    self.tile_extra = GrowtopiaWorld.DataBedrockExtra(self._io, self, self._root)
                elif _on == 43:
                    pass
                    self.tile_extra = GrowtopiaWorld.ShelfExtra(self._io, self, self._root)
                elif _on == 44:
                    pass
                    self.tile_extra = GrowtopiaWorld.VipEntranceExtra(self._io, self, self._root)
                elif _on == 45:
                    pass
                    self.tile_extra = GrowtopiaWorld.ChallengeTimerExtra(self._io, self, self._root)
                elif _on == 47:
                    pass
                    self.tile_extra = GrowtopiaWorld.FishWallMountExtra(self._io, self, self._root)
                elif _on == 48:
                    pass
                    self.tile_extra = GrowtopiaWorld.PortraitExtra(self._io, self, self._root)
                elif _on == 49:
                    pass
                    self.tile_extra = GrowtopiaWorld.WeatherMachine2Extra(self._io, self, self._root)
                elif _on == 50:
                    pass
                    self.tile_extra = GrowtopiaWorld.FossilPrepStationExtra(self._io, self, self._root)
                elif _on == 51:
                    pass
                    self.tile_extra = GrowtopiaWorld.DnaExtractorExtra(self._io, self, self._root)
                elif _on == 52:
                    pass
                    self.tile_extra = GrowtopiaWorld.HowlerExtra(self._io, self, self._root)
                elif _on == 53:
                    pass
                    self.tile_extra = GrowtopiaWorld.ChemsynthTankExtra(self._io, self, self._root)
                elif _on == 54:
                    pass
                    self.tile_extra = GrowtopiaWorld.StorageBoxXtremeExtra(self._io, self, self._root)
                elif _on == 55:
                    pass
                    self.tile_extra = GrowtopiaWorld.CookingOvenExtra(self._io, self, self._root)
                elif _on == 56:
                    pass
                    self.tile_extra = GrowtopiaWorld.AudioRackExtra(self._io, self, self._root)
                elif _on == 57:
                    pass
                    self.tile_extra = GrowtopiaWorld.GeigerChargerExtra(self._io, self, self._root)
                elif _on == 58:
                    pass
                    self.tile_extra = GrowtopiaWorld.AdventureBeginsExtra(self._io, self, self._root)
                elif _on == 59:
                    pass
                    self.tile_extra = GrowtopiaWorld.TombRobberExtra(self._io, self, self._root)
                elif _on == 60:
                    pass
                    self.tile_extra = GrowtopiaWorld.BalloonOMaticExtra(self._io, self, self._root)
                elif _on == 61:
                    pass
                    self.tile_extra = GrowtopiaWorld.TrainingPortExtra(self._io, self, self._root)
                elif _on == 62:
                    pass
                    self.tile_extra = GrowtopiaWorld.ItemSuckerExtra(self._io, self, self._root)
                elif _on == 63:
                    pass
                    self.tile_extra = GrowtopiaWorld.CybotExtra(self._io, self, self._root)
                elif _on == 65:
                    pass
                    self.tile_extra = GrowtopiaWorld.GuildExtra(self._io, self, self._root)
                elif _on == 66:
                    pass
                    self.tile_extra = GrowtopiaWorld.GrowscanExtra(self._io, self, self._root)
                elif _on == 67:
                    pass
                    self.tile_extra = GrowtopiaWorld.ContainmentFieldPowerNodeExtra(self._io, self, self._root)
                elif _on == 68:
                    pass
                    self.tile_extra = GrowtopiaWorld.SpiritBoardExtra(self._io, self, self._root)
                elif _on == 69:
                    pass
                    self.tile_extra = GrowtopiaWorld.TesseractManipulatorExtra(self._io, self, self._root)
                elif _on == 72:
                    pass
                    self.tile_extra = GrowtopiaWorld.StormyCloudExtra(self._io, self, self._root)
                elif _on == 73:
                    pass
                    self.tile_extra = GrowtopiaWorld.TemporaryPlatformExtra(self._io, self, self._root)
                elif _on == 74:
                    pass
                    self.tile_extra = GrowtopiaWorld.SafeVaultExtra(self._io, self, self._root)
                elif _on == 75:
                    pass
                    self.tile_extra = GrowtopiaWorld.AngelicCountingCloudExtra(self._io, self, self._root)
                elif _on == 77:
                    pass
                    self.tile_extra = GrowtopiaWorld.InfinityWeatherMachineExtra(self._io, self, self._root)
                elif _on == 79:
                    pass
                    self.tile_extra = GrowtopiaWorld.PineappleGuzzlerExtra(self._io, self, self._root)
                elif _on == 8:
                    pass
                    self.tile_extra = GrowtopiaWorld.DiceExtra(self._io, self, self._root)
                elif _on == 80:
                    pass
                    self.tile_extra = GrowtopiaWorld.KrakensGalaticBlockExtra(self._io, self, self._root)
                elif _on == 81:
                    pass
                    self.tile_extra = GrowtopiaWorld.FriendsEntranceExtra(self._io, self, self._root)
                elif _on == 9:
                    pass
                    self.tile_extra = GrowtopiaWorld.ProviderExtra(self._io, self, self._root)
                else:
                    pass
                    self.tile_extra = GrowtopiaWorld.UnknownExtra(self._io, self, self._root)

            if  (( ((self.flag & 1 == 1) and (self.extra_data_type == 36)) ) or (self.fg == 15546) or (self.fg == 14666) or (self.fg == 14962) or (self.fg == 14662)) :
                pass
                self.cbor_data = GrowtopiaWorld.CborData(self._io, self, self._root)



        def _fetch_instances(self):
            pass
            if  ((self.fg > 25000) or (self.bg > 25000)) :
                pass

            if self.flag & 2 == 2:
                pass

            if self.flag & 1 == 1:
                pass

            if self.flag & 1 == 1:
                pass
                _on = self.extra_data_type
                if _on == 1:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 10:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 11:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 14:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 15:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 16:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 17:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 18:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 19:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 2:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 20:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 21:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 22:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 23:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 24:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 25:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 26:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 27:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 28:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 3:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 30:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 31:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 32:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 33:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 34:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 35:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 36:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 37:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 38:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 39:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 4:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 40:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 41:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 42:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 43:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 44:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 45:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 47:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 48:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 49:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 50:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 51:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 52:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 53:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 54:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 55:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 56:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 57:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 58:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 59:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 60:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 61:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 62:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 63:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 65:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 66:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 67:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 68:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 69:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 72:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 73:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 74:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 75:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 77:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 79:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 8:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 80:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 81:
                    pass
                    self.tile_extra._fetch_instances()
                elif _on == 9:
                    pass
                    self.tile_extra._fetch_instances()
                else:
                    pass
                    self.tile_extra._fetch_instances()

            if  (( ((self.flag & 1 == 1) and (self.extra_data_type == 36)) ) or (self.fg == 15546) or (self.fg == 14666) or (self.fg == 14962) or (self.fg == 14662)) :
                pass
                self.cbor_data._fetch_instances()



    class XenoniteExtra(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(GrowtopiaWorld.XenoniteExtra, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.unk1 = self._io.read_bytes(5)


        def _fetch_instances(self):
            pass



