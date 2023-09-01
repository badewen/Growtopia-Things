from typing import List
import json
import struct
import sys

import common

f = None
f_out = None

world_info = {}

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

# i : used for debug_block_indx
def parse_block(i):
    tile = {}
    tile["debug_block_indx"] = i
    tile["debug_curr_pos"] = f.tell()

    tile["extra_tile_data_type"] = 0

    tile["fg"] = get_int(2)
    tile["bg"] = get_int(2)
    tile["parent_block_index"] = get_int(2)
    tile["item_flags_low"] = get_int(1)
    tile["item_flags_high"] = get_int(1)

    # TILE_FLAG_LOCKED
    if tile["item_flags_low"] & 0x02:
        # lock position 
        tile["lock_block_index"] = get_int(2)
    
    # TILE_EXTRA_DATA
    if tile["item_flags_low"] & 0x01:
        tile["extra_tile_data_type"] = get_int(1)



    if tile["extra_tile_data_type"] != 0:
    
        data = {}
        # door
        if tile["extra_tile_data_type"] == 1:
            data["label"] = get_str()
            data["unk1_8"] = get_int(1)

        # sign
        # bulletin board
        # bulletin board is fully server sided
        elif tile["extra_tile_data_type"] == 2:
            data["label"] = get_str()

            # end marker
            skip(4)

        # lock
        elif tile["extra_tile_data_type"] == 3:
        
            data["flag"] = get_int(1)
            data["owner_user_id"] = get_int(4)
            temp = get_list(4, 4)
            data["access_count"] = temp.__len__()

            acc_id = []
            for id in temp:
                acc_id.append(int.from_bytes(id, byteorder="little"))

            data["access_list_user_id"] = acc_id

            # worldlock
            if tile["fg"] == 242:
                data["minimun_level"] = get_int(1)
                data["unk2_arr"] = get_byte_arr(7).hex()


        # seed
        elif tile["extra_tile_data_type"] == 4:
            data["time_passed"] = get_int(4)
            data["fruit_count"] = get_int(1)
        
        # dice-like item
        elif tile["extra_tile_data_type"] == 8:
            data["symbol"] = get_int(1)

        # provider
        elif tile["extra_tile_data_type"] == 9:
            data["time_passed_sec"] = get_int(4) 

        # achievement block
        elif tile["extra_tile_data_type"] == 10:
            data["unk_32"] = get_int(4)
            data["achievement_id"] = get_int(1)

        # heart monitor
        elif tile["extra_tile_data_type"] == 11:
            data["user_id"] = get_int(4)
            data["growID"] = get_str()

        # mannequin
        # idk where is ances, i dont have any ances plz donat
        # if you have ances, try checking in these unk field.
        elif tile["extra_tile_data_type"] == 14:
            data["label"] = get_str()
            data["unk_8"] = get_int(1)
            data["unk_16"] = get_int(2)
            data["unk_16"] = get_int(2)
            data["hat"] = get_int(2)
            data["shirt"] = get_int(2)
            data["pants"] = get_int(2)
            data["boots"] = get_int(2)
            data["face"] = get_int(2) 
            data["hand"] = get_int(2)
            data["back"] = get_int(2)
            data["hair"] = get_int(2)
            data["neck"] = get_int(2)  

        # game grave
        elif tile["extra_tile_data_type"] == 16:
            data["team_id"] = get_int(1)

        # game generator
        elif tile["extra_tile_data_type"] == 17:
            # no data. 
            # completely server sided??
            pass
        
        # phone booth
        elif tile["extra_tile_data_type"] == 19:
            data["hat"] = get_int(2)
            data["shirt"] = get_int(2)
            data["pants"] = get_int(2)
            data["shoes"] = get_int(2)
            data["face"] = get_int(2)
            data["hand"] = get_int(2)
            data["back"] = get_int(2)
            data["hair"] = get_int(2)
            data["neck"] = get_int(2)

        # spotlight
        # fun fact: spotlight is set by the PACKET_SET_CHARACTER_STATE
        elif tile["extra_tile_data_type"] == 22:
            # nodata
            pass
        
        # display block
        elif tile["extra_tile_data_type"] == 23:
            data["item_id"] = get_int(4)

        # vending machine
        elif tile["extra_tile_data_type"] == 24:
            data["item_id"] = get_int(4)

            # if the most significant bit is set, the price mode is ITEM per WORLD LOCK and in form of two's complement
            # if the most significant bit is not set, the price mode is in WORLD LOCK per ITEM. no transformation needs to be done.
            data["price"] = get_int(4)

        # fish tank port
        elif tile["extra_tile_data_type"] == 25:
            # 0x10 = perfect fish glow
            data["flags"] = get_int(1)
            data["fishes"] = []
            # the format is 
            # uint32 list length
            # where list length must equal to n * 2
            # n = number of fish

            # uint32 fish_item_id
            # uint32 fish lbs
            # this repeats until the end of the list.

            for i in range(int(get_int(4) / 2)):
                fish_info = {}
                fish_info["item_id"] = get_int(4)
                fish_info["lbs"] = get_int(4)
                data["fishes"].append(fish_info)

        # forge
        elif tile["extra_tile_data_type"] == 27:
            data["temperature"] = get_int(4)

        # giving tree
        elif tile["extra_tile_data_type"] == 28:
        
            data["harvested"] = get_int(1)
            data["unk1_16"] = get_int(2)
            data["unk2_16"] = get_int(2)
            data["decoration_percentage"] = get_int(1) 

        # sewing machine
        elif tile["extra_tile_data_type"] == 32:
            data["bolt_list_id"] = get_list_int(4, 4)

        # lobster trap
        elif tile["extra_tile_data_type"] == 34:
            # lobster trap has no data??
            # yeah lobster trap data is completely server sided. dont know why the give it extra tile data
            data = [] 

        # painting easel
        elif tile["extra_tile_data_type"] == 35:
            data["item_id"] = get_int(4)
            data["label"] = get_str()

        # weather machine
        elif tile["extra_tile_data_type"] == 40:
            # weather machine specific data
            data["settings"] = get_byte_arr(4).hex()

        # data bedrock
        elif tile["extra_tile_data_type"] == 42:
            data["unk1_arr"] = get_byte_arr(17)
            skip(4)

        # shelf
        elif tile["extra_tile_data_type"] == 43:
            data["top-left_item_id"] = get_int(4)
            data["top-right_item_id"] = get_int(4)
            data["bottom-left_item_id"] = get_int(4)
            data["bottom-right_item_id"] = get_int(4)

        # vip entrance
        elif tile["extra_tile_data_type"] == 44:
            data["unk1_8"] = get_int(1)
            data["owner_userid"] = get_int(4)
            ls = get_list(4, 4)
            data["allowed_userid"] = ls
            data["allowed_userid_count"] = ls.__len__()

        # portrait
        elif tile["extra_tile_data_type"] == 48:
            data["label"] = get_str()
            data["unk1_32"] = get_int(4)
            data["unk2_32"] = get_int(4)
            data["unk3_arr"] = get_byte_arr(5)
            data["unk4_8"] = get_int(1)
            data["unk5_16"] = get_int(2)
            data["face"] = get_int(2)
            data["hat"] = get_int(2)
            data["hair"] = get_int(2)
            data["unk6_32"] = get_int(4)

        # guild weather machine
        elif tile["extra_tile_data_type"] == 49:
            data["unk1_32"] = get_int(4)
            data["gravity"] = get_int(4)
            # contains if the weather machine has invert sky colour on and/or spin items
            data["flag"] = get_int(1)

        # dna extractor
        elif tile["extra_tile_data_type"] == 51:
            # no data
            pass
        
        # audio rack and gear
        elif tile["extra_tile_data_type"] == 56:
            data["note"] = get_str()
            data["volume"] = get_int(4)

        # the adventure begins
        elif tile["extra_tile_data_type"] == 58:
            # no data
            pass
        
        # guild things?
        elif tile["extra_tile_data_type"] == 65:
            data["unk_arr"] = get_byte_arr(17).hex()

        else: 
            ex_tile_data = tile["extra_tile_data_type"]
            print(f"UNKNOWN EXTRA TILE DATA TYPE {ex_tile_data}")
            print(f"DUMP CURRENT DATA")
            print(data)
            return None
        
        tile["extra_tile_data"] = data
    
    return tile


def parse_world():
    skip(6)

    world_info["name"] = get_str()
    world_info["width"] = get_int(4)
    world_info["height"] = get_int(4)
    world_info["total_block"] = get_int(4)
    world_info["tiles"] = []

    skip(5)

    for i in range(int(world_info["total_block"])):
    
        tile = parse_block(i)

        if tile == None:
            return False

        world_info["tiles"].append(tile)

    return True

# unk data, changes on every drop. maybe a hash?
def parse_drops():
    get_int(4)
    get_int(4)
    get_int(4)

    # idk why they give it 2 drop count
    item_drop_count = get_int(4)
    # maybe it is last dropped item uid? need to be investigated.
    item_drop_count_clone = get_int(4)

    world_info["dropped_items"] = []
    for i in range(item_drop_count):
        data = {}

        data["debug_curr_pos"] = f.tell()

        data["item_id"] = get_int(2)
        # for pos, divide by 32 and floor it to get normal coordinate.
        data["pos_x_raw"] = get_float()
        data["pos_y_raw"] = get_float()

        data["dropped_count"] = get_int(2)
        data["item_drop_uid"] = get_int(4)

        world_info["dropped_items"].append(data)


# sesimpel itu
if __name__ == "__main__":
    file_name = ""

    if sys.argv.__len__() - 1 < 1:
        print("Specify a dumped world filename.")
        exit(1)

    file_name = sys.argv[1]


    f_out = open("parsed_world.json", "wt")
    f =  open(file_name, "rb")

    if parse_world() == False:
        print("error occured")
        exit(1)
    
    parse_drops()
    # print(world_info)
    f_out.write(world_info.__str__())

    f_out.close()
    f.close()

