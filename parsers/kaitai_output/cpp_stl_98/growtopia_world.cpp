// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "growtopia_world.h"

growtopia_world_t::growtopia_world_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_name = 0;
    m_tiles = 0;
    m_objects = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void growtopia_world_t::_read() {
    m_version = m__io->read_u2le();
    m_unk1 = m__io->read_u4le();
    m_name = new gt_str_t(m__io, this, m__root);
    m_width = m__io->read_u4le();
    m_height = m__io->read_u4le();
    m_num_tiles = m__io->read_u4le();
    m_unk2 = m__io->read_bytes(5);
    m_tiles = new std::vector<world_tile_t*>();
    const int l_tiles = num_tiles();
    for (int i = 0; i < l_tiles; i++) {
        m_tiles->push_back(new world_tile_t(m__io, this, m__root));
    }
    m_unk3 = m__io->read_bytes(12);
    m_num_objects = m__io->read_u4le();
    m_last_object_uid = m__io->read_u4le();
    m_objects = new std::vector<world_object_t*>();
    const int l_objects = num_objects();
    for (int i = 0; i < l_objects; i++) {
        m_objects->push_back(new world_object_t(m__io, this, m__root));
    }
}

growtopia_world_t::~growtopia_world_t() {
    _clean_up();
}

void growtopia_world_t::_clean_up() {
    if (m_name) {
        delete m_name; m_name = 0;
    }
    if (m_tiles) {
        for (std::vector<world_tile_t*>::iterator it = m_tiles->begin(); it != m_tiles->end(); ++it) {
            delete *it;
        }
        delete m_tiles; m_tiles = 0;
    }
    if (m_objects) {
        for (std::vector<world_object_t*>::iterator it = m_objects->begin(); it != m_objects->end(); ++it) {
            delete *it;
        }
        delete m_objects; m_objects = 0;
    }
}

growtopia_world_t::a_r_g_b_t::a_r_g_b_t(kaitai::kstream* p__io, growtopia_world_t::silk_worm_extra_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void growtopia_world_t::adventure_begins_extra_t::_read() {
}

growtopia_world_t::adventure_begins_extra_t::~adventure_begins_extra_t() {
    _clean_up();
}

void growtopia_world_t::adventure_begins_extra_t::_clean_up() {
}
std::set<growtopia_world_t::angelic_counting_cloud_extra_t::states_t> growtopia_world_t::angelic_counting_cloud_extra_t::_build_values_states_t() {
    std::set<growtopia_world_t::angelic_counting_cloud_extra_t::states_t> _t;
    _t.insert(growtopia_world_t::angelic_counting_cloud_extra_t::STATES_RAFFLING);
    _t.insert(growtopia_world_t::angelic_counting_cloud_extra_t::STATES_DONE_RAFFLING);
    return _t;
}
const std::set<growtopia_world_t::angelic_counting_cloud_extra_t::states_t> growtopia_world_t::angelic_counting_cloud_extra_t::_values_states_t = growtopia_world_t::angelic_counting_cloud_extra_t::_build_values_states_t();
bool growtopia_world_t::angelic_counting_cloud_extra_t::_is_defined_states_t(growtopia_world_t::angelic_counting_cloud_extra_t::states_t v) {
    return growtopia_world_t::angelic_counting_cloud_extra_t::_values_states_t.find(v) != growtopia_world_t::angelic_counting_cloud_extra_t::_values_states_t.end();
}

growtopia_world_t::angelic_counting_cloud_extra_t::angelic_counting_cloud_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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
    m_note = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void growtopia_world_t::audio_rack_extra_t::_read() {
    m_note = new gt_str_t(m__io, this, m__root);
    m_volume = m__io->read_u4le();
}

growtopia_world_t::audio_rack_extra_t::~audio_rack_extra_t() {
    _clean_up();
}

void growtopia_world_t::audio_rack_extra_t::_clean_up() {
    if (m_note) {
        delete m_note; m_note = 0;
    }
}

growtopia_world_t::balloon_o_matic_extra_t::balloon_o_matic_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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
    m_linked_nodes = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void growtopia_world_t::containment_field_power_node_extra_t::_read() {
    m_time_ms = m__io->read_u4le();
    m_num_linked_nodes = m__io->read_u4le();
    m_linked_nodes = new std::vector<uint32_t>();
    const int l_linked_nodes = num_linked_nodes();
    for (int i = 0; i < l_linked_nodes; i++) {
        m_linked_nodes->push_back(m__io->read_u4le());
    }
}

growtopia_world_t::containment_field_power_node_extra_t::~containment_field_power_node_extra_t() {
    _clean_up();
}

void growtopia_world_t::containment_field_power_node_extra_t::_clean_up() {
    if (m_linked_nodes) {
        delete m_linked_nodes; m_linked_nodes = 0;
    }
}

growtopia_world_t::cooking_oven_extra_t::cooking_oven_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_ingredients = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void growtopia_world_t::cooking_oven_extra_t::_read() {
    m_temp_level = m__io->read_u4le();
    m_ingredient_list_size = m__io->read_u4le();
    m_ingredients = new std::vector<ingredient_t*>();
    const int l_ingredients = ingredient_list_size() / 2;
    for (int i = 0; i < l_ingredients; i++) {
        m_ingredients->push_back(new ingredient_t(m__io, this, m__root));
    }
    m_unk1 = m__io->read_u4le();
    m_unk2 = m__io->read_u4le();
    m_unk3 = m__io->read_u4le();
}

growtopia_world_t::cooking_oven_extra_t::~cooking_oven_extra_t() {
    _clean_up();
}

void growtopia_world_t::cooking_oven_extra_t::_clean_up() {
    if (m_ingredients) {
        for (std::vector<ingredient_t*>::iterator it = m_ingredients->begin(); it != m_ingredients->end(); ++it) {
            delete *it;
        }
        delete m_ingredients; m_ingredients = 0;
    }
}

growtopia_world_t::cooking_oven_extra_t::ingredient_t::ingredient_t(kaitai::kstream* p__io, growtopia_world_t::cooking_oven_extra_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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
    m_country = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void growtopia_world_t::country_flag_extra_t::_read() {
    n_country = true;
    if (_parent()->fg() == 3394) {
        n_country = false;
        m_country = new gt_str_t(m__io, this, m__root);
    }
}

growtopia_world_t::country_flag_extra_t::~country_flag_extra_t() {
    _clean_up();
}

void growtopia_world_t::country_flag_extra_t::_clean_up() {
    if (!n_country) {
        if (m_country) {
            delete m_country; m_country = 0;
        }
    }
}

growtopia_world_t::crime_in_progress_extra_t::crime_in_progress_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_crime_name = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void growtopia_world_t::crime_in_progress_extra_t::_read() {
    m_crime_name = new gt_str_t(m__io, this, m__root);
    m_crime_index = m__io->read_u4le();
    m_unk1 = m__io->read_u1();
}

growtopia_world_t::crime_in_progress_extra_t::~crime_in_progress_extra_t() {
    _clean_up();
}

void growtopia_world_t::crime_in_progress_extra_t::_clean_up() {
    if (m_crime_name) {
        delete m_crime_name; m_crime_name = 0;
    }
}

growtopia_world_t::crystal_extra_t::crystal_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_crystals = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void growtopia_world_t::crystal_extra_t::_read() {
    m_num_crystals = m__io->read_u2le();
    m_crystals = new std::vector<uint8_t>();
    const int l_crystals = num_crystals();
    for (int i = 0; i < l_crystals; i++) {
        m_crystals->push_back(m__io->read_u1());
    }
}

growtopia_world_t::crystal_extra_t::~crystal_extra_t() {
    _clean_up();
}

void growtopia_world_t::crystal_extra_t::_clean_up() {
    if (m_crystals) {
        delete m_crystals; m_crystals = 0;
    }
}

growtopia_world_t::cybot_extra_t::cybot_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_commands = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void growtopia_world_t::cybot_extra_t::_read() {
    m_num_commands = m__io->read_u4le();
    m_commands = new std::vector<command_t*>();
    const int l_commands = num_commands();
    for (int i = 0; i < l_commands; i++) {
        m_commands->push_back(new command_t(m__io, this, m__root));
    }
    m_timer = m__io->read_u4le();
    m_is_activated = m__io->read_u4le();
}

growtopia_world_t::cybot_extra_t::~cybot_extra_t() {
    _clean_up();
}

void growtopia_world_t::cybot_extra_t::_clean_up() {
    if (m_commands) {
        for (std::vector<command_t*>::iterator it = m_commands->begin(); it != m_commands->end(); ++it) {
            delete *it;
        }
        delete m_commands; m_commands = 0;
    }
}

growtopia_world_t::cybot_extra_t::command_t::command_t(kaitai::kstream* p__io, growtopia_world_t::cybot_extra_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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
    m_label = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void growtopia_world_t::door_extra_t::_read() {
    m_label = new gt_str_t(m__io, this, m__root);
    m_unk1 = m__io->read_u1();
}

growtopia_world_t::door_extra_t::~door_extra_t() {
    _clean_up();
}

void growtopia_world_t::door_extra_t::_clean_up() {
    if (m_label) {
        delete m_label; m_label = 0;
    }
}

growtopia_world_t::fish_tank_port_extra_t::fish_tank_port_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_fishes = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void growtopia_world_t::fish_tank_port_extra_t::_read() {
    m_flags = m__io->read_u1();
    m_fish_data_length = m__io->read_u4le();
    m_fishes = new std::vector<fish_info_t*>();
    const int l_fishes = fish_data_length() / 2;
    for (int i = 0; i < l_fishes; i++) {
        m_fishes->push_back(new fish_info_t(m__io, this, m__root));
    }
}

growtopia_world_t::fish_tank_port_extra_t::~fish_tank_port_extra_t() {
    _clean_up();
}

void growtopia_world_t::fish_tank_port_extra_t::_clean_up() {
    if (m_fishes) {
        for (std::vector<fish_info_t*>::iterator it = m_fishes->begin(); it != m_fishes->end(); ++it) {
            delete *it;
        }
        delete m_fishes; m_fishes = 0;
    }
}

growtopia_world_t::fish_tank_port_extra_t::fish_info_t::fish_info_t(kaitai::kstream* p__io, growtopia_world_t::fish_tank_port_extra_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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
    m_label = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void growtopia_world_t::fish_wall_mount_extra_t::_read() {
    m_label = new gt_str_t(m__io, this, m__root);
    m_item_id = m__io->read_u4le();
    m_lbs = m__io->read_u1();
}

growtopia_world_t::fish_wall_mount_extra_t::~fish_wall_mount_extra_t() {
    _clean_up();
}

void growtopia_world_t::fish_wall_mount_extra_t::_clean_up() {
    if (m_label) {
        delete m_label; m_label = 0;
    }
}

growtopia_world_t::forge_extra_t::forge_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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
    m_allowed_friends_userid = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void growtopia_world_t::friends_entrance_extra_t::_read() {
    m_owner_userid = m__io->read_u4le();
    m_unk1 = m__io->read_bytes(2);
    m_num_allowed_friends_userid = m__io->read_u2le();
    m_allowed_friends_userid = new std::vector<uint32_t>();
    const int l_allowed_friends_userid = num_allowed_friends_userid();
    for (int i = 0; i < l_allowed_friends_userid; i++) {
        m_allowed_friends_userid->push_back(m__io->read_u4le());
    }
}

growtopia_world_t::friends_entrance_extra_t::~friends_entrance_extra_t() {
    _clean_up();
}

void growtopia_world_t::friends_entrance_extra_t::_clean_up() {
    if (m_allowed_friends_userid) {
        delete m_allowed_friends_userid; m_allowed_friends_userid = 0;
    }
}

growtopia_world_t::game_generator_extra_t::game_generator_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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
    m_grow_id = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void growtopia_world_t::heart_monitor_extra_t::_read() {
    m_user_id = m__io->read_u4le();
    m_grow_id = new gt_str_t(m__io, this, m__root);
}

growtopia_world_t::heart_monitor_extra_t::~heart_monitor_extra_t() {
    _clean_up();
}

void growtopia_world_t::heart_monitor_extra_t::_clean_up() {
    if (m_grow_id) {
        delete m_grow_id; m_grow_id = 0;
    }
}

growtopia_world_t::howler_extra_t::howler_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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
    m_weather_machines = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void growtopia_world_t::infinity_weather_machine_extra_t::_read() {
    m_interval_mins = m__io->read_u4le();
    m_num_weather_machines = m__io->read_u4le();
    m_weather_machines = new std::vector<uint32_t>();
    const int l_weather_machines = num_weather_machines();
    for (int i = 0; i < l_weather_machines; i++) {
        m_weather_machines->push_back(m__io->read_u4le());
    }
}

growtopia_world_t::infinity_weather_machine_extra_t::~infinity_weather_machine_extra_t() {
    _clean_up();
}

void growtopia_world_t::infinity_weather_machine_extra_t::_clean_up() {
    if (m_weather_machines) {
        delete m_weather_machines; m_weather_machines = 0;
    }
}

growtopia_world_t::item_sucker_extra_t::item_sucker_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void growtopia_world_t::lock_bot_extra_t::_read() {
    m_time_passed_sec = m__io->read_u4le();
}

growtopia_world_t::lock_bot_extra_t::~lock_bot_extra_t() {
    _clean_up();
}

void growtopia_world_t::lock_bot_extra_t::_clean_up() {
}

growtopia_world_t::lock_extra_t::lock_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_authorized_userids = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void growtopia_world_t::lock_extra_t::_read() {
    m_flag = m__io->read_u1();
    m_owner_user_id = m__io->read_u4le();
    m_num_authorized_userids = m__io->read_u4le();
    m_authorized_userids = new std::vector<uint32_t>();
    const int l_authorized_userids = num_authorized_userids();
    for (int i = 0; i < l_authorized_userids; i++) {
        m_authorized_userids->push_back(m__io->read_u4le());
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
    if (m_authorized_userids) {
        delete m_authorized_userids; m_authorized_userids = 0;
    }
    if (!n_guild_locks_unk) {
    }
}

growtopia_world_t::magic_egg_extra_t::magic_egg_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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
    m_label = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void growtopia_world_t::mannequin_extra_t::_read() {
    m_label = new gt_str_t(m__io, this, m__root);
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
    if (m_label) {
        delete m_label; m_label = 0;
    }
}

growtopia_world_t::painting_easel_extra_t::painting_easel_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_label = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void growtopia_world_t::painting_easel_extra_t::_read() {
    m_item_id = m__io->read_u4le();
    m_label = new gt_str_t(m__io, this, m__root);
}

growtopia_world_t::painting_easel_extra_t::~painting_easel_extra_t() {
    _clean_up();
}

void growtopia_world_t::painting_easel_extra_t::_clean_up() {
    if (m_label) {
        delete m_label; m_label = 0;
    }
}

growtopia_world_t::pet_battle_cage_extra_t::pet_battle_cage_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_label = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void growtopia_world_t::pet_battle_cage_extra_t::_read() {
    m_label = new gt_str_t(m__io, this, m__root);
    m_base_pet = m__io->read_u4le();
    m_combined_pet_1 = m__io->read_u4le();
    m_combined_pet_2 = m__io->read_u4le();
}

growtopia_world_t::pet_battle_cage_extra_t::~pet_battle_cage_extra_t() {
    _clean_up();
}

void growtopia_world_t::pet_battle_cage_extra_t::_clean_up() {
    if (m_label) {
        delete m_label; m_label = 0;
    }
}

growtopia_world_t::pet_trainer_extra_t::pet_trainer_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_name = 0;
    m_pets = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void growtopia_world_t::pet_trainer_extra_t::_read() {
    m_name = new gt_str_t(m__io, this, m__root);
    m_num_pets = m__io->read_u4le();
    m_unk1 = m__io->read_u4le();
    m_pets = new std::vector<uint32_t>();
    const int l_pets = num_pets();
    for (int i = 0; i < l_pets; i++) {
        m_pets->push_back(m__io->read_u4le());
    }
}

growtopia_world_t::pet_trainer_extra_t::~pet_trainer_extra_t() {
    _clean_up();
}

void growtopia_world_t::pet_trainer_extra_t::_clean_up() {
    if (m_name) {
        delete m_name; m_name = 0;
    }
    if (m_pets) {
        delete m_pets; m_pets = 0;
    }
}

growtopia_world_t::phone_booth_extra_t::phone_booth_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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
    m_label = 0;
    m_infinity_crown_data = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void growtopia_world_t::portrait_extra_t::_read() {
    m_label = new gt_str_t(m__io, this, m__root);
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
        m_infinity_crown_data = new gt_str_t(m__io, this, m__root);
    }
}

growtopia_world_t::portrait_extra_t::~portrait_extra_t() {
    _clean_up();
}

void growtopia_world_t::portrait_extra_t::_clean_up() {
    if (m_label) {
        delete m_label; m_label = 0;
    }
    if (!n_infinity_crown_data) {
        if (m_infinity_crown_data) {
            delete m_infinity_crown_data; m_infinity_crown_data = 0;
        }
    }
}

growtopia_world_t::provider_extra_t::provider_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void growtopia_world_t::provider_extra_t::_read() {
    m_growth = m__io->read_u4le();
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

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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
    m_bolt_ids = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void growtopia_world_t::sewing_machine_extra_t::_read() {
    m_num_bolt_ids = m__io->read_u4le();
    m_bolt_ids = new std::vector<uint32_t>();
    const int l_bolt_ids = num_bolt_ids();
    for (int i = 0; i < l_bolt_ids; i++) {
        m_bolt_ids->push_back(m__io->read_u4le());
    }
}

growtopia_world_t::sewing_machine_extra_t::~sewing_machine_extra_t() {
    _clean_up();
}

void growtopia_world_t::sewing_machine_extra_t::_clean_up() {
    if (m_bolt_ids) {
        delete m_bolt_ids; m_bolt_ids = 0;
    }
}

growtopia_world_t::shelf_extra_t::shelf_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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
    m_label = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void growtopia_world_t::sign_extra_t::_read() {
    m_label = new gt_str_t(m__io, this, m__root);
    m_pad1 = m__io->read_bytes(4);
}

growtopia_world_t::sign_extra_t::~sign_extra_t() {
    _clean_up();
}

void growtopia_world_t::sign_extra_t::_clean_up() {
    if (m_label) {
        delete m_label; m_label = 0;
    }
}

growtopia_world_t::silk_worm_extra_t::silk_worm_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_name = 0;
    m_color_argb = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void growtopia_world_t::silk_worm_extra_t::_read() {
    m_flags = m__io->read_u1();
    m_name = new gt_str_t(m__io, this, m__root);
    m_age_sec = m__io->read_u4le();
    m_unk1 = m__io->read_u4le();
    m_unk2 = m__io->read_u4le();
    m_can_be_fed = m__io->read_u1();
    m_food_saturation = m__io->read_u4le();
    m_water_saturation = m__io->read_u4le();
    m_color_argb = new a_r_g_b_t(m__io, this, m__root);
    m_sick_duration = m__io->read_u4le();
}

growtopia_world_t::silk_worm_extra_t::~silk_worm_extra_t() {
    _clean_up();
}

void growtopia_world_t::silk_worm_extra_t::_clean_up() {
    if (m_name) {
        delete m_name; m_name = 0;
    }
    if (m_color_argb) {
        delete m_color_argb; m_color_argb = 0;
    }
}

growtopia_world_t::solar_collector_extra_t::solar_collector_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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
    m_unk1 = 0;
    m_command = 0;
    m_required_items = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void growtopia_world_t::spirit_board_extra_t::_read() {
    m_player_required = m__io->read_u4le();
    m_unk1 = new gt_str_t(m__io, this, m__root);
    m_command = new gt_str_t(m__io, this, m__root);
    m_num_required_items = m__io->read_u4le();
    m_required_items = new std::vector<uint32_t>();
    const int l_required_items = num_required_items();
    for (int i = 0; i < l_required_items; i++) {
        m_required_items->push_back(m__io->read_u4le());
    }
}

growtopia_world_t::spirit_board_extra_t::~spirit_board_extra_t() {
    _clean_up();
}

void growtopia_world_t::spirit_board_extra_t::_clean_up() {
    if (m_unk1) {
        delete m_unk1; m_unk1 = 0;
    }
    if (m_command) {
        delete m_command; m_command = 0;
    }
    if (m_required_items) {
        delete m_required_items; m_required_items = 0;
    }
}

growtopia_world_t::spirit_storage_unit_extra_t::spirit_storage_unit_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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
    m_items = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void growtopia_world_t::storage_box_xtreme_extra_t::_read() {
    m_data_len = m__io->read_u2le();
    m_items = new std::vector<storage_item_t*>();
    const int l_items = data_len() / 13;
    for (int i = 0; i < l_items; i++) {
        m_items->push_back(new storage_item_t(m__io, this, m__root));
    }
}

growtopia_world_t::storage_box_xtreme_extra_t::~storage_box_xtreme_extra_t() {
    _clean_up();
}

void growtopia_world_t::storage_box_xtreme_extra_t::_clean_up() {
    if (m_items) {
        for (std::vector<storage_item_t*>::iterator it = m_items->begin(); it != m_items->end(); ++it) {
            delete *it;
        }
        delete m_items; m_items = 0;
    }
}

growtopia_world_t::storage_box_xtreme_extra_t::storage_item_t::storage_item_t(kaitai::kstream* p__io, growtopia_world_t::storage_box_xtreme_extra_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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
    m_allowed_userids = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void growtopia_world_t::vip_entrance_extra_t::_read() {
    m_unk1 = m__io->read_u1();
    m_owner_userid = m__io->read_u4le();
    m_num_allowed_userids = m__io->read_u4le();
    m_allowed_userids = new std::vector<uint32_t>();
    const int l_allowed_userids = num_allowed_userids();
    for (int i = 0; i < l_allowed_userids; i++) {
        m_allowed_userids->push_back(m__io->read_u4le());
    }
}

growtopia_world_t::vip_entrance_extra_t::~vip_entrance_extra_t() {
    _clean_up();
}

void growtopia_world_t::vip_entrance_extra_t::_clean_up() {
    if (m_allowed_userids) {
        delete m_allowed_userids; m_allowed_userids = 0;
    }
}

growtopia_world_t::weather_machine_1_extra_t::weather_machine_1_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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
    m_cbor_data = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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
            m_tile_extra = new door_extra_t(m__io, this, m__root);
            break;
        }
        case 10: {
            m_tile_extra = new achievement_block_extra_t(m__io, this, m__root);
            break;
        }
        case 11: {
            m_tile_extra = new heart_monitor_extra_t(m__io, this, m__root);
            break;
        }
        case 14: {
            m_tile_extra = new mannequin_extra_t(m__io, this, m__root);
            break;
        }
        case 15: {
            m_tile_extra = new magic_egg_extra_t(m__io, this, m__root);
            break;
        }
        case 16: {
            m_tile_extra = new game_grave_extra_t(m__io, this, m__root);
            break;
        }
        case 17: {
            m_tile_extra = new game_generator_extra_t(m__io, this, m__root);
            break;
        }
        case 18: {
            m_tile_extra = new xenonite_extra_t(m__io, this, m__root);
            break;
        }
        case 19: {
            m_tile_extra = new phone_booth_extra_t(m__io, this, m__root);
            break;
        }
        case 2: {
            m_tile_extra = new sign_extra_t(m__io, this, m__root);
            break;
        }
        case 20: {
            m_tile_extra = new crystal_extra_t(m__io, this, m__root);
            break;
        }
        case 21: {
            m_tile_extra = new crime_in_progress_extra_t(m__io, this, m__root);
            break;
        }
        case 22: {
            m_tile_extra = new spotlight_extra_t(m__io, this, m__root);
            break;
        }
        case 23: {
            m_tile_extra = new display_block_extra_t(m__io, this, m__root);
            break;
        }
        case 24: {
            m_tile_extra = new vending_machine_extra_t(m__io, this, m__root);
            break;
        }
        case 25: {
            m_tile_extra = new fish_tank_port_extra_t(m__io, this, m__root);
            break;
        }
        case 26: {
            m_tile_extra = new solar_collector_extra_t(m__io, this, m__root);
            break;
        }
        case 27: {
            m_tile_extra = new forge_extra_t(m__io, this, m__root);
            break;
        }
        case 28: {
            m_tile_extra = new giving_tree_extra_t(m__io, this, m__root);
            break;
        }
        case 3: {
            m_tile_extra = new lock_extra_t(m__io, this, m__root);
            break;
        }
        case 30: {
            m_tile_extra = new steam_organ_extra_t(m__io, this, m__root);
            break;
        }
        case 31: {
            m_tile_extra = new silk_worm_extra_t(m__io, this, m__root);
            break;
        }
        case 32: {
            m_tile_extra = new sewing_machine_extra_t(m__io, this, m__root);
            break;
        }
        case 33: {
            m_tile_extra = new country_flag_extra_t(m__io, this, m__root);
            break;
        }
        case 34: {
            m_tile_extra = new lobster_trap_extra_t(m__io, this, m__root);
            break;
        }
        case 35: {
            m_tile_extra = new painting_easel_extra_t(m__io, this, m__root);
            break;
        }
        case 36: {
            m_tile_extra = new pet_battle_cage_extra_t(m__io, this, m__root);
            break;
        }
        case 37: {
            m_tile_extra = new pet_trainer_extra_t(m__io, this, m__root);
            break;
        }
        case 38: {
            m_tile_extra = new steam_engine_extra_t(m__io, this, m__root);
            break;
        }
        case 39: {
            m_tile_extra = new lock_bot_extra_t(m__io, this, m__root);
            break;
        }
        case 4: {
            m_tile_extra = new seed_extra_t(m__io, this, m__root);
            break;
        }
        case 40: {
            m_tile_extra = new weather_machine_1_extra_t(m__io, this, m__root);
            break;
        }
        case 41: {
            m_tile_extra = new spirit_storage_unit_extra_t(m__io, this, m__root);
            break;
        }
        case 42: {
            m_tile_extra = new data_bedrock_extra_t(m__io, this, m__root);
            break;
        }
        case 43: {
            m_tile_extra = new shelf_extra_t(m__io, this, m__root);
            break;
        }
        case 44: {
            m_tile_extra = new vip_entrance_extra_t(m__io, this, m__root);
            break;
        }
        case 45: {
            m_tile_extra = new challenge_timer_extra_t(m__io, this, m__root);
            break;
        }
        case 47: {
            m_tile_extra = new fish_wall_mount_extra_t(m__io, this, m__root);
            break;
        }
        case 48: {
            m_tile_extra = new portrait_extra_t(m__io, this, m__root);
            break;
        }
        case 49: {
            m_tile_extra = new weather_machine_2_extra_t(m__io, this, m__root);
            break;
        }
        case 50: {
            m_tile_extra = new fossil_prep_station_extra_t(m__io, this, m__root);
            break;
        }
        case 51: {
            m_tile_extra = new dna_extractor_extra_t(m__io, this, m__root);
            break;
        }
        case 52: {
            m_tile_extra = new howler_extra_t(m__io, this, m__root);
            break;
        }
        case 53: {
            m_tile_extra = new chemsynth_tank_extra_t(m__io, this, m__root);
            break;
        }
        case 54: {
            m_tile_extra = new storage_box_xtreme_extra_t(m__io, this, m__root);
            break;
        }
        case 55: {
            m_tile_extra = new cooking_oven_extra_t(m__io, this, m__root);
            break;
        }
        case 56: {
            m_tile_extra = new audio_rack_extra_t(m__io, this, m__root);
            break;
        }
        case 57: {
            m_tile_extra = new geiger_charger_extra_t(m__io, this, m__root);
            break;
        }
        case 58: {
            m_tile_extra = new adventure_begins_extra_t(m__io, this, m__root);
            break;
        }
        case 59: {
            m_tile_extra = new tomb_robber_extra_t(m__io, this, m__root);
            break;
        }
        case 60: {
            m_tile_extra = new balloon_o_matic_extra_t(m__io, this, m__root);
            break;
        }
        case 61: {
            m_tile_extra = new training_port_extra_t(m__io, this, m__root);
            break;
        }
        case 62: {
            m_tile_extra = new item_sucker_extra_t(m__io, this, m__root);
            break;
        }
        case 63: {
            m_tile_extra = new cybot_extra_t(m__io, this, m__root);
            break;
        }
        case 65: {
            m_tile_extra = new guild_extra_t(m__io, this, m__root);
            break;
        }
        case 66: {
            m_tile_extra = new growscan_extra_t(m__io, this, m__root);
            break;
        }
        case 67: {
            m_tile_extra = new containment_field_power_node_extra_t(m__io, this, m__root);
            break;
        }
        case 68: {
            m_tile_extra = new spirit_board_extra_t(m__io, this, m__root);
            break;
        }
        case 69: {
            m_tile_extra = new tesseract_manipulator_extra_t(m__io, this, m__root);
            break;
        }
        case 72: {
            m_tile_extra = new stormy_cloud_extra_t(m__io, this, m__root);
            break;
        }
        case 73: {
            m_tile_extra = new temporary_platform_extra_t(m__io, this, m__root);
            break;
        }
        case 74: {
            m_tile_extra = new safe_vault_extra_t(m__io, this, m__root);
            break;
        }
        case 75: {
            m_tile_extra = new angelic_counting_cloud_extra_t(m__io, this, m__root);
            break;
        }
        case 77: {
            m_tile_extra = new infinity_weather_machine_extra_t(m__io, this, m__root);
            break;
        }
        case 79: {
            m_tile_extra = new pineapple_guzzler_extra_t(m__io, this, m__root);
            break;
        }
        case 8: {
            m_tile_extra = new dice_extra_t(m__io, this, m__root);
            break;
        }
        case 80: {
            m_tile_extra = new krakens_galatic_block_extra_t(m__io, this, m__root);
            break;
        }
        case 81: {
            m_tile_extra = new friends_entrance_extra_t(m__io, this, m__root);
            break;
        }
        case 9: {
            m_tile_extra = new provider_extra_t(m__io, this, m__root);
            break;
        }
        default: {
            m_tile_extra = new unknown_extra_t(m__io, this, m__root);
            break;
        }
        }
    }
    n_cbor_data = true;
    if ( (( (((flag() & 1) == 1) && (extra_data_type() == 36)) ) || (fg() == 15546) || (fg() == 14666) || (fg() == 14962) || (fg() == 14662)) ) {
        n_cbor_data = false;
        m_cbor_data = new cbor_data_t(m__io, this, m__root);
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
        if (m_tile_extra) {
            delete m_tile_extra; m_tile_extra = 0;
        }
    }
    if (!n_cbor_data) {
        if (m_cbor_data) {
            delete m_cbor_data; m_cbor_data = 0;
        }
    }
}

growtopia_world_t::xenonite_extra_t::xenonite_extra_t(kaitai::kstream* p__io, growtopia_world_t::world_tile_t* p__parent, growtopia_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void growtopia_world_t::xenonite_extra_t::_read() {
    m_unk1 = m__io->read_bytes(5);
}

growtopia_world_t::xenonite_extra_t::~xenonite_extra_t() {
    _clean_up();
}

void growtopia_world_t::xenonite_extra_t::_clean_up() {
}
