// for v19

#pragma pattern_limit 3940343
import std.io;
import std.mem;
import std.math;

struct ItemInfo {
    u32 ItemId [[color("FFFF0")]];
    u16     flags;
    u8      item_type;
    u8      material;
    u16     name_len;
    char    name[name_len] ;
    u16     texture_file_len;
    char    texture_file[texture_file_len];
    u32     texture_file_hash;
    u8      visual_effect;
    u32     cooking_time;
    u8      tex_coord_x;
    u8      tex_coord_y;
    u8      texture_type;
    u8      is_stripey_wallpaper;
    u8      collision_type;
    u8      health;
    u32     restore_time;
    u8      clothing_type;
    u16     rarity;
    u8      max_amount;
    u16     extra_file_len;
    char    extra_file[extra_file_len];
    u32     extra_file_hash;
    u32     frame_interval_ms;
    u16     pet_name_len;
    char    pet_name[pet_name_len];
    u16     pet_prefix_len;
    char    pet_prefix[pet_prefix_len];
    u16     pet_suffix_len;
    char    pet_suffix[pet_suffix_len];
    u16     pet_ability_len;
    char    pet_ability[pet_ability_len];
    u8      seed_base;
    u8      seed_overlay;
    u8      tree_base;
    u8      tree_leaves;
    u32     seed_color;
    u32     seed_overlay_color;
    u32     ingredient;
    u32     grow_time;
    u32     fx_flags;
    u16     animating_coordinates_len;
    char    animating_coordinates[animating_coordinates_len];
    u16     animating_texture_files_len;
    char    animating_texture_files[animating_texture_files_len];
    u16     animating_coordinates_2_len;
    char    animating_coordinates_2[animating_coordinates_2_len];
    u32     unk1;
    u32     unk2;
    u32     flags_2;
    
    u8      unk3[60];
    
    u32     tile_range;
    u32     vault_capacity;
    u16     punch_options_len;
    char    punch_options[punch_options_len];
    u32     unk4;
    u8      body_part_list[9];
    u32     light_range;
    u32     unk5;
    u8      can_sit;
    u32     player_offset_x;
    u32     player_offset_y;
    u32     chari_texture_x;
    u32     chair_texture_y;
    u32     chair_leg_offset_x;
    u32     chair_leg_offset_y;
    u16     chair_texture_file_len;
    char    chair_texture_file[chair_texture_file_len];
    u16     renderer_data_file_len;
    char    renderer_data_file[renderer_data_file_len];
    u32     unk6;
    u32     renderer_data_file_hash;
    u8      unk7[9];
};

struct ItemDataHeader {
    u16 Version;
    u32 ItemCount;
};


ItemDataHeader itemDataHeader @ 0x0;

ItemInfo itemInfos[itemDataHeader.ItemCount] @ 0x6;
