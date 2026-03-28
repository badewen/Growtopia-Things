#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class growtopia_world_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include <vector>
#include <set>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class growtopia_world_t : public kaitai::kstruct {

public:
    class a_r_g_b_t;
    class achievement_block_extra_t;
    class adventure_begins_extra_t;
    class angelic_counting_cloud_extra_t;
    class audio_rack_extra_t;
    class balloon_o_matic_extra_t;
    class cbor_data_t;
    class challenge_timer_extra_t;
    class chemsynth_tank_extra_t;
    class containment_field_power_node_extra_t;
    class cooking_oven_extra_t;
    class country_flag_extra_t;
    class crime_in_progress_extra_t;
    class crystal_extra_t;
    class cybot_extra_t;
    class data_bedrock_extra_t;
    class dice_extra_t;
    class display_block_extra_t;
    class dna_extractor_extra_t;
    class door_extra_t;
    class fish_tank_port_extra_t;
    class fish_wall_mount_extra_t;
    class forge_extra_t;
    class fossil_prep_station_extra_t;
    class friends_entrance_extra_t;
    class game_generator_extra_t;
    class game_grave_extra_t;
    class geiger_charger_extra_t;
    class giving_tree_extra_t;
    class growscan_extra_t;
    class gt_str_t;
    class guild_extra_t;
    class heart_monitor_extra_t;
    class howler_extra_t;
    class infinity_weather_machine_extra_t;
    class item_sucker_extra_t;
    class krakens_galatic_block_extra_t;
    class lobster_trap_extra_t;
    class lock_bot_extra_t;
    class lock_extra_t;
    class magic_egg_extra_t;
    class mannequin_extra_t;
    class painting_easel_extra_t;
    class pet_battle_cage_extra_t;
    class pet_trainer_extra_t;
    class phone_booth_extra_t;
    class pineapple_guzzler_extra_t;
    class portrait_extra_t;
    class provider_extra_t;
    class safe_vault_extra_t;
    class seed_extra_t;
    class sewing_machine_extra_t;
    class shelf_extra_t;
    class sign_extra_t;
    class silk_worm_extra_t;
    class solar_collector_extra_t;
    class spirit_board_extra_t;
    class spirit_storage_unit_extra_t;
    class spotlight_extra_t;
    class steam_engine_extra_t;
    class steam_organ_extra_t;
    class storage_box_xtreme_extra_t;
    class stormy_cloud_extra_t;
    class temporary_platform_extra_t;
    class tesseract_manipulator_extra_t;
    class tomb_robber_extra_t;
    class training_port_extra_t;
    class unknown_extra_t;
    class vending_machine_extra_t;
    class vip_entrance_extra_t;
    class weather_machine_1_extra_t;
    class weather_machine_2_extra_t;
    class world_object_t;
    class world_tile_t;
    class xenonite_extra_t;

    growtopia_world_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~growtopia_world_t();

    class a_r_g_b_t : public kaitai::kstruct {

    public:

        a_r_g_b_t(kaitai::kstream* p__io, growtopia_world_t::silk_worm_extra_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~a_r_g_b_t();

    private:
        uint8_t m_a;
        uint8_t m_r;
        uint8_t m_g;
        uint8_t m_b;
        growtopia_world_t* m__root;
        growtopia_world_t::silk_worm_extra_t* m__parent;

    public:
        uint8_t a() const { return m_a; }
        uint8_t r() const { return m_r; }
        uint8_t g() const { return m_g; }
        uint8_t b() const { return m_b; }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::silk_worm_extra_t* _parent() const { return m__parent; }
    };

    class achievement_block_extra_t : public kaitai::kstruct {

    public:

        achievement_block_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~achievement_block_extra_t();

    private:
        uint32_t m_unk1;
        uint8_t m_achievement_id;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        uint32_t unk1() const { return m_unk1; }
        uint8_t achievement_id() const { return m_achievement_id; }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class adventure_begins_extra_t : public kaitai::kstruct {

    public:

        adventure_begins_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~adventure_begins_extra_t();

    private:
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class angelic_counting_cloud_extra_t : public kaitai::kstruct {

    public:

        enum states_t {
            STATES_RAFFLING = 1,
            STATES_DONE_RAFFLING = 2
        };
        static bool _is_defined_states_t(states_t v);

    private:
        static const std::set<states_t> _values_states_t;

    public:

        angelic_counting_cloud_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~angelic_counting_cloud_extra_t();

    private:
        states_t m_state;
        uint16_t m_unk1;
        uint8_t m_ascii_code;
        bool n_ascii_code;

    public:
        bool _is_null_ascii_code() { ascii_code(); return n_ascii_code; };

    private:
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        states_t state() const { return m_state; }
        uint16_t unk1() const { return m_unk1; }
        uint8_t ascii_code() const { return m_ascii_code; }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class audio_rack_extra_t : public kaitai::kstruct {

    public:

        audio_rack_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~audio_rack_extra_t();

    private:
        std::unique_ptr<gt_str_t> m_note;
        uint32_t m_volume;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        gt_str_t* note() const { return m_note.get(); }
        uint32_t volume() const { return m_volume; }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class balloon_o_matic_extra_t : public kaitai::kstruct {

    public:

        balloon_o_matic_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~balloon_o_matic_extra_t();

    private:
        uint32_t m_total_rarity;
        uint8_t m_team_type;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        uint32_t total_rarity() const { return m_total_rarity; }
        uint8_t team_type() const { return m_team_type; }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class cbor_data_t : public kaitai::kstruct {

    public:

        cbor_data_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~cbor_data_t();

    private:
        uint32_t m_len_data;
        std::string m_data;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        uint32_t len_data() const { return m_len_data; }
        std::string data() const { return m_data; }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class challenge_timer_extra_t : public kaitai::kstruct {

    public:

        challenge_timer_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~challenge_timer_extra_t();

    private:
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class chemsynth_tank_extra_t : public kaitai::kstruct {

    public:

        chemsynth_tank_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~chemsynth_tank_extra_t();

    private:
        uint32_t m_current_chem_id;
        uint32_t m_supposed_chem_id;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        uint32_t current_chem_id() const { return m_current_chem_id; }
        uint32_t supposed_chem_id() const { return m_supposed_chem_id; }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class containment_field_power_node_extra_t : public kaitai::kstruct {

    public:

        containment_field_power_node_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~containment_field_power_node_extra_t();

    private:
        uint32_t m_time_ms;
        uint32_t m_num_linked_nodes;
        std::unique_ptr<std::vector<uint32_t>> m_linked_nodes;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        uint32_t time_ms() const { return m_time_ms; }
        uint32_t num_linked_nodes() const { return m_num_linked_nodes; }
        std::vector<uint32_t>* linked_nodes() const { return m_linked_nodes.get(); }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class cooking_oven_extra_t : public kaitai::kstruct {

    public:
        class ingredient_t;

        cooking_oven_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~cooking_oven_extra_t();

        class ingredient_t : public kaitai::kstruct {

        public:

            ingredient_t(kaitai::kstream* p__io, growtopia_world_t::cooking_oven_extra_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

        private:
            void _read();
            void _clean_up();

        public:
            ~ingredient_t();

        private:
            uint32_t m_item_id;
            uint32_t m_time_added;
            growtopia_world_t* m__root;
            growtopia_world_t::cooking_oven_extra_t* m__parent;

        public:
            uint32_t item_id() const { return m_item_id; }
            uint32_t time_added() const { return m_time_added; }
            growtopia_world_t* _root() const { return m__root; }
            growtopia_world_t::cooking_oven_extra_t* _parent() const { return m__parent; }
        };

    private:
        uint32_t m_temp_level;
        uint32_t m_ingredient_list_size;
        std::unique_ptr<std::vector<std::unique_ptr<ingredient_t>>> m_ingredients;
        uint32_t m_unk1;
        uint32_t m_unk2;
        uint32_t m_unk3;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        uint32_t temp_level() const { return m_temp_level; }
        uint32_t ingredient_list_size() const { return m_ingredient_list_size; }
        std::vector<std::unique_ptr<ingredient_t>>* ingredients() const { return m_ingredients.get(); }
        uint32_t unk1() const { return m_unk1; }
        uint32_t unk2() const { return m_unk2; }
        uint32_t unk3() const { return m_unk3; }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class country_flag_extra_t : public kaitai::kstruct {

    public:

        country_flag_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~country_flag_extra_t();

    private:
        std::unique_ptr<gt_str_t> m_country;
        bool n_country;

    public:
        bool _is_null_country() { country(); return n_country; };

    private:
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        gt_str_t* country() const { return m_country.get(); }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class crime_in_progress_extra_t : public kaitai::kstruct {

    public:

        crime_in_progress_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~crime_in_progress_extra_t();

    private:
        std::unique_ptr<gt_str_t> m_crime_name;
        uint32_t m_crime_index;
        uint8_t m_unk1;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        gt_str_t* crime_name() const { return m_crime_name.get(); }
        uint32_t crime_index() const { return m_crime_index; }
        uint8_t unk1() const { return m_unk1; }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class crystal_extra_t : public kaitai::kstruct {

    public:

        crystal_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~crystal_extra_t();

    private:
        uint16_t m_num_crystals;
        std::unique_ptr<std::vector<uint8_t>> m_crystals;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        uint16_t num_crystals() const { return m_num_crystals; }
        std::vector<uint8_t>* crystals() const { return m_crystals.get(); }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class cybot_extra_t : public kaitai::kstruct {

    public:
        class command_t;

        cybot_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~cybot_extra_t();

        class command_t : public kaitai::kstruct {

        public:

            command_t(kaitai::kstream* p__io, growtopia_world_t::cybot_extra_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

        private:
            void _read();
            void _clean_up();

        public:
            ~command_t();

        private:
            uint32_t m_command_id;
            uint32_t m_is_command_used;
            std::string m_unk1;
            growtopia_world_t* m__root;
            growtopia_world_t::cybot_extra_t* m__parent;

        public:
            uint32_t command_id() const { return m_command_id; }
            uint32_t is_command_used() const { return m_is_command_used; }
            std::string unk1() const { return m_unk1; }
            growtopia_world_t* _root() const { return m__root; }
            growtopia_world_t::cybot_extra_t* _parent() const { return m__parent; }
        };

    private:
        uint32_t m_num_commands;
        std::unique_ptr<std::vector<std::unique_ptr<command_t>>> m_commands;
        uint32_t m_timer;
        uint32_t m_is_activated;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        uint32_t num_commands() const { return m_num_commands; }
        std::vector<std::unique_ptr<command_t>>* commands() const { return m_commands.get(); }
        uint32_t timer() const { return m_timer; }
        uint32_t is_activated() const { return m_is_activated; }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class data_bedrock_extra_t : public kaitai::kstruct {

    public:

        data_bedrock_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~data_bedrock_extra_t();

    private:
        std::string m_unk1;
        std::string m_pad1;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        std::string unk1() const { return m_unk1; }
        std::string pad1() const { return m_pad1; }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class dice_extra_t : public kaitai::kstruct {

    public:

        dice_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~dice_extra_t();

    private:
        uint8_t m_symbol;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        uint8_t symbol() const { return m_symbol; }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class display_block_extra_t : public kaitai::kstruct {

    public:

        display_block_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~display_block_extra_t();

    private:
        uint32_t m_item_id;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        uint32_t item_id() const { return m_item_id; }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class dna_extractor_extra_t : public kaitai::kstruct {

    public:

        dna_extractor_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~dna_extractor_extra_t();

    private:
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class door_extra_t : public kaitai::kstruct {

    public:

        door_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~door_extra_t();

    private:
        std::unique_ptr<gt_str_t> m_label;
        uint8_t m_flags;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        gt_str_t* label() const { return m_label.get(); }
        uint8_t flags() const { return m_flags; }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class fish_tank_port_extra_t : public kaitai::kstruct {

    public:
        class fish_info_t;

        fish_tank_port_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~fish_tank_port_extra_t();

        class fish_info_t : public kaitai::kstruct {

        public:

            fish_info_t(kaitai::kstream* p__io, growtopia_world_t::fish_tank_port_extra_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

        private:
            void _read();
            void _clean_up();

        public:
            ~fish_info_t();

        private:
            uint32_t m_item_id;
            uint32_t m_lbs;
            growtopia_world_t* m__root;
            growtopia_world_t::fish_tank_port_extra_t* m__parent;

        public:
            uint32_t item_id() const { return m_item_id; }
            uint32_t lbs() const { return m_lbs; }
            growtopia_world_t* _root() const { return m__root; }
            growtopia_world_t::fish_tank_port_extra_t* _parent() const { return m__parent; }
        };

    private:
        uint8_t m_flags;
        uint32_t m_fish_data_length;
        std::unique_ptr<std::vector<std::unique_ptr<fish_info_t>>> m_fishes;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        uint8_t flags() const { return m_flags; }
        uint32_t fish_data_length() const { return m_fish_data_length; }
        std::vector<std::unique_ptr<fish_info_t>>* fishes() const { return m_fishes.get(); }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class fish_wall_mount_extra_t : public kaitai::kstruct {

    public:

        fish_wall_mount_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~fish_wall_mount_extra_t();

    private:
        std::unique_ptr<gt_str_t> m_label;
        uint32_t m_item_id;
        uint8_t m_lbs;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        gt_str_t* label() const { return m_label.get(); }
        uint32_t item_id() const { return m_item_id; }
        uint8_t lbs() const { return m_lbs; }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class forge_extra_t : public kaitai::kstruct {

    public:

        forge_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~forge_extra_t();

    private:
        uint32_t m_temperature;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        uint32_t temperature() const { return m_temperature; }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class fossil_prep_station_extra_t : public kaitai::kstruct {

    public:

        fossil_prep_station_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~fossil_prep_station_extra_t();

    private:
        uint32_t m_unk1;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        uint32_t unk1() const { return m_unk1; }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class friends_entrance_extra_t : public kaitai::kstruct {

    public:

        friends_entrance_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~friends_entrance_extra_t();

    private:
        uint32_t m_owner_userid;
        std::string m_unk1;
        uint16_t m_num_allowed_friends_userid;
        std::unique_ptr<std::vector<uint32_t>> m_allowed_friends_userid;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        uint32_t owner_userid() const { return m_owner_userid; }
        std::string unk1() const { return m_unk1; }
        uint16_t num_allowed_friends_userid() const { return m_num_allowed_friends_userid; }
        std::vector<uint32_t>* allowed_friends_userid() const { return m_allowed_friends_userid.get(); }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class game_generator_extra_t : public kaitai::kstruct {

    public:

        game_generator_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~game_generator_extra_t();

    private:
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class game_grave_extra_t : public kaitai::kstruct {

    public:

        game_grave_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~game_grave_extra_t();

    private:
        uint8_t m_team_id;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        uint8_t team_id() const { return m_team_id; }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class geiger_charger_extra_t : public kaitai::kstruct {

    public:

        geiger_charger_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~geiger_charger_extra_t();

    private:
        std::string m_unk1;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        std::string unk1() const { return m_unk1; }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class giving_tree_extra_t : public kaitai::kstruct {

    public:

        giving_tree_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~giving_tree_extra_t();

    private:
        uint8_t m_harvested;
        uint16_t m_age;
        uint16_t m_unk1;
        uint8_t m_decoration_percentage;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        uint8_t harvested() const { return m_harvested; }
        uint16_t age() const { return m_age; }
        uint16_t unk1() const { return m_unk1; }
        uint8_t decoration_percentage() const { return m_decoration_percentage; }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class growscan_extra_t : public kaitai::kstruct {

    public:

        growscan_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~growscan_extra_t();

    private:
        uint8_t m_unk1;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        uint8_t unk1() const { return m_unk1; }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class gt_str_t : public kaitai::kstruct {

    public:

        gt_str_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~gt_str_t();

    private:
        uint16_t m_len_data;
        std::string m_str;
        growtopia_world_t* m__root;
        kaitai::kstruct* m__parent;

    public:
        uint16_t len_data() const { return m_len_data; }
        std::string str() const { return m_str; }
        growtopia_world_t* _root() const { return m__root; }
        kaitai::kstruct* _parent() const { return m__parent; }
    };

    class guild_extra_t : public kaitai::kstruct {

    public:

        guild_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~guild_extra_t();

    private:
        std::string m_unk1;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        std::string unk1() const { return m_unk1; }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class heart_monitor_extra_t : public kaitai::kstruct {

    public:

        heart_monitor_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~heart_monitor_extra_t();

    private:
        uint32_t m_user_id;
        std::unique_ptr<gt_str_t> m_grow_id;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        uint32_t user_id() const { return m_user_id; }
        gt_str_t* grow_id() const { return m_grow_id.get(); }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class howler_extra_t : public kaitai::kstruct {

    public:

        howler_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~howler_extra_t();

    private:
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class infinity_weather_machine_extra_t : public kaitai::kstruct {

    public:

        infinity_weather_machine_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~infinity_weather_machine_extra_t();

    private:
        uint32_t m_interval_mins;
        uint32_t m_num_weather_machines;
        std::unique_ptr<std::vector<uint32_t>> m_weather_machines;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        uint32_t interval_mins() const { return m_interval_mins; }
        uint32_t num_weather_machines() const { return m_num_weather_machines; }
        std::vector<uint32_t>* weather_machines() const { return m_weather_machines.get(); }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class item_sucker_extra_t : public kaitai::kstruct {

    public:

        item_sucker_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~item_sucker_extra_t();

    private:
        uint32_t m_item_id;
        uint32_t m_item_amount;
        uint16_t m_flags;
        uint32_t m_item_limit;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        uint32_t item_id() const { return m_item_id; }
        uint32_t item_amount() const { return m_item_amount; }
        uint16_t flags() const { return m_flags; }
        uint32_t item_limit() const { return m_item_limit; }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class krakens_galatic_block_extra_t : public kaitai::kstruct {

    public:

        krakens_galatic_block_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~krakens_galatic_block_extra_t();

    private:
        uint8_t m_pattern_number;
        std::string m_unk1;
        std::string m_color_rgb;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        uint8_t pattern_number() const { return m_pattern_number; }
        std::string unk1() const { return m_unk1; }
        std::string color_rgb() const { return m_color_rgb; }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class lobster_trap_extra_t : public kaitai::kstruct {

    public:

        lobster_trap_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~lobster_trap_extra_t();

    private:
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class lock_bot_extra_t : public kaitai::kstruct {

    public:

        lock_bot_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~lock_bot_extra_t();

    private:
        uint32_t m_age;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        uint32_t age() const { return m_age; }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class lock_extra_t : public kaitai::kstruct {

    public:

        lock_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~lock_extra_t();

    private:
        uint8_t m_flag;
        uint32_t m_owner_user_id;
        uint32_t m_num_authorized_userids;
        std::unique_ptr<std::vector<uint32_t>> m_authorized_userids;
        uint8_t m_minimum_level;
        std::string m_unk1;
        std::string m_guild_locks_unk;
        bool n_guild_locks_unk;

    public:
        bool _is_null_guild_locks_unk() { guild_locks_unk(); return n_guild_locks_unk; };

    private:
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        uint8_t flag() const { return m_flag; }
        uint32_t owner_user_id() const { return m_owner_user_id; }
        uint32_t num_authorized_userids() const { return m_num_authorized_userids; }
        std::vector<uint32_t>* authorized_userids() const { return m_authorized_userids.get(); }
        uint8_t minimum_level() const { return m_minimum_level; }
        std::string unk1() const { return m_unk1; }
        std::string guild_locks_unk() const { return m_guild_locks_unk; }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class magic_egg_extra_t : public kaitai::kstruct {

    public:

        magic_egg_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~magic_egg_extra_t();

    private:
        uint32_t m_egg_amount;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        uint32_t egg_amount() const { return m_egg_amount; }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class mannequin_extra_t : public kaitai::kstruct {

    public:

        mannequin_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~mannequin_extra_t();

    private:
        std::unique_ptr<gt_str_t> m_label;
        uint8_t m_unk1;
        uint16_t m_unk2;
        uint16_t m_unk3;
        uint16_t m_hat;
        uint16_t m_shirt;
        uint16_t m_pants;
        uint16_t m_boots;
        uint16_t m_face;
        uint16_t m_hand;
        uint16_t m_back;
        uint16_t m_hair;
        uint16_t m_neck;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        gt_str_t* label() const { return m_label.get(); }
        uint8_t unk1() const { return m_unk1; }
        uint16_t unk2() const { return m_unk2; }
        uint16_t unk3() const { return m_unk3; }
        uint16_t hat() const { return m_hat; }
        uint16_t shirt() const { return m_shirt; }
        uint16_t pants() const { return m_pants; }
        uint16_t boots() const { return m_boots; }
        uint16_t face() const { return m_face; }
        uint16_t hand() const { return m_hand; }
        uint16_t back() const { return m_back; }
        uint16_t hair() const { return m_hair; }
        uint16_t neck() const { return m_neck; }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class painting_easel_extra_t : public kaitai::kstruct {

    public:

        painting_easel_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~painting_easel_extra_t();

    private:
        uint32_t m_item_id;
        std::unique_ptr<gt_str_t> m_label;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        uint32_t item_id() const { return m_item_id; }
        gt_str_t* label() const { return m_label.get(); }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class pet_battle_cage_extra_t : public kaitai::kstruct {

    public:

        pet_battle_cage_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~pet_battle_cage_extra_t();

    private:
        std::unique_ptr<gt_str_t> m_label;
        uint32_t m_base_pet;
        uint32_t m_combined_pet_1;
        uint32_t m_combined_pet_2;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        gt_str_t* label() const { return m_label.get(); }
        uint32_t base_pet() const { return m_base_pet; }
        uint32_t combined_pet_1() const { return m_combined_pet_1; }
        uint32_t combined_pet_2() const { return m_combined_pet_2; }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class pet_trainer_extra_t : public kaitai::kstruct {

    public:

        pet_trainer_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~pet_trainer_extra_t();

    private:
        std::unique_ptr<gt_str_t> m_name;
        uint32_t m_num_pets;
        uint32_t m_unk1;
        std::unique_ptr<std::vector<uint32_t>> m_pets;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        gt_str_t* name() const { return m_name.get(); }
        uint32_t num_pets() const { return m_num_pets; }
        uint32_t unk1() const { return m_unk1; }
        std::vector<uint32_t>* pets() const { return m_pets.get(); }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class phone_booth_extra_t : public kaitai::kstruct {

    public:

        phone_booth_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~phone_booth_extra_t();

    private:
        uint16_t m_hat;
        uint16_t m_shirt;
        uint16_t m_pants;
        uint16_t m_shoes;
        uint16_t m_face;
        uint16_t m_hand;
        uint16_t m_back;
        uint16_t m_hair;
        uint16_t m_neck;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        uint16_t hat() const { return m_hat; }
        uint16_t shirt() const { return m_shirt; }
        uint16_t pants() const { return m_pants; }
        uint16_t shoes() const { return m_shoes; }
        uint16_t face() const { return m_face; }
        uint16_t hand() const { return m_hand; }
        uint16_t back() const { return m_back; }
        uint16_t hair() const { return m_hair; }
        uint16_t neck() const { return m_neck; }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class pineapple_guzzler_extra_t : public kaitai::kstruct {

    public:

        pineapple_guzzler_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~pineapple_guzzler_extra_t();

    private:
        uint32_t m_pineapple_fed;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        uint32_t pineapple_fed() const { return m_pineapple_fed; }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class portrait_extra_t : public kaitai::kstruct {

    public:

        portrait_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~portrait_extra_t();

    private:
        std::unique_ptr<gt_str_t> m_label;
        uint32_t m_unk1;
        uint32_t m_unk2;
        std::string m_unk3;
        uint8_t m_unk4;
        uint16_t m_unk5;
        uint16_t m_face;
        uint16_t m_hat;
        uint16_t m_hair;
        uint32_t m_unk6;
        std::unique_ptr<gt_str_t> m_infinity_crown_data;
        bool n_infinity_crown_data;

    public:
        bool _is_null_infinity_crown_data() { infinity_crown_data(); return n_infinity_crown_data; };

    private:
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        gt_str_t* label() const { return m_label.get(); }
        uint32_t unk1() const { return m_unk1; }
        uint32_t unk2() const { return m_unk2; }
        std::string unk3() const { return m_unk3; }
        uint8_t unk4() const { return m_unk4; }
        uint16_t unk5() const { return m_unk5; }
        uint16_t face() const { return m_face; }
        uint16_t hat() const { return m_hat; }
        uint16_t hair() const { return m_hair; }
        uint32_t unk6() const { return m_unk6; }
        gt_str_t* infinity_crown_data() const { return m_infinity_crown_data.get(); }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class provider_extra_t : public kaitai::kstruct {

    public:

        provider_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~provider_extra_t();

    private:
        uint32_t m_age;
        std::string m_pad1;
        bool n_pad1;

    public:
        bool _is_null_pad1() { pad1(); return n_pad1; };

    private:
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        uint32_t age() const { return m_age; }
        std::string pad1() const { return m_pad1; }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class safe_vault_extra_t : public kaitai::kstruct {

    public:

        safe_vault_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~safe_vault_extra_t();

    private:
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class seed_extra_t : public kaitai::kstruct {

    public:

        seed_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~seed_extra_t();

    private:
        uint32_t m_age;
        uint8_t m_fruit_count;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        uint32_t age() const { return m_age; }
        uint8_t fruit_count() const { return m_fruit_count; }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class sewing_machine_extra_t : public kaitai::kstruct {

    public:

        sewing_machine_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~sewing_machine_extra_t();

    private:
        uint32_t m_num_bolt_ids;
        std::unique_ptr<std::vector<uint32_t>> m_bolt_ids;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        uint32_t num_bolt_ids() const { return m_num_bolt_ids; }
        std::vector<uint32_t>* bolt_ids() const { return m_bolt_ids.get(); }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class shelf_extra_t : public kaitai::kstruct {

    public:

        shelf_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~shelf_extra_t();

    private:
        uint32_t m_top_left_item_id;
        uint32_t m_top_right_item_id;
        uint32_t m_bottom_left_item_id;
        uint32_t m_bottom_right_item_id;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        uint32_t top_left_item_id() const { return m_top_left_item_id; }
        uint32_t top_right_item_id() const { return m_top_right_item_id; }
        uint32_t bottom_left_item_id() const { return m_bottom_left_item_id; }
        uint32_t bottom_right_item_id() const { return m_bottom_right_item_id; }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class sign_extra_t : public kaitai::kstruct {

    public:

        sign_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~sign_extra_t();

    private:
        std::unique_ptr<gt_str_t> m_label;
        std::string m_pad1;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        gt_str_t* label() const { return m_label.get(); }
        std::string pad1() const { return m_pad1; }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class silk_worm_extra_t : public kaitai::kstruct {

    public:

        silk_worm_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~silk_worm_extra_t();

    private:
        uint8_t m_flags;
        std::unique_ptr<gt_str_t> m_name;
        uint32_t m_age_sec;
        uint32_t m_unk1;
        uint32_t m_unk2;
        uint8_t m_can_be_fed;
        uint32_t m_food_saturation;
        uint32_t m_water_saturation;
        std::unique_ptr<a_r_g_b_t> m_color_argb;
        uint32_t m_sick_duration;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        uint8_t flags() const { return m_flags; }
        gt_str_t* name() const { return m_name.get(); }
        uint32_t age_sec() const { return m_age_sec; }
        uint32_t unk1() const { return m_unk1; }
        uint32_t unk2() const { return m_unk2; }
        uint8_t can_be_fed() const { return m_can_be_fed; }
        uint32_t food_saturation() const { return m_food_saturation; }
        uint32_t water_saturation() const { return m_water_saturation; }
        a_r_g_b_t* color_argb() const { return m_color_argb.get(); }
        uint32_t sick_duration() const { return m_sick_duration; }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class solar_collector_extra_t : public kaitai::kstruct {

    public:

        solar_collector_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~solar_collector_extra_t();

    private:
        std::string m_unk1;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        std::string unk1() const { return m_unk1; }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class spirit_board_extra_t : public kaitai::kstruct {

    public:

        spirit_board_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~spirit_board_extra_t();

    private:
        uint32_t m_player_required;
        std::unique_ptr<gt_str_t> m_unk1;
        std::unique_ptr<gt_str_t> m_command;
        uint32_t m_num_required_items;
        std::unique_ptr<std::vector<uint32_t>> m_required_items;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        uint32_t player_required() const { return m_player_required; }
        gt_str_t* unk1() const { return m_unk1.get(); }
        gt_str_t* command() const { return m_command.get(); }
        uint32_t num_required_items() const { return m_num_required_items; }
        std::vector<uint32_t>* required_items() const { return m_required_items.get(); }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class spirit_storage_unit_extra_t : public kaitai::kstruct {

    public:

        spirit_storage_unit_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~spirit_storage_unit_extra_t();

    private:
        uint32_t m_ghost_jar_count;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        uint32_t ghost_jar_count() const { return m_ghost_jar_count; }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class spotlight_extra_t : public kaitai::kstruct {

    public:

        spotlight_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~spotlight_extra_t();

    private:
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class steam_engine_extra_t : public kaitai::kstruct {

    public:

        steam_engine_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~steam_engine_extra_t();

    private:
        uint32_t m_temperature;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        uint32_t temperature() const { return m_temperature; }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class steam_organ_extra_t : public kaitai::kstruct {

    public:

        steam_organ_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~steam_organ_extra_t();

    private:
        uint8_t m_instrument_type;
        uint32_t m_note;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        uint8_t instrument_type() const { return m_instrument_type; }
        uint32_t note() const { return m_note; }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class storage_box_xtreme_extra_t : public kaitai::kstruct {

    public:
        class storage_item_t;

        storage_box_xtreme_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~storage_box_xtreme_extra_t();

        class storage_item_t : public kaitai::kstruct {

        public:

            storage_item_t(kaitai::kstream* p__io, growtopia_world_t::storage_box_xtreme_extra_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

        private:
            void _read();
            void _clean_up();

        public:
            ~storage_item_t();

        private:
            std::string m_pad1;
            uint32_t m_item_id;
            std::string m_pad2;
            uint32_t m_item_amt;
            growtopia_world_t* m__root;
            growtopia_world_t::storage_box_xtreme_extra_t* m__parent;

        public:
            std::string pad1() const { return m_pad1; }
            uint32_t item_id() const { return m_item_id; }
            std::string pad2() const { return m_pad2; }
            uint32_t item_amt() const { return m_item_amt; }
            growtopia_world_t* _root() const { return m__root; }
            growtopia_world_t::storage_box_xtreme_extra_t* _parent() const { return m__parent; }
        };

    private:
        uint16_t m_data_len;
        std::unique_ptr<std::vector<std::unique_ptr<storage_item_t>>> m_items;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        uint16_t data_len() const { return m_data_len; }
        std::vector<std::unique_ptr<storage_item_t>>* items() const { return m_items.get(); }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class stormy_cloud_extra_t : public kaitai::kstruct {

    public:

        stormy_cloud_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~stormy_cloud_extra_t();

    private:
        uint32_t m_sting_duration;
        uint32_t m_is_solid;
        uint32_t m_non_solid_duration;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        uint32_t sting_duration() const { return m_sting_duration; }
        uint32_t is_solid() const { return m_is_solid; }
        uint32_t non_solid_duration() const { return m_non_solid_duration; }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class temporary_platform_extra_t : public kaitai::kstruct {

    public:

        temporary_platform_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~temporary_platform_extra_t();

    private:
        uint32_t m_unk1;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        uint32_t unk1() const { return m_unk1; }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class tesseract_manipulator_extra_t : public kaitai::kstruct {

    public:

        tesseract_manipulator_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~tesseract_manipulator_extra_t();

    private:
        uint32_t m_gems_left;
        uint32_t m_next_update_ms;
        uint32_t m_item_id;
        uint32_t m_enabled;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        uint32_t gems_left() const { return m_gems_left; }
        uint32_t next_update_ms() const { return m_next_update_ms; }
        uint32_t item_id() const { return m_item_id; }
        uint32_t enabled() const { return m_enabled; }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class tomb_robber_extra_t : public kaitai::kstruct {

    public:

        tomb_robber_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~tomb_robber_extra_t();

    private:
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class training_port_extra_t : public kaitai::kstruct {

    public:

        training_port_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~training_port_extra_t();

    private:
        uint32_t m_fish_lb;
        uint16_t m_status;
        uint32_t m_item_id;
        uint32_t m_total_exp;
        std::string m_unk1;
        uint32_t m_fish_level;
        uint32_t m_unk2;
        std::string m_unk3;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        uint32_t fish_lb() const { return m_fish_lb; }
        uint16_t status() const { return m_status; }
        uint32_t item_id() const { return m_item_id; }
        uint32_t total_exp() const { return m_total_exp; }
        std::string unk1() const { return m_unk1; }
        uint32_t fish_level() const { return m_fish_level; }
        uint32_t unk2() const { return m_unk2; }
        std::string unk3() const { return m_unk3; }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class unknown_extra_t : public kaitai::kstruct {

    public:

        unknown_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~unknown_extra_t();

    private:
        std::string m_this_is_just_to_error_out_kaitai_pls;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:

        /**
         * This type is just to error out kaitai. So if you encounter any error, 
         * please either give the world name or dump the world and submit it to me
         * (81739844+badewen@users.noreply.github.com).  
         */
        std::string this_is_just_to_error_out_kaitai_pls() const { return m_this_is_just_to_error_out_kaitai_pls; }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class vending_machine_extra_t : public kaitai::kstruct {

    public:

        vending_machine_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~vending_machine_extra_t();

    private:
        uint32_t m_item_id;
        int32_t m_price;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        uint32_t item_id() const { return m_item_id; }
        int32_t price() const { return m_price; }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class vip_entrance_extra_t : public kaitai::kstruct {

    public:

        vip_entrance_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~vip_entrance_extra_t();

    private:
        uint8_t m_unk1;
        uint32_t m_owner_userid;
        uint32_t m_num_allowed_userids;
        std::unique_ptr<std::vector<uint32_t>> m_allowed_userids;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        uint8_t unk1() const { return m_unk1; }
        uint32_t owner_userid() const { return m_owner_userid; }
        uint32_t num_allowed_userids() const { return m_num_allowed_userids; }
        std::vector<uint32_t>* allowed_userids() const { return m_allowed_userids.get(); }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class weather_machine_1_extra_t : public kaitai::kstruct {

    public:

        weather_machine_1_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~weather_machine_1_extra_t();

    private:
        std::string m_settings;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        std::string settings() const { return m_settings; }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class weather_machine_2_extra_t : public kaitai::kstruct {

    public:

        weather_machine_2_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~weather_machine_2_extra_t();

    private:
        uint32_t m_item_id;
        uint32_t m_gravity;
        uint8_t m_flag;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        uint32_t item_id() const { return m_item_id; }
        uint32_t gravity() const { return m_gravity; }
        uint8_t flag() const { return m_flag; }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

    class world_object_t : public kaitai::kstruct {

    public:

        world_object_t(kaitai::kstream* p__io, growtopia_world_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~world_object_t();

    private:
        uint16_t m_item_id;
        float m_x;
        float m_y;
        uint8_t m_amount;
        uint8_t m_flag;
        uint32_t m_uid;
        growtopia_world_t* m__root;
        growtopia_world_t* m__parent;

    public:
        uint16_t item_id() const { return m_item_id; }
        float x() const { return m_x; }
        float y() const { return m_y; }
        uint8_t amount() const { return m_amount; }
        uint8_t flag() const { return m_flag; }
        uint32_t uid() const { return m_uid; }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t* _parent() const { return m__parent; }
    };

    class world_tile_t : public kaitai::kstruct {

    public:

        world_tile_t(kaitai::kstream* p__io, growtopia_world_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~world_tile_t();

    private:
        uint16_t m_fg;
        uint16_t m_bg;
        std::string m_invalid_tile_fg_bg_kaitai_crasher;
        bool n_invalid_tile_fg_bg_kaitai_crasher;

    public:
        bool _is_null_invalid_tile_fg_bg_kaitai_crasher() { invalid_tile_fg_bg_kaitai_crasher(); return n_invalid_tile_fg_bg_kaitai_crasher; };

    private:
        uint16_t m_parent_block_index;
        uint16_t m_flag;
        uint16_t m_parent_lock;
        bool n_parent_lock;

    public:
        bool _is_null_parent_lock() { parent_lock(); return n_parent_lock; };

    private:
        uint8_t m_extra_data_type;
        bool n_extra_data_type;

    public:
        bool _is_null_extra_data_type() { extra_data_type(); return n_extra_data_type; };

    private:
        std::unique_ptr<kaitai::kstruct> m_tile_extra;
        bool n_tile_extra;

    public:
        bool _is_null_tile_extra() { tile_extra(); return n_tile_extra; };

    private:
        std::unique_ptr<cbor_data_t> m_cbor_data;
        bool n_cbor_data;

    public:
        bool _is_null_cbor_data() { cbor_data(); return n_cbor_data; };

    private:
        growtopia_world_t* m__root;
        growtopia_world_t* m__parent;

    public:
        uint16_t fg() const { return m_fg; }
        uint16_t bg() const { return m_bg; }

        /**
         * This type is just to error out kaitai. If this is 
         * encountered, then maybe there was a parsing error.
         * Please report :)
         */
        std::string invalid_tile_fg_bg_kaitai_crasher() const { return m_invalid_tile_fg_bg_kaitai_crasher; }
        uint16_t parent_block_index() const { return m_parent_block_index; }
        uint16_t flag() const { return m_flag; }
        uint16_t parent_lock() const { return m_parent_lock; }
        uint8_t extra_data_type() const { return m_extra_data_type; }
        kaitai::kstruct* tile_extra() const { return m_tile_extra.get(); }
        cbor_data_t* cbor_data() const { return m_cbor_data.get(); }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t* _parent() const { return m__parent; }
    };

    class xenonite_extra_t : public kaitai::kstruct {

    public:

        xenonite_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent = nullptr, growtopia_world_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~xenonite_extra_t();

    private:
        std::string m_unk1;
        growtopia_world_t* m__root;
        growtopia_world_t::world_tile_t* m__parent;

    public:
        std::string unk1() const { return m_unk1; }
        growtopia_world_t* _root() const { return m__root; }
        growtopia_world_t::world_tile_t* _parent() const { return m__parent; }
    };

private:
    uint16_t m_version;
    uint32_t m_unk1;
    std::unique_ptr<gt_str_t> m_name;
    uint32_t m_width;
    uint32_t m_height;
    uint32_t m_num_tiles;
    std::string m_unk2;
    std::unique_ptr<std::vector<std::unique_ptr<world_tile_t>>> m_tiles;
    std::string m_unk3;
    uint32_t m_num_objects;
    uint32_t m_last_object_uid;
    std::unique_ptr<std::vector<std::unique_ptr<world_object_t>>> m_objects;
    growtopia_world_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint16_t version() const { return m_version; }
    uint32_t unk1() const { return m_unk1; }
    gt_str_t* name() const { return m_name.get(); }
    uint32_t width() const { return m_width; }
    uint32_t height() const { return m_height; }
    uint32_t num_tiles() const { return m_num_tiles; }
    std::string unk2() const { return m_unk2; }
    std::vector<std::unique_ptr<world_tile_t>>* tiles() const { return m_tiles.get(); }
    std::string unk3() const { return m_unk3; }
    uint32_t num_objects() const { return m_num_objects; }
    uint32_t last_object_uid() const { return m_last_object_uid; }
    std::vector<std::unique_ptr<world_object_t>>* objects() const { return m_objects.get(); }
    growtopia_world_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
