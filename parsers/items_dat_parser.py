# creadits to https://github.com/RebillionXX/GrowtopiaServer/blob/main/src/Manager/Item/ItemInfo.hpp
# for the majority of the structures

import orjson
from typing import List
import common
import math

f = open("items.dat", "rb")
f_out = open("parsed_data.json", "wt")

def get_str() -> str:
    return common.get_str(f)

def get_int(sz) -> int: 
    return common.get_int(sz, f)

def get_list(len_sz, elm_sz) -> List:
    return common.get_list(len_sz, elm_sz, f)

def get_byte_arr(len) -> bytes:
    return common.get_byte_arr(len, f)

def get_list_int(len_sz, elm_sz) -> List:
    return common.get_list_int(len_sz, elm_sz, f)


def get_float() -> float:
    return common.get_float(f)

def skip(len):
    common.skip(len, f)

def get_enc_str(item_id):
    ls = get_list_int(2, 1)

    res = []
    hash_key = "PBG892FXX982ABC*"
    
    for i in range(ls.__len__()):
        hash_key_index = i + item_id
        
        res.append(ls[i] ^ ord(hash_key[ hash_key_index % 16]))

    return str(bytes(res), "ascii")

def get_hex_arr(len):
    return common.get_hex_arr(len, f)

items_data = {}

items_data["items_dat_version"] = get_int(2)
items_data["items_count"] = get_int(4)
items_data["items"] = {}

for i in range(int(items_data["items_count"])):
    try:
        
        data = {}
    
        data["debug_item_indx"] = i
        data["debug_cur_pos"] = f.tell()
    
        data["item_id"] = get_int(4)
        data["flags"] = get_int(2)
        data["item_type"] = get_int(1)
        data["material"] = get_int(1) 
        data["name"] = get_enc_str(data["item_id"])
        data["texture_file"] = get_str()
        data["texture_file_hash"] = get_int(4)
        data["visual_effect"] = get_int(1)
        data["cooking_time"] = get_int(4) # for cooking thing
        data["tex_coord_x"] = get_int(1)
        data["tex_coord_y"] = get_int(1)
        data["texture_type"] = get_int(1)
        data["is_stripey_wallpaper"] = get_int(1)
        data["collision_type"] = get_int(1)
        data["health"] = get_int(1)
        data["restore_time"] = get_int(4)
        data["clothing_type"] = get_int(1)
        data["rarity"] = get_int(2)
        data["max_amount"] = get_int(1)
        data["extra_file"] = get_str()
        data["extra_file_hash"] = get_int(4)
        data["frame_interval_ms"] = get_int(4)
        data["pet_name"] = get_str()
        data["pet_prefix"] = get_str()
        data["pet_suffix"] = get_str()
        data["pet_ability"] = get_str()
        data["seed_base"] = get_int(1)
        data["seed_overlay"] = get_int(1)
        data["tree_base"] = get_int(1)
        data["tree_leaves"] = get_int(1)
        data["seed_color"] = get_byte_arr(4)
        data["seed_overlay_color"] = get_byte_arr(4)
        data["ingredient"] = get_int(4) # people used to say this is the ingredient / splice recipe, but then later removed
        data["grow_time"] = get_int(4) 
        data["fx_flags"] = get_int(4) # things like Multi frame flag that is set by extra_options_1, etc
        data["animating_coordinates"] = get_str()
        data["animating_texture_files"] = get_str()
        data["animating_coordinates_2"] = get_str() # 83
        
        # reserved part
        # data["unkarr_80"] = get_hex_arr(80)
    
        # skip(8)

        data["unk1"] = get_int(4)
        data["unk2"] = get_int(4)


        # flags like "ITEM_INFO_ROBOT_DEADLY", etc.
        data["flags_2"] = get_int(4);

        skip(60)

        # any range you could think of. in unit of tile
        # ex: extractor dynamo, disco rever range, etc
        data["tile_range"] = get_int(4)

        data["vault_capacity"] = get_int(4)

        data["punch_options"] = get_str()
        data["unk3"] = get_int(4) # only jack o lantern has this
        
        data["body_part_list"] = get_byte_arr(9)
    
        # light source range
        # torch, etc 
        data["light_range"] = get_int(4)


        data["unk4"] = get_int(4)
    
        data["can_sit"] = get_int(1)

        data["player_offset_x"] = get_int(4)
        data["player_offset_y"] = get_int(4)
        data["chari_texture_x"] = get_int(4)
        data["chair_texture_y"] = get_int(4)
        data["chair_leg_offset_x"] = get_int(4)
        data["chair_leg_offset_y"] = get_int(4)

        data["chair_texture_file"] = get_str()
    
    
        data["renderer_data_file"] = get_str()

        data["unk5"] = get_int(4)
        data["renderer_data_file_hash"] = get_int(4)

        data["unk6"] = get_byte_arr(9)

        data["unk7"] = get_int(2)

        # TILESPREAD_DIRECT8 or TILESPREAD_DIRECT4
        if data["texture_type"] == 2 or data["texture_type"] == 5:
            data["default_texture_x"] = data["tex_coord_x"] + 4
            data["default_texture_y"] = data["tex_coord_y"] + 1
        # TILESPREAD_VERTICAL or TILESPREAD_HORIZONTAL
        elif data["texture_type"] == 3 or data["texture_type"] == 7: 
            data["default_texture_x"] = data["tex_coord_x"] + 3
            data["default_texture_y"] = data["tex_coord_y"]
        else:
            data["default_texture_x"] = data["tex_coord_x"]
            data["default_texture_y"] = data["tex_coord_y"]
    
        items_data["items"][str(data["item_id"])] = data
    except Exception as e:
        print(f"ERROR DUMPING LAST DATA {data.__str__()}")
        raise e

f_out.write(orjson.dumps(items_data, default=common.json_default_func,  option=orjson.OPT_INDENT_2).decode("utf-8"))

f_out.close()
f.close()
