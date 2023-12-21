from typing import List
import json
import struct
import sys
import math

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

    tile["x"] = i % int(world_info["width"])
    tile["y"] = math.floor(i / int(world_info["width"]))

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

            # sl, bl, hl, builder lock
            non_world_locks = [202, 204, 206, 4994]

            # worldlock
            if not tile["fg"] in non_world_locks:
                data["minimum_level"] = get_int(1)
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
            # user id?
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

        # Xenonite
        elif tile["extra_tile_data_type"] == 18:
            # i dont have any access to the xenonite because im brokie.
            data["unk_arr"] = get_byte_arr(5).hex()
        
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

        # Crystal
        elif tile["extra_tile_data_type"] == 20:
            data["crystal_list"] = get_list(2, 1)

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

             # in short, if the price is negative then it is ITEM per WORLD LOCK
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

        # Solar Collector
        elif tile["extra_tile_data_type"] == 26:
            data["Unk1_40"] = get_byte_arr(5).hex()

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

        # country flag
        elif tile["extra_tile_data_type"] == 33:
            if tile["fg"] == 3394: 
                data["country"] = get_str()
            pass

        # lobster trap
        elif tile["extra_tile_data_type"] == 34:
            # lobster trap has no data??
            # yeah lobster trap data is completely server sided. dont know why the give it extra tile data
            data = [] 

        # painting easel
        elif tile["extra_tile_data_type"] == 35:
            data["item_id"] = get_int(4)
            data["label"] = get_str()

        # Steam Engine
        elif tile["extra_tile_data_type"] == 38:
            data["temperature"] = get_int(4)

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

        # Challenge timer
        elif tile["extra_tile_data_type"] == 45:
            # no data
            pass

        # # Fish Wall Mount
        # elif tile["extra_tile_data_type"] == 47:
        #     data["label"] = get_str()
        #     data["item_id"] = get_int(4)
        #     data["lbs"] = get_int(1)

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

        # Howler
        elif tile["extra_tile_data_type"] == 52:
            # no data
            pass


        # Storage block
        elif tile["extra_tile_data_type"] == 54:

            # this is quite an interesting block
            # the length of the array is at the start
            # the array has some pattern that has length of 13 bytes
            # the array has this pattern repeating all over it
            # 020009xxxxxxxx0109xxxxxxxx 
            #       --------    --------
            #        item id     item amount

            data["arr_len"] = get_int(2)
            data["items"] = []

            for i in range(int(data["arr_len"]/13)):
                skip(3)
                item_id = get_int(4)
                skip(2)
                item_amt = get_int(4)

                data["items"].append({
                    "item_id"  : item_id,
                    "item_amt" : item_amt
                })

            pass

        # cooking oven
        elif tile["extra_tile_data_type"] == 55:
            # no data?
            pass

        # audio rack and gear
        elif tile["extra_tile_data_type"] == 56:
            data["note"] = get_str()
            data["volume"] = get_int(4)

        # Geiger Charger
        elif tile["extra_tile_data_type"] == 57:
            # watafak idk
            data["Unk_hex_arr"] = get_byte_arr(4).hex()  

        # the adventure begins
        elif tile["extra_tile_data_type"] == 58:
            # no data
            pass
        
        # tomb robber
        elif tile["extra_tile_data_type"] == 59:
            # no data
            pass

        # Training port
        elif tile["extra_tile_data_type"] == 61:
            data["fish_lb"] = get_int(4)
            data["status"] = get_int(2)
            data["item_id"] = get_int(4)
            data["total_exp"] = get_int(4) 
            data["unk_arr"] = get_byte_arr(8).hex().upper()
            data["fish_level"] = get_int(4)
            data["unk_32"] = get_int(4)
            data["unk_arr_30"] = get_byte_arr(5).hex().upper()

        # Item Sucker
        # like gaia, magplant, etc
        elif tile["extra_tile_data_type"] == 62:
            data["item_id"] = get_int(4)
            # guessed field
            data["item_amount"] = get_int(4)
            data["flags"] = get_byte_arr(2).hex()
            data["item_limit"] = get_int(4)

        # guild things?
        elif tile["extra_tile_data_type"] == 65:
            data["unk_arr"] = get_byte_arr(17).hex()

        # Growscan
        elif tile["extra_tile_data_type"] == 66:
            # maybe a flag that indicates it is being used?
            data["Unk1_8"] = get_int(1);

        # Temporary Platform
        elif tile["extra_tile_data_type"] == 73:
            data["Unk1_32"] = get_int(4)

        # Safe Vault
        elif tile["extra_tile_data_type"] == 74:
            pass

        # Kraken's galatic block
        elif tile["extra_tile_data_type"] == 80:
            data["pattern_number"] = get_int(1)
            data["unk_arr"] = get_byte_arr(4).hex()
            data["color_rgb"] = get_byte_arr(3).hex().upper()

        # Friends entrance
        # maybe wrong because i dont have enough data.
        elif tile["extra_tile_data_type"] == 81:
            data["owner_userid"] = get_int(4)
            
            # maybe a flag??
            data["unk_arr"] = get_byte_arr(2)

            data["allowed_friends_userid"] = get_list_int(2, 4); 

        else: 
            ex_tile_data = tile["extra_tile_data_type"]
            print(f"UNKNOWN EXTRA TILE DATA TYPE {ex_tile_data}")
            print(f"DUMP CURRENT DATA")
            print(tile)

            return None
        
        tile["extra_tile_data"] = data
    
    return tile


def parse_world():
    try:
        skip(6)
    
        world_info["name"] = get_str()
        world_info["width"] = get_int(4)
        world_info["height"] = get_int(4)
        world_info["total_block"] = get_int(4)
        world_info["tiles"] = []
    
        skip(5)
    
        for i in range(int(world_info["total_block"])):
        
            tile = parse_block(i)
    
            if tile is None:
                return False
    
            world_info["tiles"].append(tile)
    
    except:
        return False

    return True

def parse_drops():
    # unk data, changes on every drop update. maybe a hash?
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
        # for pos, divide by 32 and floor it to get tile coordinate.
        data["pos_x_raw"] = get_float()
        data["pos_y_raw"] = get_float()

        data["dropped_count"] = get_int(1)
        data["item_flag"] = hex(get_int(1))
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
        f_out.write(world_info.__str__())
        exit(1)
    
    parse_drops()
    print(world_info)
    f_out.write(world_info.__str__())

    f_out.close()
    f.close()

