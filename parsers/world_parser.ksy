meta:
  id: growtopia_world
  file-extension: dat
  endian: le

seq:
  - id: version
    type: u2
  - id: unk1
    type: u4
  - id: name
    type: gt_str
  - id: width
    type: u4
  - id: height
    type: u4
  - id: num_tiles
    type: u4
  - id: unk2
    size: 5
  - id: tiles
    type: world_tile
    repeat: expr
    repeat-expr: num_tiles
  - id: unk3
    size: 12
  - id: num_objects
    type: u4
  - id: last_object_uid
    type: u4
  - id: objects
    type: world_object
    repeat: expr
    repeat-expr: num_objects
    
types:
  a_r_g_b:
    seq:
      - id: a
        type: u1
      - id: r
        type: u1
      - id: g
        type: u1
      - id: b
        type: u1
  gt_str:
    seq:
      - id:  len_data
        type: u2
      - id: str
        type: str
        encoding: ASCII
        size:  len_data
  cbor_data:
    seq:
      - id:  len_data
        type: u4
      - id: data
        size:  len_data
        
  world_tile:
    seq:
      - id: fg
        type: u2
      - id: bg
        type: u2

      - id: invalid_tile_fg_bg_kaitai_crasher
        size-eos: true
        doc: |
          This type is just to error out kaitai. If this is 
          encountered, then maybe there was a parsing error.
          Please report :)
        if: fg > 25000 or bg > 25000
      
      - id: parent_block_index
        type: u2
      - id: flag
        type: u2
      - id: parent_lock
        type: u2
        if: (flag & 0x02) == 2
      - id: extra_data_type
        type: u1
        if: (flag & 0x01) == 1
      - id: tile_extra
        if: (flag & 0x01) == 1
        type: 
          switch-on: extra_data_type
          cases:
            1: door_extra
            2: sign_extra
            3: lock_extra
            4: seed_extra
            8: dice_extra
            9: provider_extra
            10: achievement_block_extra
            11: heart_monitor_extra
            14: mannequin_extra
            15: magic_egg_extra
            16: game_grave_extra
            17: game_generator_extra
            18: xenonite_extra
            19: phone_booth_extra
            20: crystal_extra
            21: crime_in_progress_extra
            22: spotlight_extra
            23: display_block_extra
            24: vending_machine_extra
            25: fish_tank_port_extra
            26: solar_collector_extra
            27: forge_extra
            28: giving_tree_extra
            30: steam_organ_extra
            31: silk_worm_extra
            32: sewing_machine_extra
            33: country_flag_extra
            34: lobster_trap_extra
            35: painting_easel_extra
            36: pet_battle_cage_extra
            37: pet_trainer_extra
            38: steam_engine_extra
            39: lock_bot_extra
            40: weather_machine_1_extra
            41: spirit_storage_unit_extra
            42: data_bedrock_extra
            43: shelf_extra
            44: vip_entrance_extra
            45: challenge_timer_extra
            47: fish_wall_mount_extra
            48: portrait_extra
            49: weather_machine_2_extra
            50: fossil_prep_station_extra
            51: dna_extractor_extra
            52: howler_extra
            53: chemsynth_tank_extra
            54: storage_box_xtreme_extra
            55: cooking_oven_extra
            56: audio_rack_extra
            57: geiger_charger_extra
            58: adventure_begins_extra
            59: tomb_robber_extra
            60: balloon_o_matic_extra
            61: training_port_extra
            62: item_sucker_extra
            63: cybot_extra
            65: guild_extra
            66: growscan_extra
            67: containment_field_power_node_extra
            68: spirit_board_extra
            69: tesseract_manipulator_extra
            72: stormy_cloud_extra
            73: temporary_platform_extra
            74: safe_vault_extra
            75: angelic_counting_cloud_extra
            77: infinity_weather_machine_extra
            79: pineapple_guzzler_extra
            80: krakens_galatic_block_extra
            81: friends_entrance_extra
            _: unknown_extra
      - id: cbor_data
        type: cbor_data
        if: | 
          (flag & 0x01 == 1 and extra_data_type == 36) or
          fg == 15546 or 
          fg == 14666 or 
          fg == 14962 or 
          fg == 14662 

  world_object:
    seq:
      - id: item_id
        type: u2
      - id: x
        type: f4
      - id: y
        type: f4
      - id: amount
        type: u1
      - id: flag
        type: u1
      - id: uid
        type: u4

  unknown_extra:
    seq:
      - id: this_is_just_to_error_out_kaitai_pls
        size-eos: true
        doc: |
          This type is just to error out kaitai. So if you encounter any error, 
          please either give the world name or dump the world and submit it to me
          (81739844+badewen@users.noreply.github.com).  
  
  door_extra:
    seq:
      - id: label
        type: gt_str
      - id: flags
        type: u1

  sign_extra:
    seq:
      - id: label
        type: gt_str
      - id: pad1
        size: 4

  lock_extra:
    seq:
      - id: flag
        type: u1
      - id: owner_user_id
        type: u4
      - id: num_authorized_userids
        type: u4
      - id: authorized_userids
        type: s4
        doc: |
          if you encounter negative user id, it is a world BPM. Kaitai doesnt support
          complex logic yet. 
        repeat: expr
        repeat-expr: num_authorized_userids
      - id: minimum_level
        type: u4
      - id: world_timer
        type: u4
      - id: guild_locks_unk
        size: 16
        if: _parent.fg == 5814

  crystal_extra:
    seq:
      - id: num_crystals
        type: u2
      - id: crystals
        type: u1
        repeat: expr
        repeat-expr: num_crystals

  mannequin_extra:
    seq:
      - id: label
        type: gt_str
      - id: unk1
        type: u1
      - id: unk2
        type: u2
      - id: unk3
        type: u2
      - id: hat
        type: u2
      - id: shirt
        type: u2
      - id: pants
        type: u2
      - id: boots
        type: u2
      - id: face
        type: u2
      - id: hand
        type: u2
      - id: back
        type: u2
      - id: hair
        type: u2
      - id: neck
        type: u2

  magic_egg_extra:
    seq:
      - id: egg_amount
        type: u4

  game_grave_extra:
    seq:
      - id: team_id
        type: u1

  portrait_extra:
    seq:
      - id: label
        type: gt_str
      - id: unk1
        type: u4
      - id: unk2
        type: u4
      - id: unk3
        size: 5
      - id: unk4
        type: u1
      - id: unk5
        type: u2
      - id: face
        type: u2
      - id: hat
        type: u2
      - id: hair
        type: u2
      - id: unk6
        type: u4
      - id: infinity_crown_data
        type: gt_str
        if: hat == 12958

  challenge_timer_extra:
    seq: []

  fish_wall_mount_extra:
    seq:
      - id: label
        type: gt_str
      - id: item_id
        type: u4
      - id: lbs
        type: u1

  steam_engine_extra:
    seq:
      - id: temperature
        type: u4

  lock_bot_extra:
    seq:
      - id: age
        type: u4

  weather_machine_1_extra:
    seq:
      - id: settings
        size: 4

  spirit_storage_unit_extra:
    seq:
      - id: ghost_jar_count
        type: u4

  data_bedrock_extra:
    seq:
      - id: unk1
        size: 17
      - id: pad1
        size: 4

  shelf_extra:
    seq:
      - id: top_left_item_id
        type: u4
      - id: top_right_item_id
        type: u4
      - id: bottom_left_item_id
        type: u4
      - id: bottom_right_item_id
        type: u4

  vip_entrance_extra:
    seq:
      - id: unk1
        type: u1
      - id: owner_userid
        type: u4
      - id: num_allowed_userids
        type: u4
      - id: allowed_userids
        type: u4
        repeat: expr
        repeat-expr: num_allowed_userids

  sewing_machine_extra:
    seq:
      - id: num_bolt_ids
        type: u4
      - id: bolt_ids
        type: u4
        repeat: expr
        repeat-expr: num_bolt_ids

  country_flag_extra:
    seq:
      - id: country
        type: gt_str
        if: _parent.fg == 3394

  lobster_trap_extra:
    seq: []

  painting_easel_extra:
    seq:
      - id: item_id
        type: u4
      - id: label
        type: gt_str

  pet_battle_cage_extra:
    seq:
      - id: label
        type: gt_str
      - id: base_pet
        type: u4
      - id: combined_pet_1
        type: u4
      - id: combined_pet_2
        type: u4

  pet_trainer_extra:
    seq:
      - id: name
        type: gt_str
      - id: num_pets
        type: u4
      - id: unk1
        type: u4
      - id: pets
        type: u4
        repeat: expr
        repeat-expr: num_pets

  steam_organ_extra:
    seq:
      - id: instrument_type
        type: u1
      - id: note
        type: u4

  silk_worm_extra:
    seq:
      - id: flags
        type: u1
      - id: name
        type: gt_str
      - id: age_sec
        type: u4
      - id: unk1
        type: u4
      - id: unk2
        type: u4
      - id: can_be_fed
        type: u1
      - id: food_saturation
        type: u4
      - id: water_saturation
        type: u4
      - id: color_argb
        type: a_r_g_b
      - id: sick_duration
        type: u4

  seed_extra:
    seq:
      - id: age
        type: u4
      - id: fruit_count
        type: u1

  dice_extra:
    seq:
      - id: symbol
        type: u1

  provider_extra:
    seq:
      - id: age
        type: u4
      - id: pad1
        size: 4
        if: _parent.fg == 10656

  achievement_block_extra:
    seq:
      - id: unk1
        type: u4
      - id: achievement_id
        type: u1

  heart_monitor_extra:
    seq:
      - id: user_id
        type: u4
      - id: grow_id
        type: gt_str
  
  game_generator_extra:
    seq: []

  xenonite_extra:
    seq:
      - id: unk1
        size: 5

  phone_booth_extra:
    seq:
      - id: hat
        type: u2
      - id: shirt
        type: u2
      - id: pants
        type: u2
      - id: shoes
        type: u2
      - id: face
        type: u2
      - id: hand
        type: u2
      - id: back
        type: u2
      - id: hair
        type: u2
      - id: neck
        type: u2

  crime_in_progress_extra:
    seq:
      - id: crime_name
        type: gt_str
      - id: crime_index
        type: u4
      - id: unk1
        type: u1

  spotlight_extra:
    seq: []

  display_block_extra:
    seq:
      - id: item_id
        type: u4

  vending_machine_extra:
    seq:
      - id: item_id
        type: u4
      - id: price
        type: s4

  fish_tank_port_extra:
    seq:
      - id: flags
        type: u1
      - id: fish_data_length
        type: u4
      - id: fishes
        type: fish_info
        repeat: expr
        repeat-expr: fish_data_length / 2
    types:
      fish_info:
        seq:
          - id: item_id
            type: u4
          - id: lbs
            type: u4

  solar_collector_extra:
    seq:
      - id: unk1
        size: 5

  forge_extra:
    seq:
      - id: temperature
        type: u4

  giving_tree_extra:
    seq:
      - id: harvested
        type: u1
      - id: age
        type: u2
      - id: unk1
        type: u2
      - id: decoration_percentage
        type: u1

  weather_machine_2_extra:
    seq:
      - id: item_id
        type: u4
      - id: gravity
        type: u4
      - id: flag
        type: u1

  fossil_prep_station_extra:
    seq:
      - id: unk1
        type: u4

  dna_extractor_extra:
    seq: []

  howler_extra:
    seq: []

  chemsynth_tank_extra:
    seq:
      - id: current_chem_id
        type: u4
      - id: supposed_chem_id
        type: u4

  storage_box_xtreme_extra:
    seq:
      - id: data_len
        type: u2
      - id: items
        type: storage_item
        repeat: expr
        repeat-expr: data_len / 13
    types:
      storage_item:
        seq:
          - id: pad1
            size: 3
          - id: item_id
            type: u4
          - id: pad2
            size: 2
          - id: item_amt
            type: u4

  cooking_oven_extra:
    seq:
      - id: temp_level
        type: u4
      - id: ingredient_list_size
        type: u4
      - id: ingredients
        type: ingredient
        repeat: expr
        repeat-expr: ingredient_list_size / 2
      - id: unk1
        type: u4
      - id: unk2
        type: u4
      - id: unk3
        type: u4
    types:
      ingredient:
        seq:
          - id: item_id
            type: u4
          - id: time_added
            type: u4

  audio_rack_extra:
    seq:
      - id: note
        type: gt_str
      - id: volume
        type: u4

  geiger_charger_extra:
    seq:
      - id: unk1
        size: 4

  adventure_begins_extra:
    seq: []

  tomb_robber_extra:
    seq: []

  balloon_o_matic_extra:
    seq:
      - id: total_rarity
        type: u4
      - id: team_type
        type: u1

  training_port_extra:
    seq:
      - id: fish_lb
        type: u4
      - id: status
        type: u2
      - id: item_id
        type: u4
      - id: total_exp
        type: u4
      - id: unk1
        size: 8
      - id: fish_level
        type: u4
      - id: unk2
        type: u4
      - id: unk3
        size: 5

  item_sucker_extra:
    seq:
      - id: item_id
        type: u4
      - id: item_amount
        type: u4
      - id: flags
        type: u2
      - id: item_limit
        type: u4

  cybot_extra:
    seq:
      - id: num_commands
        type: u4
      - id: commands
        type: command
        repeat: expr
        repeat-expr: num_commands
      - id: timer
        type: u4
      - id: is_activated
        type: u4
    types:
      command:
        seq:
          - id: command_id
            type: u4
          - id: is_command_used
            type: u4
          - id: unk1
            size: 7

  guild_extra:
    seq:
      - id: unk1
        size: 17

  growscan_extra:
    seq:
      - id: unk1
        type: u1

  containment_field_power_node_extra:
    seq:
      - id: time_ms
        type: u4
      - id: num_linked_nodes
        type: u4
      - id: linked_nodes
        type: u4
        repeat: expr
        repeat-expr: num_linked_nodes

  spirit_board_extra:
    seq:
      - id: player_required
        type: u4
      - id: unk1
        type: gt_str
      - id: command
        type: gt_str
      - id: num_required_items
        type: u4
      - id: required_items
        type: u4
        repeat: expr
        repeat-expr: num_required_items

  tesseract_manipulator_extra:
    seq:
      - id: gems_left
        type: u4
      - id: next_update_ms
        type: u4
      - id: item_id
        type: u4
      - id: enabled
        type: u4

  stormy_cloud_extra:
    seq:
      - id: sting_duration
        type: u4
      - id: is_solid
        type: u4
      - id: non_solid_duration
        type: u4

  temporary_platform_extra:
    seq:
      - id: unk1
        type: u4

  safe_vault_extra:
    seq: []

  angelic_counting_cloud_extra:
    enums:
      states:
        1: raffling
        2: done_raffling
    seq:
      - id: state
        type: u4
        enum: states
      - id: unk1
        type: u2
      - id: ascii_code
        type: u1
        if: state == states::done_raffling

  infinity_weather_machine_extra:
    seq:
      - id: interval_mins
        type: u4
      - id: num_weather_machines
        type: u4
      - id: weather_machines
        type: u4
        repeat: expr
        repeat-expr: num_weather_machines

  pineapple_guzzler_extra:
    seq:
      - id: pineapple_fed
        type: u4

  krakens_galatic_block_extra:
    seq:
      - id: pattern_number
        type: u1
      - id: unk1
        size: 4
      - id: color_rgb
        size: 3

  friends_entrance_extra:
    seq:
      - id: owner_userid
        type: u4
      - id: unk1
        size: 2
      - id: num_allowed_friends_userid
        type: u2
      - id: allowed_friends_userid
        type: u4
        repeat: expr
        repeat-expr: num_allowed_friends_userid