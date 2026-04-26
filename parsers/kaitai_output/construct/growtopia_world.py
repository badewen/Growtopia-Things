from construct import *
from construct.lib import *
import enum

growtopia_world__a_r_g_b = Struct(
	'a' / Int8ub,
	'r' / Int8ub,
	'g' / Int8ub,
	'b' / Int8ub,
)

growtopia_world__achievement_block_extra = Struct(
	'unk1' / Int32ul,
	'achievement_id' / Int8ub,
)

growtopia_world__adventure_begins_extra = Struct(
)

class growtopia_world__angelic_counting_cloud_extra__states(enum.IntEnum):
	raffling = 1
	done_raffling = 2

growtopia_world__angelic_counting_cloud_extra = Struct(
	'state' / Enum(Int32ul, growtopia_world__angelic_counting_cloud_extra__states),
	'unk1' / Int16ul,
	'ascii_code' / If(this.state == 'done_raffling', Int8ub),
)

growtopia_world__audio_rack_extra = Struct(
	'note' / LazyBound(lambda: growtopia_world__gt_str),
	'volume' / Int32ul,
)

growtopia_world__balloon_o_matic_extra = Struct(
	'total_rarity' / Int32ul,
	'team_type' / Int8ub,
)

growtopia_world__cbor_data = Struct(
	'len_data' / Int32ul,
	'data' / FixedSized(this.len_data, GreedyBytes),
)

growtopia_world__challenge_timer_extra = Struct(
)

growtopia_world__chemsynth_tank_extra = Struct(
	'current_chem_id' / Int32ul,
	'supposed_chem_id' / Int32ul,
)

growtopia_world__containment_field_power_node_extra = Struct(
	'time_ms' / Int32ul,
	'num_linked_nodes' / Int32ul,
	'linked_nodes' / Array(this.num_linked_nodes, Int32ul),
)

growtopia_world__cooking_oven_extra__ingredient = Struct(
	'item_id' / Int32ul,
	'time_added' / Int32ul,
)

growtopia_world__cooking_oven_extra = Struct(
	'temp_level' / Int32ul,
	'ingredient_list_size' / Int32ul,
	'ingredients' / Array(this.ingredient_list_size // 2, LazyBound(lambda: growtopia_world__cooking_oven_extra__ingredient)),
	'unk1' / Int32ul,
	'unk2' / Int32ul,
	'unk3' / Int32ul,
)

growtopia_world__country_flag_extra = Struct(
	'country' / If(this._.fg == 3394, LazyBound(lambda: growtopia_world__gt_str)),
)

growtopia_world__crime_in_progress_extra = Struct(
	'crime_name' / LazyBound(lambda: growtopia_world__gt_str),
	'crime_index' / Int32ul,
	'unk1' / Int8ub,
)

growtopia_world__crystal_extra = Struct(
	'num_crystals' / Int16ul,
	'crystals' / Array(this.num_crystals, Int8ub),
)

growtopia_world__cybot_extra__command = Struct(
	'command_id' / Int32ul,
	'is_command_used' / Int32ul,
	'unk1' / FixedSized(7, GreedyBytes),
)

growtopia_world__cybot_extra = Struct(
	'num_commands' / Int32ul,
	'commands' / Array(this.num_commands, LazyBound(lambda: growtopia_world__cybot_extra__command)),
	'timer' / Int32ul,
	'is_activated' / Int32ul,
)

growtopia_world__data_bedrock_extra = Struct(
	'unk1' / FixedSized(17, GreedyBytes),
	'pad1' / FixedSized(4, GreedyBytes),
)

growtopia_world__dice_extra = Struct(
	'symbol' / Int8ub,
)

growtopia_world__display_block_extra = Struct(
	'item_id' / Int32ul,
)

growtopia_world__dna_extractor_extra = Struct(
)

growtopia_world__door_extra = Struct(
	'label' / LazyBound(lambda: growtopia_world__gt_str),
	'flags' / Int8ub,
)

growtopia_world__fish_tank_port_extra__fish_info = Struct(
	'item_id' / Int32ul,
	'lbs' / Int32ul,
)

growtopia_world__fish_tank_port_extra = Struct(
	'flags' / Int8ub,
	'fish_data_length' / Int32ul,
	'fishes' / Array(this.fish_data_length // 2, LazyBound(lambda: growtopia_world__fish_tank_port_extra__fish_info)),
)

growtopia_world__fish_wall_mount_extra = Struct(
	'label' / LazyBound(lambda: growtopia_world__gt_str),
	'item_id' / Int32ul,
	'lbs' / Int8ub,
)

growtopia_world__forge_extra = Struct(
	'temperature' / Int32ul,
)

growtopia_world__fossil_prep_station_extra = Struct(
	'unk1' / Int32ul,
)

growtopia_world__friends_entrance_extra = Struct(
	'owner_userid' / Int32ul,
	'unk1' / FixedSized(2, GreedyBytes),
	'num_allowed_friends_userid' / Int16ul,
	'allowed_friends_userid' / Array(this.num_allowed_friends_userid, Int32ul),
)

growtopia_world__game_generator_extra = Struct(
)

growtopia_world__game_grave_extra = Struct(
	'team_id' / Int8ub,
)

growtopia_world__geiger_charger_extra = Struct(
	'unk1' / FixedSized(4, GreedyBytes),
)

growtopia_world__giving_tree_extra = Struct(
	'harvested' / Int8ub,
	'age' / Int16ul,
	'unk1' / Int16ul,
	'decoration_percentage' / Int8ub,
)

growtopia_world__growscan_extra = Struct(
	'unk1' / Int8ub,
)

growtopia_world__gt_str = Struct(
	'len_data' / Int16ul,
	'str' / FixedSized(this.len_data, GreedyString(encoding='ASCII')),
)

growtopia_world__guild_extra = Struct(
	'unk1' / Int8ub,
	'guild_id' / Int32ul,
	'guild_mascot_fg' / Int16ul,
	'guild_mascot_bg' / Int16ul,
	'guild_level' / Int32ul,
	'guild_flags' / Int32ul,
)

growtopia_world__heart_monitor_extra = Struct(
	'user_id' / Int32ul,
	'grow_id' / LazyBound(lambda: growtopia_world__gt_str),
)

growtopia_world__howler_extra = Struct(
)

growtopia_world__infinity_weather_machine_extra = Struct(
	'interval_mins' / Int32ul,
	'num_weather_machines' / Int32ul,
	'weather_machines' / Array(this.num_weather_machines, Int32ul),
)

growtopia_world__item_sucker_extra = Struct(
	'item_id' / Int32ul,
	'item_amount' / Int32ul,
	'flags' / Int16ul,
	'item_limit' / Int32ul,
)

growtopia_world__krakens_galatic_block_extra = Struct(
	'pattern_number' / Int8ub,
	'unk1' / FixedSized(4, GreedyBytes),
	'color_rgb' / FixedSized(3, GreedyBytes),
)

growtopia_world__lobster_trap_extra = Struct(
)

growtopia_world__lock_bot_extra = Struct(
	'age' / Int32ul,
)

growtopia_world__lock_extra = Struct(
	'flag' / Int8ub,
	'owner_user_id' / Int32ul,
	'num_authorized_userids' / Int32ul,
	'authorized_userids' / Array(this.num_authorized_userids, Int32sl),
	'minimum_level' / Int32ul,
	'world_timer' / Int32ul,
	'guild_id' / If(this._.fg == 5814, Int32ul),
	'guild_mascot_fg' / If(this._.fg == 5814, Int16ul),
	'guild_mascot_bg' / If(this._.fg == 5814, Int16ul),
	'guild_level' / If(this._.fg == 5814, Int32ul),
	'guild_flags' / If(this._.fg == 5814, Int32ul),
)

growtopia_world__magic_egg_extra = Struct(
	'egg_amount' / Int32ul,
)

growtopia_world__mannequin_extra = Struct(
	'label' / LazyBound(lambda: growtopia_world__gt_str),
	'unk1' / Int8ub,
	'unk2' / Int16ul,
	'unk3' / Int16ul,
	'hat' / Int16ul,
	'shirt' / Int16ul,
	'pants' / Int16ul,
	'boots' / Int16ul,
	'face' / Int16ul,
	'hand' / Int16ul,
	'back' / Int16ul,
	'hair' / Int16ul,
	'neck' / Int16ul,
)

growtopia_world__painting_easel_extra = Struct(
	'item_id' / Int32ul,
	'label' / LazyBound(lambda: growtopia_world__gt_str),
)

growtopia_world__pet_battle_cage_extra = Struct(
	'label' / LazyBound(lambda: growtopia_world__gt_str),
	'base_pet' / Int32ul,
	'combined_pet_1' / Int32ul,
	'combined_pet_2' / Int32ul,
)

growtopia_world__pet_trainer_extra = Struct(
	'name' / LazyBound(lambda: growtopia_world__gt_str),
	'num_pets' / Int32ul,
	'unk1' / Int32ul,
	'pets' / Array(this.num_pets, Int32ul),
)

growtopia_world__phone_booth_extra = Struct(
	'hat' / Int16ul,
	'shirt' / Int16ul,
	'pants' / Int16ul,
	'shoes' / Int16ul,
	'face' / Int16ul,
	'hand' / Int16ul,
	'back' / Int16ul,
	'hair' / Int16ul,
	'neck' / Int16ul,
)

growtopia_world__pineapple_guzzler_extra = Struct(
	'pineapple_fed' / Int32ul,
)

growtopia_world__portrait_extra = Struct(
	'label' / LazyBound(lambda: growtopia_world__gt_str),
	'unk1' / Int32ul,
	'unk2' / Int32ul,
	'unk3' / FixedSized(5, GreedyBytes),
	'unk4' / Int8ub,
	'unk5' / Int16ul,
	'face' / Int16ul,
	'hat' / Int16ul,
	'hair' / Int16ul,
	'unk6' / Int32ul,
	'infinity_crown_data' / If(this.hat == 12958, LazyBound(lambda: growtopia_world__gt_str)),
)

growtopia_world__provider_extra = Struct(
	'age' / Int32ul,
	'pad1' / If(this._.fg == 10656, FixedSized(4, GreedyBytes)),
)

growtopia_world__safe_vault_extra = Struct(
)

growtopia_world__seed_extra = Struct(
	'age' / Int32ul,
	'fruit_count' / Int8ub,
)

growtopia_world__sewing_machine_extra = Struct(
	'num_bolt_ids' / Int32ul,
	'bolt_ids' / Array(this.num_bolt_ids, Int32ul),
)

growtopia_world__shelf_extra = Struct(
	'top_left_item_id' / Int32ul,
	'top_right_item_id' / Int32ul,
	'bottom_left_item_id' / Int32ul,
	'bottom_right_item_id' / Int32ul,
)

growtopia_world__sign_extra = Struct(
	'label' / LazyBound(lambda: growtopia_world__gt_str),
	'pad1' / FixedSized(4, GreedyBytes),
)

growtopia_world__silk_worm_extra = Struct(
	'flags' / Int8ub,
	'name' / LazyBound(lambda: growtopia_world__gt_str),
	'age_sec' / Int32ul,
	'unk1' / Int32ul,
	'unk2' / Int32ul,
	'can_be_fed' / Int8ub,
	'food_saturation' / Int32ul,
	'water_saturation' / Int32ul,
	'color_argb' / LazyBound(lambda: growtopia_world__a_r_g_b),
	'sick_duration' / Int32ul,
)

growtopia_world__solar_collector_extra = Struct(
	'unk1' / FixedSized(5, GreedyBytes),
)

growtopia_world__spirit_board_extra = Struct(
	'player_required' / Int32ul,
	'unk1' / LazyBound(lambda: growtopia_world__gt_str),
	'command' / LazyBound(lambda: growtopia_world__gt_str),
	'num_required_items' / Int32ul,
	'required_items' / Array(this.num_required_items, Int32ul),
)

growtopia_world__spirit_storage_unit_extra = Struct(
	'ghost_jar_count' / Int32ul,
)

growtopia_world__spotlight_extra = Struct(
)

growtopia_world__steam_engine_extra = Struct(
	'temperature' / Int32ul,
)

growtopia_world__steam_organ_extra = Struct(
	'instrument_type' / Int8ub,
	'note' / Int32ul,
)

growtopia_world__storage_box_xtreme_extra__storage_item = Struct(
	'pad1' / FixedSized(3, GreedyBytes),
	'item_id' / Int32ul,
	'pad2' / FixedSized(2, GreedyBytes),
	'item_amt' / Int32ul,
)

growtopia_world__storage_box_xtreme_extra = Struct(
	'data_len' / Int16ul,
	'items' / Array(this.data_len // 13, LazyBound(lambda: growtopia_world__storage_box_xtreme_extra__storage_item)),
)

growtopia_world__stormy_cloud_extra = Struct(
	'sting_duration' / Int32ul,
	'is_solid' / Int32ul,
	'non_solid_duration' / Int32ul,
)

growtopia_world__temporary_platform_extra = Struct(
	'unk1' / Int32ul,
)

growtopia_world__tesseract_manipulator_extra = Struct(
	'gems_left' / Int32ul,
	'next_update_ms' / Int32ul,
	'item_id' / Int32ul,
	'enabled' / Int32ul,
)

growtopia_world__tomb_robber_extra = Struct(
)

growtopia_world__training_port_extra = Struct(
	'fish_lb' / Int32ul,
	'status' / Int16ul,
	'item_id' / Int32ul,
	'total_exp' / Int32ul,
	'unk1' / FixedSized(8, GreedyBytes),
	'fish_level' / Int32ul,
	'unk2' / Int32ul,
	'unk3' / FixedSized(5, GreedyBytes),
)

growtopia_world__unknown_extra = Struct(
	'this_is_just_to_error_out_kaitai_pls' / GreedyBytes,
)

growtopia_world__vending_machine_extra = Struct(
	'item_id' / Int32ul,
	'price' / Int32sl,
)

growtopia_world__vip_entrance_extra = Struct(
	'unk1' / Int8ub,
	'owner_userid' / Int32ul,
	'num_allowed_userids' / Int32ul,
	'allowed_userids' / Array(this.num_allowed_userids, Int32ul),
)

growtopia_world__weather_machine_1_extra = Struct(
	'settings' / FixedSized(4, GreedyBytes),
)

growtopia_world__weather_machine_2_extra = Struct(
	'item_id' / Int32ul,
	'gravity' / Int32ul,
	'flag' / Int8ub,
)

growtopia_world__world_object = Struct(
	'item_id' / Int16ul,
	'x' / Float32l,
	'y' / Float32l,
	'amount' / Int8ub,
	'flag' / Int8ub,
	'uid' / Int32ul,
)

growtopia_world__world_tile = Struct(
	'fg' / Int16ul,
	'bg' / Int16ul,
	'invalid_tile_fg_bg_kaitai_crasher' / If( ((this.fg > 25000) or (this.bg > 25000)) , GreedyBytes),
	'parent_block_index' / Int16ul,
	'flag' / Int16ul,
	'parent_lock' / If(this.flag & 2 == 2, Int16ul),
	'extra_data_type' / If(this.flag & 1 == 1, Int8ub),
	'tile_extra' / If(this.flag & 1 == 1, Switch(this.extra_data_type, {1: LazyBound(lambda: growtopia_world__door_extra), 10: LazyBound(lambda: growtopia_world__achievement_block_extra), 11: LazyBound(lambda: growtopia_world__heart_monitor_extra), 14: LazyBound(lambda: growtopia_world__mannequin_extra), 15: LazyBound(lambda: growtopia_world__magic_egg_extra), 16: LazyBound(lambda: growtopia_world__game_grave_extra), 17: LazyBound(lambda: growtopia_world__game_generator_extra), 18: LazyBound(lambda: growtopia_world__xenonite_extra), 19: LazyBound(lambda: growtopia_world__phone_booth_extra), 2: LazyBound(lambda: growtopia_world__sign_extra), 20: LazyBound(lambda: growtopia_world__crystal_extra), 21: LazyBound(lambda: growtopia_world__crime_in_progress_extra), 22: LazyBound(lambda: growtopia_world__spotlight_extra), 23: LazyBound(lambda: growtopia_world__display_block_extra), 24: LazyBound(lambda: growtopia_world__vending_machine_extra), 25: LazyBound(lambda: growtopia_world__fish_tank_port_extra), 26: LazyBound(lambda: growtopia_world__solar_collector_extra), 27: LazyBound(lambda: growtopia_world__forge_extra), 28: LazyBound(lambda: growtopia_world__giving_tree_extra), 3: LazyBound(lambda: growtopia_world__lock_extra), 30: LazyBound(lambda: growtopia_world__steam_organ_extra), 31: LazyBound(lambda: growtopia_world__silk_worm_extra), 32: LazyBound(lambda: growtopia_world__sewing_machine_extra), 33: LazyBound(lambda: growtopia_world__country_flag_extra), 34: LazyBound(lambda: growtopia_world__lobster_trap_extra), 35: LazyBound(lambda: growtopia_world__painting_easel_extra), 36: LazyBound(lambda: growtopia_world__pet_battle_cage_extra), 37: LazyBound(lambda: growtopia_world__pet_trainer_extra), 38: LazyBound(lambda: growtopia_world__steam_engine_extra), 39: LazyBound(lambda: growtopia_world__lock_bot_extra), 4: LazyBound(lambda: growtopia_world__seed_extra), 40: LazyBound(lambda: growtopia_world__weather_machine_1_extra), 41: LazyBound(lambda: growtopia_world__spirit_storage_unit_extra), 42: LazyBound(lambda: growtopia_world__data_bedrock_extra), 43: LazyBound(lambda: growtopia_world__shelf_extra), 44: LazyBound(lambda: growtopia_world__vip_entrance_extra), 45: LazyBound(lambda: growtopia_world__challenge_timer_extra), 47: LazyBound(lambda: growtopia_world__fish_wall_mount_extra), 48: LazyBound(lambda: growtopia_world__portrait_extra), 49: LazyBound(lambda: growtopia_world__weather_machine_2_extra), 50: LazyBound(lambda: growtopia_world__fossil_prep_station_extra), 51: LazyBound(lambda: growtopia_world__dna_extractor_extra), 52: LazyBound(lambda: growtopia_world__howler_extra), 53: LazyBound(lambda: growtopia_world__chemsynth_tank_extra), 54: LazyBound(lambda: growtopia_world__storage_box_xtreme_extra), 55: LazyBound(lambda: growtopia_world__cooking_oven_extra), 56: LazyBound(lambda: growtopia_world__audio_rack_extra), 57: LazyBound(lambda: growtopia_world__geiger_charger_extra), 58: LazyBound(lambda: growtopia_world__adventure_begins_extra), 59: LazyBound(lambda: growtopia_world__tomb_robber_extra), 60: LazyBound(lambda: growtopia_world__balloon_o_matic_extra), 61: LazyBound(lambda: growtopia_world__training_port_extra), 62: LazyBound(lambda: growtopia_world__item_sucker_extra), 63: LazyBound(lambda: growtopia_world__cybot_extra), 65: LazyBound(lambda: growtopia_world__guild_extra), 66: LazyBound(lambda: growtopia_world__growscan_extra), 67: LazyBound(lambda: growtopia_world__containment_field_power_node_extra), 68: LazyBound(lambda: growtopia_world__spirit_board_extra), 69: LazyBound(lambda: growtopia_world__tesseract_manipulator_extra), 72: LazyBound(lambda: growtopia_world__stormy_cloud_extra), 73: LazyBound(lambda: growtopia_world__temporary_platform_extra), 74: LazyBound(lambda: growtopia_world__safe_vault_extra), 75: LazyBound(lambda: growtopia_world__angelic_counting_cloud_extra), 77: LazyBound(lambda: growtopia_world__infinity_weather_machine_extra), 79: LazyBound(lambda: growtopia_world__pineapple_guzzler_extra), 8: LazyBound(lambda: growtopia_world__dice_extra), 80: LazyBound(lambda: growtopia_world__krakens_galatic_block_extra), 81: LazyBound(lambda: growtopia_world__friends_entrance_extra), 9: LazyBound(lambda: growtopia_world__provider_extra), }, default=LazyBound(lambda: growtopia_world__unknown_extra))),
	'cbor_data' / If( (( ((this.flag & 1 == 1) and (this.extra_data_type == 36)) ) or (this.fg == 15546) or (this.fg == 14666) or (this.fg == 14962) or (this.fg == 14662)) , LazyBound(lambda: growtopia_world__cbor_data)),
)

growtopia_world__xenonite_extra = Struct(
	'unk1' / FixedSized(5, GreedyBytes),
)

growtopia_world = Struct(
	'version' / Int16ul,
	'unk1' / Int32ul,
	'name' / LazyBound(lambda: growtopia_world__gt_str),
	'width' / Int32ul,
	'height' / Int32ul,
	'num_tiles' / Int32ul,
	'unk2' / FixedSized(5, GreedyBytes),
	'tiles' / Array(this.num_tiles, LazyBound(lambda: growtopia_world__world_tile)),
	'unk3' / FixedSized(12, GreedyBytes),
	'num_objects' / Int32ul,
	'last_object_uid' / Int32ul,
	'objects' / Array(this.num_objects, LazyBound(lambda: growtopia_world__world_object)),
)

_schema = growtopia_world
