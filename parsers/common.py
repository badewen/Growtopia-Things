from typing import List
import struct

FILE_BEG_FILE = 0
FILE_CUR_POS = 1
FILE_END_POS = 2

def get_str(f) -> str:

    str_len = int.from_bytes(f.read1(2), byteorder="little")
    res_str = []

    for i in range(str_len):
        res_str.append(f.read(1).decode("utf-8"))
    
    return "".join(res_str)

def get_int(sz, f) -> int: 
    int_arr = f.read(sz)

    return int.from_bytes(int_arr, byteorder="little")

def get_list(len_sz, elm_sz, f) -> List:
    list_length = int.from_bytes(f.read(len_sz), byteorder="little")
    res_list: List = []

    for i in range(list_length):
        res_list.append(f.read(elm_sz))

    return res_list

def get_byte_arr(len, f) -> bytes:
    return f.read1(len)

def get_list_int(len_sz, elm_sz, f) -> List:
    ls = get_list(len_sz, elm_sz, f)
    res_ls = []

    for arr in ls:
        res_ls.append(int.from_bytes(arr, byteorder="little"))

    return res_ls


def get_float(f) -> float:
    return struct.unpack('f', get_byte_arr(4, f))[0]

def skip(len, f):
    f.seek(len, FILE_CUR_POS)


