// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "growtopia_world.h"

growtopia_world_t::growtopia_world_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_name = nullptr;
    m_tiles = nullptr;
    m_objects = nullptr;
    _read();
}

void growtopia_world_t::_read() {
    m_version = m__io->read_u2le();
    m_unk1 = m__io->read_u4le();
    m_name = std::unique_ptr<gt_str_t>(new gt_str_t(m__io, this, m__root));
    m_width = m__io->read_u4le();
    m_height = m__io->read_u4le();
    m_num_tiles = m__io->read_u4le();
    m_unk2 = m__io->read_bytes(5);
    m_tiles = std::unique_ptr<std::vector<std::unique_ptr<world_tile_t>>>(new std::vector<std::unique_ptr<world_tile_t>>());
    const int l_tiles = num_tiles();
    for (int i = 0; i < l_tiles; i++) {
        m_tiles->push_back(std::move(std::unique_ptr<world_tile_t>(new world_tile_t(m__io, this, m__root))));
    }
    m_unk3 = m__io->read_bytes(12);
    m_num_objects = m__io->read_u4le();
    m_last_object_uid = m__io->read_u4le();
    m_objects = std::unique_ptr<std::vector<std::unique_ptr<world_object_t>>>(new std::vector<std::unique_ptr<world_object_t>>());
    const int l_objects = num_objects();
    for (int i = 0; i < l_objects; i++) {
        m_objects->push_back(std::move(std::unique_ptr<world_object_t>(new world_object_t(m__io, this, m__root))));
    }
}

growtopia_world_t::~growtopia_world_t() {
    _clean_up();
}

void growtopia_world_t::_clean_up() {
}

growtopia_world_t::a_r_g_b_t::a_r_g_b_t(kaitai::kstream* p__io, growtopia_world_t::silk_worm_extra_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void growtopia_world_t::a_r_g_b_t::_read() {
    m_a = m__io->read_u1();
    m_r = m__io->read_u1();
    m_g = m__io->read_u1();
    m_b = m__io->read_u1();
}

growtopia_world_t::a_r_g_b_t::~a_r_g_b_t() {
    _clean_up();
}

void growtopia_world_t::a_r_g_b_t::_clean_up() {
}

growtopia_world_t::achievement_block_extra_t::achievement_block_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void growtopia_world_t::achievement_block_extra_t::_read() {
    m_unk1 = m__io->read_u4le();
    m_achievement_id = m__io->read_u1();
}

growtopia_world_t::achievement_block_extra_t::~achievement_block_extra_t() {
    _clean_up();
}

void growtopia_world_t::achievement_block_extra_t::_clean_up() {
}

growtopia_world_t::adventure_begins_extra_t::adventure_begins_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void growtopia_world_t::adventure_begins_extra_t::_read() {
}

growtopia_world_t::adventure_begins_extra_t::~adventure_begins_extra_t() {
    _clean_up();
}

void growtopia_world_t::adventure_begins_extra_t::_clean_up() {
}
const std::set<growtopia_world_t::angelic_counting_cloud_extra_t::states_t> growtopia_world_t::angelic_counting_cloud_extra_t::_values_states_t{
    growtopia_world_t::angelic_counting_cloud_extra_t::STATES_RAFFLING,
    growtopia_world_t::angelic_counting_cloud_extra_t::STATES_DONE_RAFFLING,
};
bool growtopia_world_t::angelic_counting_cloud_extra_t::_is_defined_states_t(growtopia_world_t::angelic_counting_cloud_extra_t::states_t v) {
    return growtopia_world_t::angelic_counting_cloud_extra_t::_values_states_t.find(v) != growtopia_world_t::angelic_counting_cloud_extra_t::_values_states_t.end();
}

growtopia_world_t::angelic_counting_cloud_extra_t::angelic_counting_cloud_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void growtopia_world_t::angelic_counting_cloud_extra_t::_read() {
    m_state = static_cast<growtopia_world_t::angelic_counting_cloud_extra_t::states_t>(m__io->read_u4le());
    m_unk1 = m__io->read_u2le();
    n_ascii_code = true;
    if (state() == growtopia_world_t::angelic_counting_cloud_extra_t::STATES_DONE_RAFFLING) {
        n_ascii_code = false;
        m_ascii_code = m__io->read_u1();
    }
}

growtopia_world_t::angelic_counting_cloud_extra_t::~angelic_counting_cloud_extra_t() {
    _clean_up();
}

void growtopia_world_t::angelic_counting_cloud_extra_t::_clean_up() {
    if (!n_ascii_code) {
    }
}

growtopia_world_t::audio_rack_extra_t::audio_rack_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_note = nullptr;
    _read();
}

void growtopia_world_t::audio_rack_extra_t::_read() {
    m_note = std::unique_ptr<gt_str_t>(new gt_str_t(m__io, this, m__root));
    m_volume = m__io->read_u4le();
}

growtopia_world_t::audio_rack_extra_t::~audio_rack_extra_t() {
    _clean_up();
}

void growtopia_world_t::audio_rack_extra_t::_clean_up() {
}

growtopia_world_t::balloon_o_matic_extra_t::balloon_o_matic_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void growtopia_world_t::balloon_o_matic_extra_t::_read() {
    m_total_rarity = m__io->read_u4le();
    m_team_type = m__io->read_u1();
}

growtopia_world_t::balloon_o_matic_extra_t::~balloon_o_matic_extra_t() {
    _clean_up();
}

void growtopia_world_t::balloon_o_matic_extra_t::_clean_up() {
}

growtopia_world_t::cbor_data_t::cbor_data_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void growtopia_world_t::cbor_data_t::_read() {
    m_len_data = m__io->read_u4le();
    m_data = m__io->read_bytes(len_data());
}

growtopia_world_t::cbor_data_t::~cbor_data_t() {
    _clean_up();
}

void growtopia_world_t::cbor_data_t::_clean_up() {
}

growtopia_world_t::challenge_timer_extra_t::challenge_timer_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void growtopia_world_t::challenge_timer_extra_t::_read() {
}

growtopia_world_t::challenge_timer_extra_t::~challenge_timer_extra_t() {
    _clean_up();
}

void growtopia_world_t::challenge_timer_extra_t::_clean_up() {
}

growtopia_world_t::chemsynth_tank_extra_t::chemsynth_tank_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void growtopia_world_t::chemsynth_tank_extra_t::_read() {
    m_current_chem_id = m__io->read_u4le();
    m_supposed_chem_id = m__io->read_u4le();
}

growtopia_world_t::chemsynth_tank_extra_t::~chemsynth_tank_extra_t() {
    _clean_up();
}

void growtopia_world_t::chemsynth_tank_extra_t::_clean_up() {
}

growtopia_world_t::containment_field_power_node_extra_t::containment_field_power_node_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_linked_nodes = nullptr;
    _read();
}

void growtopia_world_t::containment_field_power_node_extra_t::_read() {
    m_time_ms = m__io->read_u4le();
    m_num_linked_nodes = m__io->read_u4le();
    m_linked_nodes = std::unique_ptr<std::vector<uint32_t>>(new std::vector<uint32_t>());
    const int l_linked_nodes = num_linked_nodes();
    for (int i = 0; i < l_linked_nodes; i++) {
        m_linked_nodes->push_back(std::move(m__io->read_u4le()));
    }
}

growtopia_world_t::containment_field_power_node_extra_t::~containment_field_power_node_extra_t() {
    _clean_up();
}

void growtopia_world_t::containment_field_power_node_extra_t::_clean_up() {
}

growtopia_world_t::cooking_oven_extra_t::cooking_oven_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_ingredients = nullptr;
    _read();
}

void growtopia_world_t::cooking_oven_extra_t::_read() {
    m_temp_level = m__io->read_u4le();
    m_ingredient_list_size = m__io->read_u4le();
    m_ingredients = std::unique_ptr<std::vector<std::unique_ptr<ingredient_t>>>(new std::vector<std::unique_ptr<ingredient_t>>());
    const int l_ingredients = ingredient_list_size() / 2;
    for (int i = 0; i < l_ingredients; i++) {
        m_ingredients->push_back(std::move(std::unique_ptr<ingredient_t>(new ingredient_t(m__io, this, m__root))));
    }
    m_unk1 = m__io->read_u4le();
    m_unk2 = m__io->read_u4le();
    m_unk3 = m__io->read_u4le();
}

growtopia_world_t::cooking_oven_extra_t::~cooking_oven_extra_t() {
    _clean_up();
}

void growtopia_world_t::cooking_oven_extra_t::_clean_up() {
}

growtopia_world_t::cooking_oven_extra_t::ingredient_t::ingredient_t(kaitai::kstream* p__io, growtopia_world_t::cooking_oven_extra_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void growtopia_world_t::cooking_oven_extra_t::ingredient_t::_read() {
    m_item_id = m__io->read_u4le();
    m_time_added = m__io->read_u4le();
}

growtopia_world_t::cooking_oven_extra_t::ingredient_t::~ingredient_t() {
    _clean_up();
}

void growtopia_world_t::cooking_oven_extra_t::ingredient_t::_clean_up() {
}

growtopia_world_t::country_flag_extra_t::country_flag_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_country = nullptr;
    _read();
}

void growtopia_world_t::country_flag_extra_t::_read() {
    n_country = true;
    if (_parent()->fg() == 3394) {
        n_country = false;
        m_country = std::unique_ptr<gt_str_t>(new gt_str_t(m__io, this, m__root));
    }
}

growtopia_world_t::country_flag_extra_t::~country_flag_extra_t() {
    _clean_up();
}

void growtopia_world_t::country_flag_extra_t::_clean_up() {
    if (!n_country) {
    }
}

growtopia_world_t::crime_in_progress_extra_t::crime_in_progress_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_crime_name = nullptr;
    _read();
}

void growtopia_world_t::crime_in_progress_extra_t::_read() {
    m_crime_name = std::unique_ptr<gt_str_t>(new gt_str_t(m__io, this, m__root));
    m_crime_index = m__io->read_u4le();
    m_unk1 = m__io->read_u1();
}

growtopia_world_t::crime_in_progress_extra_t::~crime_in_progress_extra_t() {
    _clean_up();
}

void growtopia_world_t::crime_in_progress_extra_t::_clean_up() {
}

growtopia_world_t::crystal_extra_t::crystal_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_crystals = nullptr;
    _read();
}

void growtopia_world_t::crystal_extra_t::_read() {
    m_num_crystals = m__io->read_u2le();
    m_crystals = std::unique_ptr<std::vector<uint8_t>>(new std::vector<uint8_t>());
    const int l_crystals = num_crystals();
    for (int i = 0; i < l_crystals; i++) {
        m_crystals->push_back(std::move(m__io->read_u1()));
    }
}

growtopia_world_t::crystal_extra_t::~crystal_extra_t() {
    _clean_up();
}

void growtopia_world_t::crystal_extra_t::_clean_up() {
}

growtopia_world_t::cybot_extra_t::cybot_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_commands = nullptr;
    _read();
}

void growtopia_world_t::cybot_extra_t::_read() {
    m_num_commands = m__io->read_u4le();
    m_commands = std::unique_ptr<std::vector<std::unique_ptr<command_t>>>(new std::vector<std::unique_ptr<command_t>>());
    const int l_commands = num_commands();
    for (int i = 0; i < l_commands; i++) {
        m_commands->push_back(std::move(std::unique_ptr<command_t>(new command_t(m__io, this, m__root))));
    }
    m_timer = m__io->read_u4le();
    m_is_activated = m__io->read_u4le();
}

growtopia_world_t::cybot_extra_t::~cybot_extra_t() {
    _clean_up();
}

void growtopia_world_t::cybot_extra_t::_clean_up() {
}

growtopia_world_t::cybot_extra_t::command_t::command_t(kaitai::kstream* p__io, growtopia_world_t::cybot_extra_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void growtopia_world_t::cybot_extra_t::command_t::_read() {
    m_command_id = m__io->read_u4le();
    m_is_command_used = m__io->read_u4le();
    m_unk1 = m__io->read_bytes(7);
}

growtopia_world_t::cybot_extra_t::command_t::~command_t() {
    _clean_up();
}

void growtopia_world_t::cybot_extra_t::command_t::_clean_up() {
}

growtopia_world_t::data_bedrock_extra_t::data_bedrock_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void growtopia_world_t::data_bedrock_extra_t::_read() {
    m_unk1 = m__io->read_bytes(17);
    m_pad1 = m__io->read_bytes(4);
}

growtopia_world_t::data_bedrock_extra_t::~data_bedrock_extra_t() {
    _clean_up();
}

void growtopia_world_t::data_bedrock_extra_t::_clean_up() {
}

growtopia_world_t::dice_extra_t::dice_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void growtopia_world_t::dice_extra_t::_read() {
    m_symbol = m__io->read_u1();
}

growtopia_world_t::dice_extra_t::~dice_extra_t() {
    _clean_up();
}

void growtopia_world_t::dice_extra_t::_clean_up() {
}

growtopia_world_t::display_block_extra_t::display_block_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void growtopia_world_t::display_block_extra_t::_read() {
    m_item_id = m__io->read_u4le();
}

growtopia_world_t::display_block_extra_t::~display_block_extra_t() {
    _clean_up();
}

void growtopia_world_t::display_block_extra_t::_clean_up() {
}

growtopia_world_t::dna_extractor_extra_t::dna_extractor_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void growtopia_world_t::dna_extractor_extra_t::_read() {
}

growtopia_world_t::dna_extractor_extra_t::~dna_extractor_extra_t() {
    _clean_up();
}

void growtopia_world_t::dna_extractor_extra_t::_clean_up() {
}

growtopia_world_t::door_extra_t::door_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_label = nullptr;
    _read();
}

void growtopia_world_t::door_extra_t::_read() {
    m_label = std::unique_ptr<gt_str_t>(new gt_str_t(m__io, this, m__root));
    m_flags = m__io->read_u1();
}

growtopia_world_t::door_extra_t::~door_extra_t() {
    _clean_up();
}

void growtopia_world_t::door_extra_t::_clean_up() {
}

growtopia_world_t::fish_tank_port_extra_t::fish_tank_port_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_fishes = nullptr;
    _read();
}

void growtopia_world_t::fish_tank_port_extra_t::_read() {
    m_flags = m__io->read_u1();
    m_fish_data_length = m__io->read_u4le();
    m_fishes = std::unique_ptr<std::vector<std::unique_ptr<fish_info_t>>>(new std::vector<std::unique_ptr<fish_info_t>>());
    const int l_fishes = fish_data_length() / 2;
    for (int i = 0; i < l_fishes; i++) {
        m_fishes->push_back(std::move(std::unique_ptr<fish_info_t>(new fish_info_t(m__io, this, m__root))));
    }
}

growtopia_world_t::fish_tank_port_extra_t::~fish_tank_port_extra_t() {
    _clean_up();
}

void growtopia_world_t::fish_tank_port_extra_t::_clean_up() {
}

growtopia_world_t::fish_tank_port_extra_t::fish_info_t::fish_info_t(kaitai::kstream* p__io, growtopia_world_t::fish_tank_port_extra_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void growtopia_world_t::fish_tank_port_extra_t::fish_info_t::_read() {
    m_item_id = m__io->read_u4le();
    m_lbs = m__io->read_u4le();
}

growtopia_world_t::fish_tank_port_extra_t::fish_info_t::~fish_info_t() {
    _clean_up();
}

void growtopia_world_t::fish_tank_port_extra_t::fish_info_t::_clean_up() {
}

growtopia_world_t::fish_wall_mount_extra_t::fish_wall_mount_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_label = nullptr;
    _read();
}

void growtopia_world_t::fish_wall_mount_extra_t::_read() {
    m_label = std::unique_ptr<gt_str_t>(new gt_str_t(m__io, this, m__root));
    m_item_id = m__io->read_u4le();
    m_lbs = m__io->read_u1();
}

growtopia_world_t::fish_wall_mount_extra_t::~fish_wall_mount_extra_t() {
    _clean_up();
}

void growtopia_world_t::fish_wall_mount_extra_t::_clean_up() {
}

growtopia_world_t::forge_extra_t::forge_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void growtopia_world_t::forge_extra_t::_read() {
    m_temperature = m__io->read_u4le();
}

growtopia_world_t::forge_extra_t::~forge_extra_t() {
    _clean_up();
}

void growtopia_world_t::forge_extra_t::_clean_up() {
}

growtopia_world_t::fossil_prep_station_extra_t::fossil_prep_station_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void growtopia_world_t::fossil_prep_station_extra_t::_read() {
    m_unk1 = m__io->read_u4le();
}

growtopia_world_t::fossil_prep_station_extra_t::~fossil_prep_station_extra_t() {
    _clean_up();
}

void growtopia_world_t::fossil_prep_station_extra_t::_clean_up() {
}

growtopia_world_t::friends_entrance_extra_t::friends_entrance_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_allowed_friends_userid = nullptr;
    _read();
}

void growtopia_world_t::friends_entrance_extra_t::_read() {
    m_owner_userid = m__io->read_u4le();
    m_unk1 = m__io->read_bytes(2);
    m_num_allowed_friends_userid = m__io->read_u2le();
    m_allowed_friends_userid = std::unique_ptr<std::vector<uint32_t>>(new std::vector<uint32_t>());
    const int l_allowed_friends_userid = num_allowed_friends_userid();
    for (int i = 0; i < l_allowed_friends_userid; i++) {
        m_allowed_friends_userid->push_back(std::move(m__io->read_u4le()));
    }
}

growtopia_world_t::friends_entrance_extra_t::~friends_entrance_extra_t() {
    _clean_up();
}

void growtopia_world_t::friends_entrance_extra_t::_clean_up() {
}

growtopia_world_t::game_generator_extra_t::game_generator_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void growtopia_world_t::game_generator_extra_t::_read() {
}

growtopia_world_t::game_generator_extra_t::~game_generator_extra_t() {
    _clean_up();
}

void growtopia_world_t::game_generator_extra_t::_clean_up() {
}

growtopia_world_t::game_grave_extra_t::game_grave_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void growtopia_world_t::game_grave_extra_t::_read() {
    m_team_id = m__io->read_u1();
}

growtopia_world_t::game_grave_extra_t::~game_grave_extra_t() {
    _clean_up();
}

void growtopia_world_t::game_grave_extra_t::_clean_up() {
}

growtopia_world_t::geiger_charger_extra_t::geiger_charger_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void growtopia_world_t::geiger_charger_extra_t::_read() {
    m_unk1 = m__io->read_bytes(4);
}

growtopia_world_t::geiger_charger_extra_t::~geiger_charger_extra_t() {
    _clean_up();
}

void growtopia_world_t::geiger_charger_extra_t::_clean_up() {
}

growtopia_world_t::giving_tree_extra_t::giving_tree_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void growtopia_world_t::giving_tree_extra_t::_read() {
    m_harvested = m__io->read_u1();
    m_age = m__io->read_u2le();
    m_unk1 = m__io->read_u2le();
    m_decoration_percentage = m__io->read_u1();
}

growtopia_world_t::giving_tree_extra_t::~giving_tree_extra_t() {
    _clean_up();
}

void growtopia_world_t::giving_tree_extra_t::_clean_up() {
}

growtopia_world_t::growscan_extra_t::growscan_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void growtopia_world_t::growscan_extra_t::_read() {
    m_unk1 = m__io->read_u1();
}

growtopia_world_t::growscan_extra_t::~growscan_extra_t() {
    _clean_up();
}

void growtopia_world_t::growscan_extra_t::_clean_up() {
}

growtopia_world_t::gt_str_t::gt_str_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void growtopia_world_t::gt_str_t::_read() {
    m_len_data = m__io->read_u2le();
    m_str = kaitai::kstream::bytes_to_str(m__io->read_bytes(len_data()), "ASCII");
}

growtopia_world_t::gt_str_t::~gt_str_t() {
    _clean_up();
}

void growtopia_world_t::gt_str_t::_clean_up() {
}

growtopia_world_t::guild_extra_t::guild_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void growtopia_world_t::guild_extra_t::_read() {
    m_unk1 = m__io->read_bytes(17);
}

growtopia_world_t::guild_extra_t::~guild_extra_t() {
    _clean_up();
}

void growtopia_world_t::guild_extra_t::_clean_up() {
}

growtopia_world_t::heart_monitor_extra_t::heart_monitor_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_grow_id = nullptr;
    _read();
}

void growtopia_world_t::heart_monitor_extra_t::_read() {
    m_user_id = m__io->read_u4le();
    m_grow_id = std::unique_ptr<gt_str_t>(new gt_str_t(m__io, this, m__root));
}

growtopia_world_t::heart_monitor_extra_t::~heart_monitor_extra_t() {
    _clean_up();
}

void growtopia_world_t::heart_monitor_extra_t::_clean_up() {
}

growtopia_world_t::howler_extra_t::howler_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void growtopia_world_t::howler_extra_t::_read() {
}

growtopia_world_t::howler_extra_t::~howler_extra_t() {
    _clean_up();
}

void growtopia_world_t::howler_extra_t::_clean_up() {
}

growtopia_world_t::infinity_weather_machine_extra_t::infinity_weather_machine_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_weather_machines = nullptr;
    _read();
}

void growtopia_world_t::infinity_weather_machine_extra_t::_read() {
    m_interval_mins = m__io->read_u4le();
    m_num_weather_machines = m__io->read_u4le();
    m_weather_machines = std::unique_ptr<std::vector<uint32_t>>(new std::vector<uint32_t>());
    const int l_weather_machines = num_weather_machines();
    for (int i = 0; i < l_weather_machines; i++) {
        m_weather_machines->push_back(std::move(m__io->read_u4le()));
    }
}

growtopia_world_t::infinity_weather_machine_extra_t::~infinity_weather_machine_extra_t() {
    _clean_up();
}

void growtopia_world_t::infinity_weather_machine_extra_t::_clean_up() {
}

growtopia_world_t::item_sucker_extra_t::item_sucker_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void growtopia_world_t::item_sucker_extra_t::_read() {
    m_item_id = m__io->read_u4le();
    m_item_amount = m__io->read_u4le();
    m_flags = m__io->read_u2le();
    m_item_limit = m__io->read_u4le();
}

growtopia_world_t::item_sucker_extra_t::~item_sucker_extra_t() {
    _clean_up();
}

void growtopia_world_t::item_sucker_extra_t::_clean_up() {
}

growtopia_world_t::krakens_galatic_block_extra_t::krakens_galatic_block_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void growtopia_world_t::krakens_galatic_block_extra_t::_read() {
    m_pattern_number = m__io->read_u1();
    m_unk1 = m__io->read_bytes(4);
    m_color_rgb = m__io->read_bytes(3);
}

growtopia_world_t::krakens_galatic_block_extra_t::~krakens_galatic_block_extra_t() {
    _clean_up();
}

void growtopia_world_t::krakens_galatic_block_extra_t::_clean_up() {
}

growtopia_world_t::lobster_trap_extra_t::lobster_trap_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void growtopia_world_t::lobster_trap_extra_t::_read() {
}

growtopia_world_t::lobster_trap_extra_t::~lobster_trap_extra_t() {
    _clean_up();
}

void growtopia_world_t::lobster_trap_extra_t::_clean_up() {
}

growtopia_world_t::lock_bot_extra_t::lock_bot_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void growtopia_world_t::lock_bot_extra_t::_read() {
    m_age = m__io->read_u4le();
}

growtopia_world_t::lock_bot_extra_t::~lock_bot_extra_t() {
    _clean_up();
}

void growtopia_world_t::lock_bot_extra_t::_clean_up() {
}

growtopia_world_t::lock_extra_t::lock_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_authorized_userids = nullptr;
    _read();
}

void growtopia_world_t::lock_extra_t::_read() {
    m_flag = m__io->read_u1();
    m_owner_user_id = m__io->read_u4le();
    m_num_authorized_userids = m__io->read_u4le();
    m_authorized_userids = std::unique_ptr<std::vector<uint32_t>>(new std::vector<uint32_t>());
    const int l_authorized_userids = num_authorized_userids();
    for (int i = 0; i < l_authorized_userids; i++) {
        m_authorized_userids->push_back(std::move(m__io->read_u4le()));
    }
    m_minimum_level = m__io->read_u1();
    m_unk1 = m__io->read_bytes(7);
    n_guild_locks_unk = true;
    if (_parent()->fg() == 5814) {
        n_guild_locks_unk = false;
        m_guild_locks_unk = m__io->read_bytes(16);
    }
}

growtopia_world_t::lock_extra_t::~lock_extra_t() {
    _clean_up();
}

void growtopia_world_t::lock_extra_t::_clean_up() {
    if (!n_guild_locks_unk) {
    }
}

growtopia_world_t::magic_egg_extra_t::magic_egg_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void growtopia_world_t::magic_egg_extra_t::_read() {
    m_egg_amount = m__io->read_u4le();
}

growtopia_world_t::magic_egg_extra_t::~magic_egg_extra_t() {
    _clean_up();
}

void growtopia_world_t::magic_egg_extra_t::_clean_up() {
}

growtopia_world_t::mannequin_extra_t::mannequin_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_label = nullptr;
    _read();
}

void growtopia_world_t::mannequin_extra_t::_read() {
    m_label = std::unique_ptr<gt_str_t>(new gt_str_t(m__io, this, m__root));
    m_unk1 = m__io->read_u1();
    m_unk2 = m__io->read_u2le();
    m_unk3 = m__io->read_u2le();
    m_hat = m__io->read_u2le();
    m_shirt = m__io->read_u2le();
    m_pants = m__io->read_u2le();
    m_boots = m__io->read_u2le();
    m_face = m__io->read_u2le();
    m_hand = m__io->read_u2le();
    m_back = m__io->read_u2le();
    m_hair = m__io->read_u2le();
    m_neck = m__io->read_u2le();
}

growtopia_world_t::mannequin_extra_t::~mannequin_extra_t() {
    _clean_up();
}

void growtopia_world_t::mannequin_extra_t::_clean_up() {
}

growtopia_world_t::painting_easel_extra_t::painting_easel_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_label = nullptr;
    _read();
}

void growtopia_world_t::painting_easel_extra_t::_read() {
    m_item_id = m__io->read_u4le();
    m_label = std::unique_ptr<gt_str_t>(new gt_str_t(m__io, this, m__root));
}

growtopia_world_t::painting_easel_extra_t::~painting_easel_extra_t() {
    _clean_up();
}

void growtopia_world_t::painting_easel_extra_t::_clean_up() {
}

growtopia_world_t::pet_battle_cage_extra_t::pet_battle_cage_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_label = nullptr;
    _read();
}

void growtopia_world_t::pet_battle_cage_extra_t::_read() {
    m_label = std::unique_ptr<gt_str_t>(new gt_str_t(m__io, this, m__root));
    m_base_pet = m__io->read_u4le();
    m_combined_pet_1 = m__io->read_u4le();
    m_combined_pet_2 = m__io->read_u4le();
}

growtopia_world_t::pet_battle_cage_extra_t::~pet_battle_cage_extra_t() {
    _clean_up();
}

void growtopia_world_t::pet_battle_cage_extra_t::_clean_up() {
}

growtopia_world_t::pet_trainer_extra_t::pet_trainer_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_name = nullptr;
    m_pets = nullptr;
    _read();
}

void growtopia_world_t::pet_trainer_extra_t::_read() {
    m_name = std::unique_ptr<gt_str_t>(new gt_str_t(m__io, this, m__root));
    m_num_pets = m__io->read_u4le();
    m_unk1 = m__io->read_u4le();
    m_pets = std::unique_ptr<std::vector<uint32_t>>(new std::vector<uint32_t>());
    const int l_pets = num_pets();
    for (int i = 0; i < l_pets; i++) {
        m_pets->push_back(std::move(m__io->read_u4le()));
    }
}

growtopia_world_t::pet_trainer_extra_t::~pet_trainer_extra_t() {
    _clean_up();
}

void growtopia_world_t::pet_trainer_extra_t::_clean_up() {
}

growtopia_world_t::phone_booth_extra_t::phone_booth_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void growtopia_world_t::phone_booth_extra_t::_read() {
    m_hat = m__io->read_u2le();
    m_shirt = m__io->read_u2le();
    m_pants = m__io->read_u2le();
    m_shoes = m__io->read_u2le();
    m_face = m__io->read_u2le();
    m_hand = m__io->read_u2le();
    m_back = m__io->read_u2le();
    m_hair = m__io->read_u2le();
    m_neck = m__io->read_u2le();
}

growtopia_world_t::phone_booth_extra_t::~phone_booth_extra_t() {
    _clean_up();
}

void growtopia_world_t::phone_booth_extra_t::_clean_up() {
}

growtopia_world_t::pineapple_guzzler_extra_t::pineapple_guzzler_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void growtopia_world_t::pineapple_guzzler_extra_t::_read() {
    m_pineapple_fed = m__io->read_u4le();
}

growtopia_world_t::pineapple_guzzler_extra_t::~pineapple_guzzler_extra_t() {
    _clean_up();
}

void growtopia_world_t::pineapple_guzzler_extra_t::_clean_up() {
}

growtopia_world_t::portrait_extra_t::portrait_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_label = nullptr;
    m_infinity_crown_data = nullptr;
    _read();
}

void growtopia_world_t::portrait_extra_t::_read() {
    m_label = std::unique_ptr<gt_str_t>(new gt_str_t(m__io, this, m__root));
    m_unk1 = m__io->read_u4le();
    m_unk2 = m__io->read_u4le();
    m_unk3 = m__io->read_bytes(5);
    m_unk4 = m__io->read_u1();
    m_unk5 = m__io->read_u2le();
    m_face = m__io->read_u2le();
    m_hat = m__io->read_u2le();
    m_hair = m__io->read_u2le();
    m_unk6 = m__io->read_u4le();
    n_infinity_crown_data = true;
    if (hat() == 12958) {
        n_infinity_crown_data = false;
        m_infinity_crown_data = std::unique_ptr<gt_str_t>(new gt_str_t(m__io, this, m__root));
    }
}

growtopia_world_t::portrait_extra_t::~portrait_extra_t() {
    _clean_up();
}

void growtopia_world_t::portrait_extra_t::_clean_up() {
    if (!n_infinity_crown_data) {
    }
}

growtopia_world_t::provider_extra_t::provider_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void growtopia_world_t::provider_extra_t::_read() {
    m_age = m__io->read_u4le();
    n_pad1 = true;
    if (_parent()->fg() == 10656) {
        n_pad1 = false;
        m_pad1 = m__io->read_bytes(4);
    }
}

growtopia_world_t::provider_extra_t::~provider_extra_t() {
    _clean_up();
}

void growtopia_world_t::provider_extra_t::_clean_up() {
    if (!n_pad1) {
    }
}

growtopia_world_t::safe_vault_extra_t::safe_vault_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void growtopia_world_t::safe_vault_extra_t::_read() {
}

growtopia_world_t::safe_vault_extra_t::~safe_vault_extra_t() {
    _clean_up();
}

void growtopia_world_t::safe_vault_extra_t::_clean_up() {
}

growtopia_world_t::seed_extra_t::seed_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void growtopia_world_t::seed_extra_t::_read() {
    m_age = m__io->read_u4le();
    m_fruit_count = m__io->read_u1();
}

growtopia_world_t::seed_extra_t::~seed_extra_t() {
    _clean_up();
}

void growtopia_world_t::seed_extra_t::_clean_up() {
}

growtopia_world_t::sewing_machine_extra_t::sewing_machine_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_bolt_ids = nullptr;
    _read();
}

void growtopia_world_t::sewing_machine_extra_t::_read() {
    m_num_bolt_ids = m__io->read_u4le();
    m_bolt_ids = std::unique_ptr<std::vector<uint32_t>>(new std::vector<uint32_t>());
    const int l_bolt_ids = num_bolt_ids();
    for (int i = 0; i < l_bolt_ids; i++) {
        m_bolt_ids->push_back(std::move(m__io->read_u4le()));
    }
}

growtopia_world_t::sewing_machine_extra_t::~sewing_machine_extra_t() {
    _clean_up();
}

void growtopia_world_t::sewing_machine_extra_t::_clean_up() {
}

growtopia_world_t::shelf_extra_t::shelf_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void growtopia_world_t::shelf_extra_t::_read() {
    m_top_left_item_id = m__io->read_u4le();
    m_top_right_item_id = m__io->read_u4le();
    m_bottom_left_item_id = m__io->read_u4le();
    m_bottom_right_item_id = m__io->read_u4le();
}

growtopia_world_t::shelf_extra_t::~shelf_extra_t() {
    _clean_up();
}

void growtopia_world_t::shelf_extra_t::_clean_up() {
}

growtopia_world_t::sign_extra_t::sign_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_label = nullptr;
    _read();
}

void growtopia_world_t::sign_extra_t::_read() {
    m_label = std::unique_ptr<gt_str_t>(new gt_str_t(m__io, this, m__root));
    m_pad1 = m__io->read_bytes(4);
}

growtopia_world_t::sign_extra_t::~sign_extra_t() {
    _clean_up();
}

void growtopia_world_t::sign_extra_t::_clean_up() {
}

growtopia_world_t::silk_worm_extra_t::silk_worm_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_name = nullptr;
    m_color_argb = nullptr;
    _read();
}

void growtopia_world_t::silk_worm_extra_t::_read() {
    m_flags = m__io->read_u1();
    m_name = std::unique_ptr<gt_str_t>(new gt_str_t(m__io, this, m__root));
    m_age_sec = m__io->read_u4le();
    m_unk1 = m__io->read_u4le();
    m_unk2 = m__io->read_u4le();
    m_can_be_fed = m__io->read_u1();
    m_food_saturation = m__io->read_u4le();
    m_water_saturation = m__io->read_u4le();
    m_color_argb = std::unique_ptr<a_r_g_b_t>(new a_r_g_b_t(m__io, this, m__root));
    m_sick_duration = m__io->read_u4le();
}

growtopia_world_t::silk_worm_extra_t::~silk_worm_extra_t() {
    _clean_up();
}

void growtopia_world_t::silk_worm_extra_t::_clean_up() {
}

growtopia_world_t::solar_collector_extra_t::solar_collector_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void growtopia_world_t::solar_collector_extra_t::_read() {
    m_unk1 = m__io->read_bytes(5);
}

growtopia_world_t::solar_collector_extra_t::~solar_collector_extra_t() {
    _clean_up();
}

void growtopia_world_t::solar_collector_extra_t::_clean_up() {
}

growtopia_world_t::spirit_board_extra_t::spirit_board_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_unk1 = nullptr;
    m_command = nullptr;
    m_required_items = nullptr;
    _read();
}

void growtopia_world_t::spirit_board_extra_t::_read() {
    m_player_required = m__io->read_u4le();
    m_unk1 = std::unique_ptr<gt_str_t>(new gt_str_t(m__io, this, m__root));
    m_command = std::unique_ptr<gt_str_t>(new gt_str_t(m__io, this, m__root));
    m_num_required_items = m__io->read_u4le();
    m_required_items = std::unique_ptr<std::vector<uint32_t>>(new std::vector<uint32_t>());
    const int l_required_items = num_required_items();
    for (int i = 0; i < l_required_items; i++) {
        m_required_items->push_back(std::move(m__io->read_u4le()));
    }
}

growtopia_world_t::spirit_board_extra_t::~spirit_board_extra_t() {
    _clean_up();
}

void growtopia_world_t::spirit_board_extra_t::_clean_up() {
}

growtopia_world_t::spirit_storage_unit_extra_t::spirit_storage_unit_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void growtopia_world_t::spirit_storage_unit_extra_t::_read() {
    m_ghost_jar_count = m__io->read_u4le();
}

growtopia_world_t::spirit_storage_unit_extra_t::~spirit_storage_unit_extra_t() {
    _clean_up();
}

void growtopia_world_t::spirit_storage_unit_extra_t::_clean_up() {
}

growtopia_world_t::spotlight_extra_t::spotlight_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void growtopia_world_t::spotlight_extra_t::_read() {
}

growtopia_world_t::spotlight_extra_t::~spotlight_extra_t() {
    _clean_up();
}

void growtopia_world_t::spotlight_extra_t::_clean_up() {
}

growtopia_world_t::steam_engine_extra_t::steam_engine_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void growtopia_world_t::steam_engine_extra_t::_read() {
    m_temperature = m__io->read_u4le();
}

growtopia_world_t::steam_engine_extra_t::~steam_engine_extra_t() {
    _clean_up();
}

void growtopia_world_t::steam_engine_extra_t::_clean_up() {
}

growtopia_world_t::steam_organ_extra_t::steam_organ_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void growtopia_world_t::steam_organ_extra_t::_read() {
    m_instrument_type = m__io->read_u1();
    m_note = m__io->read_u4le();
}

growtopia_world_t::steam_organ_extra_t::~steam_organ_extra_t() {
    _clean_up();
}

void growtopia_world_t::steam_organ_extra_t::_clean_up() {
}

growtopia_world_t::storage_box_xtreme_extra_t::storage_box_xtreme_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_items = nullptr;
    _read();
}

void growtopia_world_t::storage_box_xtreme_extra_t::_read() {
    m_data_len = m__io->read_u2le();
    m_items = std::unique_ptr<std::vector<std::unique_ptr<storage_item_t>>>(new std::vector<std::unique_ptr<storage_item_t>>());
    const int l_items = data_len() / 13;
    for (int i = 0; i < l_items; i++) {
        m_items->push_back(std::move(std::unique_ptr<storage_item_t>(new storage_item_t(m__io, this, m__root))));
    }
}

growtopia_world_t::storage_box_xtreme_extra_t::~storage_box_xtreme_extra_t() {
    _clean_up();
}

void growtopia_world_t::storage_box_xtreme_extra_t::_clean_up() {
}

growtopia_world_t::storage_box_xtreme_extra_t::storage_item_t::storage_item_t(kaitai::kstream* p__io, growtopia_world_t::storage_box_xtreme_extra_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void growtopia_world_t::storage_box_xtreme_extra_t::storage_item_t::_read() {
    m_pad1 = m__io->read_bytes(3);
    m_item_id = m__io->read_u4le();
    m_pad2 = m__io->read_bytes(2);
    m_item_amt = m__io->read_u4le();
}

growtopia_world_t::storage_box_xtreme_extra_t::storage_item_t::~storage_item_t() {
    _clean_up();
}

void growtopia_world_t::storage_box_xtreme_extra_t::storage_item_t::_clean_up() {
}

growtopia_world_t::stormy_cloud_extra_t::stormy_cloud_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void growtopia_world_t::stormy_cloud_extra_t::_read() {
    m_sting_duration = m__io->read_u4le();
    m_is_solid = m__io->read_u4le();
    m_non_solid_duration = m__io->read_u4le();
}

growtopia_world_t::stormy_cloud_extra_t::~stormy_cloud_extra_t() {
    _clean_up();
}

void growtopia_world_t::stormy_cloud_extra_t::_clean_up() {
}

growtopia_world_t::temporary_platform_extra_t::temporary_platform_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void growtopia_world_t::temporary_platform_extra_t::_read() {
    m_unk1 = m__io->read_u4le();
}

growtopia_world_t::temporary_platform_extra_t::~temporary_platform_extra_t() {
    _clean_up();
}

void growtopia_world_t::temporary_platform_extra_t::_clean_up() {
}

growtopia_world_t::tesseract_manipulator_extra_t::tesseract_manipulator_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void growtopia_world_t::tesseract_manipulator_extra_t::_read() {
    m_gems_left = m__io->read_u4le();
    m_next_update_ms = m__io->read_u4le();
    m_item_id = m__io->read_u4le();
    m_enabled = m__io->read_u4le();
}

growtopia_world_t::tesseract_manipulator_extra_t::~tesseract_manipulator_extra_t() {
    _clean_up();
}

void growtopia_world_t::tesseract_manipulator_extra_t::_clean_up() {
}

growtopia_world_t::tomb_robber_extra_t::tomb_robber_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void growtopia_world_t::tomb_robber_extra_t::_read() {
}

growtopia_world_t::tomb_robber_extra_t::~tomb_robber_extra_t() {
    _clean_up();
}

void growtopia_world_t::tomb_robber_extra_t::_clean_up() {
}

growtopia_world_t::training_port_extra_t::training_port_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void growtopia_world_t::training_port_extra_t::_read() {
    m_fish_lb = m__io->read_u4le();
    m_status = m__io->read_u2le();
    m_item_id = m__io->read_u4le();
    m_total_exp = m__io->read_u4le();
    m_unk1 = m__io->read_bytes(8);
    m_fish_level = m__io->read_u4le();
    m_unk2 = m__io->read_u4le();
    m_unk3 = m__io->read_bytes(5);
}

growtopia_world_t::training_port_extra_t::~training_port_extra_t() {
    _clean_up();
}

void growtopia_world_t::training_port_extra_t::_clean_up() {
}

growtopia_world_t::unknown_extra_t::unknown_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void growtopia_world_t::unknown_extra_t::_read() {
    m_this_is_just_to_error_out_kaitai_pls = m__io->read_bytes_full();
}

growtopia_world_t::unknown_extra_t::~unknown_extra_t() {
    _clean_up();
}

void growtopia_world_t::unknown_extra_t::_clean_up() {
}

growtopia_world_t::vending_machine_extra_t::vending_machine_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void growtopia_world_t::vending_machine_extra_t::_read() {
    m_item_id = m__io->read_u4le();
    m_price = m__io->read_s4le();
}

growtopia_world_t::vending_machine_extra_t::~vending_machine_extra_t() {
    _clean_up();
}

void growtopia_world_t::vending_machine_extra_t::_clean_up() {
}

growtopia_world_t::vip_entrance_extra_t::vip_entrance_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_allowed_userids = nullptr;
    _read();
}

void growtopia_world_t::vip_entrance_extra_t::_read() {
    m_unk1 = m__io->read_u1();
    m_owner_userid = m__io->read_u4le();
    m_num_allowed_userids = m__io->read_u4le();
    m_allowed_userids = std::unique_ptr<std::vector<uint32_t>>(new std::vector<uint32_t>());
    const int l_allowed_userids = num_allowed_userids();
    for (int i = 0; i < l_allowed_userids; i++) {
        m_allowed_userids->push_back(std::move(m__io->read_u4le()));
    }
}

growtopia_world_t::vip_entrance_extra_t::~vip_entrance_extra_t() {
    _clean_up();
}

void growtopia_world_t::vip_entrance_extra_t::_clean_up() {
}

growtopia_world_t::weather_machine_1_extra_t::weather_machine_1_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void growtopia_world_t::weather_machine_1_extra_t::_read() {
    m_settings = m__io->read_bytes(4);
}

growtopia_world_t::weather_machine_1_extra_t::~weather_machine_1_extra_t() {
    _clean_up();
}

void growtopia_world_t::weather_machine_1_extra_t::_clean_up() {
}

growtopia_world_t::weather_machine_2_extra_t::weather_machine_2_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void growtopia_world_t::weather_machine_2_extra_t::_read() {
    m_item_id = m__io->read_u4le();
    m_gravity = m__io->read_u4le();
    m_flag = m__io->read_u1();
}

growtopia_world_t::weather_machine_2_extra_t::~weather_machine_2_extra_t() {
    _clean_up();
}

void growtopia_world_t::weather_machine_2_extra_t::_clean_up() {
}

growtopia_world_t::world_object_t::world_object_t(kaitai::kstream* p__io, growtopia_world_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void growtopia_world_t::world_object_t::_read() {
    m_item_id = m__io->read_u2le();
    m_x = m__io->read_f4le();
    m_y = m__io->read_f4le();
    m_amount = m__io->read_u1();
    m_flag = m__io->read_u1();
    m_uid = m__io->read_u4le();
}

growtopia_world_t::world_object_t::~world_object_t() {
    _clean_up();
}

void growtopia_world_t::world_object_t::_clean_up() {
}

growtopia_world_t::world_tile_t::world_tile_t(kaitai::kstream* p__io, growtopia_world_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_cbor_data = nullptr;
    _read();
}

void growtopia_world_t::world_tile_t::_read() {
    m_fg = m__io->read_u2le();
    m_bg = m__io->read_u2le();
    n_invalid_tile_fg_bg_kaitai_crasher = true;
    if ( ((fg() > 25000) || (bg() > 25000)) ) {
        n_invalid_tile_fg_bg_kaitai_crasher = false;
        m_invalid_tile_fg_bg_kaitai_crasher = m__io->read_bytes_full();
    }
    m_parent_block_index = m__io->read_u2le();
    m_flag = m__io->read_u2le();
    n_parent_lock = true;
    if ((flag() & 2) == 2) {
        n_parent_lock = false;
        m_parent_lock = m__io->read_u2le();
    }
    n_extra_data_type = true;
    if ((flag() & 1) == 1) {
        n_extra_data_type = false;
        m_extra_data_type = m__io->read_u1();
    }
    n_tile_extra = true;
    if ((flag() & 1) == 1) {
        n_tile_extra = false;
        switch (extra_data_type()) {
        case 1: {
            m_tile_extra = std::unique_ptr<door_extra_t>(new door_extra_t(m__io, this, m__root));
            break;
        }
        case 10: {
            m_tile_extra = std::unique_ptr<achievement_block_extra_t>(new achievement_block_extra_t(m__io, this, m__root));
            break;
        }
        case 11: {
            m_tile_extra = std::unique_ptr<heart_monitor_extra_t>(new heart_monitor_extra_t(m__io, this, m__root));
            break;
        }
        case 14: {
            m_tile_extra = std::unique_ptr<mannequin_extra_t>(new mannequin_extra_t(m__io, this, m__root));
            break;
        }
        case 15: {
            m_tile_extra = std::unique_ptr<magic_egg_extra_t>(new magic_egg_extra_t(m__io, this, m__root));
            break;
        }
        case 16: {
            m_tile_extra = std::unique_ptr<game_grave_extra_t>(new game_grave_extra_t(m__io, this, m__root));
            break;
        }
        case 17: {
            m_tile_extra = std::unique_ptr<game_generator_extra_t>(new game_generator_extra_t(m__io, this, m__root));
            break;
        }
        case 18: {
            m_tile_extra = std::unique_ptr<xenonite_extra_t>(new xenonite_extra_t(m__io, this, m__root));
            break;
        }
        case 19: {
            m_tile_extra = std::unique_ptr<phone_booth_extra_t>(new phone_booth_extra_t(m__io, this, m__root));
            break;
        }
        case 2: {
            m_tile_extra = std::unique_ptr<sign_extra_t>(new sign_extra_t(m__io, this, m__root));
            break;
        }
        case 20: {
            m_tile_extra = std::unique_ptr<crystal_extra_t>(new crystal_extra_t(m__io, this, m__root));
            break;
        }
        case 21: {
            m_tile_extra = std::unique_ptr<crime_in_progress_extra_t>(new crime_in_progress_extra_t(m__io, this, m__root));
            break;
        }
        case 22: {
            m_tile_extra = std::unique_ptr<spotlight_extra_t>(new spotlight_extra_t(m__io, this, m__root));
            break;
        }
        case 23: {
            m_tile_extra = std::unique_ptr<display_block_extra_t>(new display_block_extra_t(m__io, this, m__root));
            break;
        }
        case 24: {
            m_tile_extra = std::unique_ptr<vending_machine_extra_t>(new vending_machine_extra_t(m__io, this, m__root));
            break;
        }
        case 25: {
            m_tile_extra = std::unique_ptr<fish_tank_port_extra_t>(new fish_tank_port_extra_t(m__io, this, m__root));
            break;
        }
        case 26: {
            m_tile_extra = std::unique_ptr<solar_collector_extra_t>(new solar_collector_extra_t(m__io, this, m__root));
            break;
        }
        case 27: {
            m_tile_extra = std::unique_ptr<forge_extra_t>(new forge_extra_t(m__io, this, m__root));
            break;
        }
        case 28: {
            m_tile_extra = std::unique_ptr<giving_tree_extra_t>(new giving_tree_extra_t(m__io, this, m__root));
            break;
        }
        case 3: {
            m_tile_extra = std::unique_ptr<lock_extra_t>(new lock_extra_t(m__io, this, m__root));
            break;
        }
        case 30: {
            m_tile_extra = std::unique_ptr<steam_organ_extra_t>(new steam_organ_extra_t(m__io, this, m__root));
            break;
        }
        case 31: {
            m_tile_extra = std::unique_ptr<silk_worm_extra_t>(new silk_worm_extra_t(m__io, this, m__root));
            break;
        }
        case 32: {
            m_tile_extra = std::unique_ptr<sewing_machine_extra_t>(new sewing_machine_extra_t(m__io, this, m__root));
            break;
        }
        case 33: {
            m_tile_extra = std::unique_ptr<country_flag_extra_t>(new country_flag_extra_t(m__io, this, m__root));
            break;
        }
        case 34: {
            m_tile_extra = std::unique_ptr<lobster_trap_extra_t>(new lobster_trap_extra_t(m__io, this, m__root));
            break;
        }
        case 35: {
            m_tile_extra = std::unique_ptr<painting_easel_extra_t>(new painting_easel_extra_t(m__io, this, m__root));
            break;
        }
        case 36: {
            m_tile_extra = std::unique_ptr<pet_battle_cage_extra_t>(new pet_battle_cage_extra_t(m__io, this, m__root));
            break;
        }
        case 37: {
            m_tile_extra = std::unique_ptr<pet_trainer_extra_t>(new pet_trainer_extra_t(m__io, this, m__root));
            break;
        }
        case 38: {
            m_tile_extra = std::unique_ptr<steam_engine_extra_t>(new steam_engine_extra_t(m__io, this, m__root));
            break;
        }
        case 39: {
            m_tile_extra = std::unique_ptr<lock_bot_extra_t>(new lock_bot_extra_t(m__io, this, m__root));
            break;
        }
        case 4: {
            m_tile_extra = std::unique_ptr<seed_extra_t>(new seed_extra_t(m__io, this, m__root));
            break;
        }
        case 40: {
            m_tile_extra = std::unique_ptr<weather_machine_1_extra_t>(new weather_machine_1_extra_t(m__io, this, m__root));
            break;
        }
        case 41: {
            m_tile_extra = std::unique_ptr<spirit_storage_unit_extra_t>(new spirit_storage_unit_extra_t(m__io, this, m__root));
            break;
        }
        case 42: {
            m_tile_extra = std::unique_ptr<data_bedrock_extra_t>(new data_bedrock_extra_t(m__io, this, m__root));
            break;
        }
        case 43: {
            m_tile_extra = std::unique_ptr<shelf_extra_t>(new shelf_extra_t(m__io, this, m__root));
            break;
        }
        case 44: {
            m_tile_extra = std::unique_ptr<vip_entrance_extra_t>(new vip_entrance_extra_t(m__io, this, m__root));
            break;
        }
        case 45: {
            m_tile_extra = std::unique_ptr<challenge_timer_extra_t>(new challenge_timer_extra_t(m__io, this, m__root));
            break;
        }
        case 47: {
            m_tile_extra = std::unique_ptr<fish_wall_mount_extra_t>(new fish_wall_mount_extra_t(m__io, this, m__root));
            break;
        }
        case 48: {
            m_tile_extra = std::unique_ptr<portrait_extra_t>(new portrait_extra_t(m__io, this, m__root));
            break;
        }
        case 49: {
            m_tile_extra = std::unique_ptr<weather_machine_2_extra_t>(new weather_machine_2_extra_t(m__io, this, m__root));
            break;
        }
        case 50: {
            m_tile_extra = std::unique_ptr<fossil_prep_station_extra_t>(new fossil_prep_station_extra_t(m__io, this, m__root));
            break;
        }
        case 51: {
            m_tile_extra = std::unique_ptr<dna_extractor_extra_t>(new dna_extractor_extra_t(m__io, this, m__root));
            break;
        }
        case 52: {
            m_tile_extra = std::unique_ptr<howler_extra_t>(new howler_extra_t(m__io, this, m__root));
            break;
        }
        case 53: {
            m_tile_extra = std::unique_ptr<chemsynth_tank_extra_t>(new chemsynth_tank_extra_t(m__io, this, m__root));
            break;
        }
        case 54: {
            m_tile_extra = std::unique_ptr<storage_box_xtreme_extra_t>(new storage_box_xtreme_extra_t(m__io, this, m__root));
            break;
        }
        case 55: {
            m_tile_extra = std::unique_ptr<cooking_oven_extra_t>(new cooking_oven_extra_t(m__io, this, m__root));
            break;
        }
        case 56: {
            m_tile_extra = std::unique_ptr<audio_rack_extra_t>(new audio_rack_extra_t(m__io, this, m__root));
            break;
        }
        case 57: {
            m_tile_extra = std::unique_ptr<geiger_charger_extra_t>(new geiger_charger_extra_t(m__io, this, m__root));
            break;
        }
        case 58: {
            m_tile_extra = std::unique_ptr<adventure_begins_extra_t>(new adventure_begins_extra_t(m__io, this, m__root));
            break;
        }
        case 59: {
            m_tile_extra = std::unique_ptr<tomb_robber_extra_t>(new tomb_robber_extra_t(m__io, this, m__root));
            break;
        }
        case 60: {
            m_tile_extra = std::unique_ptr<balloon_o_matic_extra_t>(new balloon_o_matic_extra_t(m__io, this, m__root));
            break;
        }
        case 61: {
            m_tile_extra = std::unique_ptr<training_port_extra_t>(new training_port_extra_t(m__io, this, m__root));
            break;
        }
        case 62: {
            m_tile_extra = std::unique_ptr<item_sucker_extra_t>(new item_sucker_extra_t(m__io, this, m__root));
            break;
        }
        case 63: {
            m_tile_extra = std::unique_ptr<cybot_extra_t>(new cybot_extra_t(m__io, this, m__root));
            break;
        }
        case 65: {
            m_tile_extra = std::unique_ptr<guild_extra_t>(new guild_extra_t(m__io, this, m__root));
            break;
        }
        case 66: {
            m_tile_extra = std::unique_ptr<growscan_extra_t>(new growscan_extra_t(m__io, this, m__root));
            break;
        }
        case 67: {
            m_tile_extra = std::unique_ptr<containment_field_power_node_extra_t>(new containment_field_power_node_extra_t(m__io, this, m__root));
            break;
        }
        case 68: {
            m_tile_extra = std::unique_ptr<spirit_board_extra_t>(new spirit_board_extra_t(m__io, this, m__root));
            break;
        }
        case 69: {
            m_tile_extra = std::unique_ptr<tesseract_manipulator_extra_t>(new tesseract_manipulator_extra_t(m__io, this, m__root));
            break;
        }
        case 72: {
            m_tile_extra = std::unique_ptr<stormy_cloud_extra_t>(new stormy_cloud_extra_t(m__io, this, m__root));
            break;
        }
        case 73: {
            m_tile_extra = std::unique_ptr<temporary_platform_extra_t>(new temporary_platform_extra_t(m__io, this, m__root));
            break;
        }
        case 74: {
            m_tile_extra = std::unique_ptr<safe_vault_extra_t>(new safe_vault_extra_t(m__io, this, m__root));
            break;
        }
        case 75: {
            m_tile_extra = std::unique_ptr<angelic_counting_cloud_extra_t>(new angelic_counting_cloud_extra_t(m__io, this, m__root));
            break;
        }
        case 77: {
            m_tile_extra = std::unique_ptr<infinity_weather_machine_extra_t>(new infinity_weather_machine_extra_t(m__io, this, m__root));
            break;
        }
        case 79: {
            m_tile_extra = std::unique_ptr<pineapple_guzzler_extra_t>(new pineapple_guzzler_extra_t(m__io, this, m__root));
            break;
        }
        case 8: {
            m_tile_extra = std::unique_ptr<dice_extra_t>(new dice_extra_t(m__io, this, m__root));
            break;
        }
        case 80: {
            m_tile_extra = std::unique_ptr<krakens_galatic_block_extra_t>(new krakens_galatic_block_extra_t(m__io, this, m__root));
            break;
        }
        case 81: {
            m_tile_extra = std::unique_ptr<friends_entrance_extra_t>(new friends_entrance_extra_t(m__io, this, m__root));
            break;
        }
        case 9: {
            m_tile_extra = std::unique_ptr<provider_extra_t>(new provider_extra_t(m__io, this, m__root));
            break;
        }
        default: {
            m_tile_extra = std::unique_ptr<unknown_extra_t>(new unknown_extra_t(m__io, this, m__root));
            break;
        }
        }
    }
    n_cbor_data = true;
    if ( (( (((flag() & 1) == 1) && (extra_data_type() == 36)) ) || (fg() == 15546) || (fg() == 14666) || (fg() == 14962) || (fg() == 14662)) ) {
        n_cbor_data = false;
        m_cbor_data = std::unique_ptr<cbor_data_t>(new cbor_data_t(m__io, this, m__root));
    }
}

growtopia_world_t::world_tile_t::~world_tile_t() {
    _clean_up();
}

void growtopia_world_t::world_tile_t::_clean_up() {
    if (!n_invalid_tile_fg_bg_kaitai_crasher) {
    }
    if (!n_parent_lock) {
    }
    if (!n_extra_data_type) {
    }
    if (!n_tile_extra) {
    }
    if (!n_cbor_data) {
    }
}

growtopia_world_t::xenonite_extra_t::xenonite_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void growtopia_world_t::xenonite_extra_t::_read() {
    m_unk1 = m__io->read_bytes(5);
}

growtopia_world_t::xenonite_extra_t::~xenonite_extra_t() {
    _clean_up();
}

void growtopia_world_t::xenonite_extra_t::_clean_up() {
}
