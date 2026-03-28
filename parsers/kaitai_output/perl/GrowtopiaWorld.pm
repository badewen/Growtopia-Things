# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;
use Encode;

########################################################################
package GrowtopiaWorld;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root || $self;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{version} = $self->{_io}->read_u2le();
    $self->{unk1} = $self->{_io}->read_u4le();
    $self->{name} = GrowtopiaWorld::GtStr->new($self->{_io}, $self, $self->{_root});
    $self->{width} = $self->{_io}->read_u4le();
    $self->{height} = $self->{_io}->read_u4le();
    $self->{num_tiles} = $self->{_io}->read_u4le();
    $self->{unk2} = $self->{_io}->read_bytes(5);
    $self->{tiles} = [];
    my $n_tiles = $self->num_tiles();
    for (my $i = 0; $i < $n_tiles; $i++) {
        push @{$self->{tiles}}, GrowtopiaWorld::WorldTile->new($self->{_io}, $self, $self->{_root});
    }
    $self->{unk3} = $self->{_io}->read_bytes(12);
    $self->{num_objects} = $self->{_io}->read_u4le();
    $self->{last_object_uid} = $self->{_io}->read_u4le();
    $self->{objects} = [];
    my $n_objects = $self->num_objects();
    for (my $i = 0; $i < $n_objects; $i++) {
        push @{$self->{objects}}, GrowtopiaWorld::WorldObject->new($self->{_io}, $self, $self->{_root});
    }
}

sub version {
    my ($self) = @_;
    return $self->{version};
}

sub unk1 {
    my ($self) = @_;
    return $self->{unk1};
}

sub name {
    my ($self) = @_;
    return $self->{name};
}

sub width {
    my ($self) = @_;
    return $self->{width};
}

sub height {
    my ($self) = @_;
    return $self->{height};
}

sub num_tiles {
    my ($self) = @_;
    return $self->{num_tiles};
}

sub unk2 {
    my ($self) = @_;
    return $self->{unk2};
}

sub tiles {
    my ($self) = @_;
    return $self->{tiles};
}

sub unk3 {
    my ($self) = @_;
    return $self->{unk3};
}

sub num_objects {
    my ($self) = @_;
    return $self->{num_objects};
}

sub last_object_uid {
    my ($self) = @_;
    return $self->{last_object_uid};
}

sub objects {
    my ($self) = @_;
    return $self->{objects};
}

########################################################################
package GrowtopiaWorld::ARGB;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{a} = $self->{_io}->read_u1();
    $self->{r} = $self->{_io}->read_u1();
    $self->{g} = $self->{_io}->read_u1();
    $self->{b} = $self->{_io}->read_u1();
}

sub a {
    my ($self) = @_;
    return $self->{a};
}

sub r {
    my ($self) = @_;
    return $self->{r};
}

sub g {
    my ($self) = @_;
    return $self->{g};
}

sub b {
    my ($self) = @_;
    return $self->{b};
}

########################################################################
package GrowtopiaWorld::AchievementBlockExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{unk1} = $self->{_io}->read_u4le();
    $self->{achievement_id} = $self->{_io}->read_u1();
}

sub unk1 {
    my ($self) = @_;
    return $self->{unk1};
}

sub achievement_id {
    my ($self) = @_;
    return $self->{achievement_id};
}

########################################################################
package GrowtopiaWorld::AdventureBeginsExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

}

########################################################################
package GrowtopiaWorld::AngelicCountingCloudExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

our $STATES_RAFFLING = 1;
our $STATES_DONE_RAFFLING = 2;

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{state} = $self->{_io}->read_u4le();
    $self->{unk1} = $self->{_io}->read_u2le();
    if ($self->state() == $GrowtopiaWorld::AngelicCountingCloudExtra::STATES_DONE_RAFFLING) {
        $self->{ascii_code} = $self->{_io}->read_u1();
    }
}

sub state {
    my ($self) = @_;
    return $self->{state};
}

sub unk1 {
    my ($self) = @_;
    return $self->{unk1};
}

sub ascii_code {
    my ($self) = @_;
    return $self->{ascii_code};
}

########################################################################
package GrowtopiaWorld::AudioRackExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{note} = GrowtopiaWorld::GtStr->new($self->{_io}, $self, $self->{_root});
    $self->{volume} = $self->{_io}->read_u4le();
}

sub note {
    my ($self) = @_;
    return $self->{note};
}

sub volume {
    my ($self) = @_;
    return $self->{volume};
}

########################################################################
package GrowtopiaWorld::BalloonOMaticExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{total_rarity} = $self->{_io}->read_u4le();
    $self->{team_type} = $self->{_io}->read_u1();
}

sub total_rarity {
    my ($self) = @_;
    return $self->{total_rarity};
}

sub team_type {
    my ($self) = @_;
    return $self->{team_type};
}

########################################################################
package GrowtopiaWorld::CborData;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{len_data} = $self->{_io}->read_u4le();
    $self->{data} = $self->{_io}->read_bytes($self->len_data());
}

sub len_data {
    my ($self) = @_;
    return $self->{len_data};
}

sub data {
    my ($self) = @_;
    return $self->{data};
}

########################################################################
package GrowtopiaWorld::ChallengeTimerExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

}

########################################################################
package GrowtopiaWorld::ChemsynthTankExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{current_chem_id} = $self->{_io}->read_u4le();
    $self->{supposed_chem_id} = $self->{_io}->read_u4le();
}

sub current_chem_id {
    my ($self) = @_;
    return $self->{current_chem_id};
}

sub supposed_chem_id {
    my ($self) = @_;
    return $self->{supposed_chem_id};
}

########################################################################
package GrowtopiaWorld::ContainmentFieldPowerNodeExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{time_ms} = $self->{_io}->read_u4le();
    $self->{num_linked_nodes} = $self->{_io}->read_u4le();
    $self->{linked_nodes} = [];
    my $n_linked_nodes = $self->num_linked_nodes();
    for (my $i = 0; $i < $n_linked_nodes; $i++) {
        push @{$self->{linked_nodes}}, $self->{_io}->read_u4le();
    }
}

sub time_ms {
    my ($self) = @_;
    return $self->{time_ms};
}

sub num_linked_nodes {
    my ($self) = @_;
    return $self->{num_linked_nodes};
}

sub linked_nodes {
    my ($self) = @_;
    return $self->{linked_nodes};
}

########################################################################
package GrowtopiaWorld::CookingOvenExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{temp_level} = $self->{_io}->read_u4le();
    $self->{ingredient_list_size} = $self->{_io}->read_u4le();
    $self->{ingredients} = [];
    my $n_ingredients = int($self->ingredient_list_size() / 2);
    for (my $i = 0; $i < $n_ingredients; $i++) {
        push @{$self->{ingredients}}, GrowtopiaWorld::CookingOvenExtra::Ingredient->new($self->{_io}, $self, $self->{_root});
    }
    $self->{unk1} = $self->{_io}->read_u4le();
    $self->{unk2} = $self->{_io}->read_u4le();
    $self->{unk3} = $self->{_io}->read_u4le();
}

sub temp_level {
    my ($self) = @_;
    return $self->{temp_level};
}

sub ingredient_list_size {
    my ($self) = @_;
    return $self->{ingredient_list_size};
}

sub ingredients {
    my ($self) = @_;
    return $self->{ingredients};
}

sub unk1 {
    my ($self) = @_;
    return $self->{unk1};
}

sub unk2 {
    my ($self) = @_;
    return $self->{unk2};
}

sub unk3 {
    my ($self) = @_;
    return $self->{unk3};
}

########################################################################
package GrowtopiaWorld::CookingOvenExtra::Ingredient;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{item_id} = $self->{_io}->read_u4le();
    $self->{time_added} = $self->{_io}->read_u4le();
}

sub item_id {
    my ($self) = @_;
    return $self->{item_id};
}

sub time_added {
    my ($self) = @_;
    return $self->{time_added};
}

########################################################################
package GrowtopiaWorld::CountryFlagExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    if ($self->_parent()->fg() == 3394) {
        $self->{country} = GrowtopiaWorld::GtStr->new($self->{_io}, $self, $self->{_root});
    }
}

sub country {
    my ($self) = @_;
    return $self->{country};
}

########################################################################
package GrowtopiaWorld::CrimeInProgressExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{crime_name} = GrowtopiaWorld::GtStr->new($self->{_io}, $self, $self->{_root});
    $self->{crime_index} = $self->{_io}->read_u4le();
    $self->{unk1} = $self->{_io}->read_u1();
}

sub crime_name {
    my ($self) = @_;
    return $self->{crime_name};
}

sub crime_index {
    my ($self) = @_;
    return $self->{crime_index};
}

sub unk1 {
    my ($self) = @_;
    return $self->{unk1};
}

########################################################################
package GrowtopiaWorld::CrystalExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{num_crystals} = $self->{_io}->read_u2le();
    $self->{crystals} = [];
    my $n_crystals = $self->num_crystals();
    for (my $i = 0; $i < $n_crystals; $i++) {
        push @{$self->{crystals}}, $self->{_io}->read_u1();
    }
}

sub num_crystals {
    my ($self) = @_;
    return $self->{num_crystals};
}

sub crystals {
    my ($self) = @_;
    return $self->{crystals};
}

########################################################################
package GrowtopiaWorld::CybotExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{num_commands} = $self->{_io}->read_u4le();
    $self->{commands} = [];
    my $n_commands = $self->num_commands();
    for (my $i = 0; $i < $n_commands; $i++) {
        push @{$self->{commands}}, GrowtopiaWorld::CybotExtra::Command->new($self->{_io}, $self, $self->{_root});
    }
    $self->{timer} = $self->{_io}->read_u4le();
    $self->{is_activated} = $self->{_io}->read_u4le();
}

sub num_commands {
    my ($self) = @_;
    return $self->{num_commands};
}

sub commands {
    my ($self) = @_;
    return $self->{commands};
}

sub timer {
    my ($self) = @_;
    return $self->{timer};
}

sub is_activated {
    my ($self) = @_;
    return $self->{is_activated};
}

########################################################################
package GrowtopiaWorld::CybotExtra::Command;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{command_id} = $self->{_io}->read_u4le();
    $self->{is_command_used} = $self->{_io}->read_u4le();
    $self->{unk1} = $self->{_io}->read_bytes(7);
}

sub command_id {
    my ($self) = @_;
    return $self->{command_id};
}

sub is_command_used {
    my ($self) = @_;
    return $self->{is_command_used};
}

sub unk1 {
    my ($self) = @_;
    return $self->{unk1};
}

########################################################################
package GrowtopiaWorld::DataBedrockExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{unk1} = $self->{_io}->read_bytes(17);
    $self->{pad1} = $self->{_io}->read_bytes(4);
}

sub unk1 {
    my ($self) = @_;
    return $self->{unk1};
}

sub pad1 {
    my ($self) = @_;
    return $self->{pad1};
}

########################################################################
package GrowtopiaWorld::DiceExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{symbol} = $self->{_io}->read_u1();
}

sub symbol {
    my ($self) = @_;
    return $self->{symbol};
}

########################################################################
package GrowtopiaWorld::DisplayBlockExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{item_id} = $self->{_io}->read_u4le();
}

sub item_id {
    my ($self) = @_;
    return $self->{item_id};
}

########################################################################
package GrowtopiaWorld::DnaExtractorExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

}

########################################################################
package GrowtopiaWorld::DoorExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{label} = GrowtopiaWorld::GtStr->new($self->{_io}, $self, $self->{_root});
    $self->{flags} = $self->{_io}->read_u1();
}

sub label {
    my ($self) = @_;
    return $self->{label};
}

sub flags {
    my ($self) = @_;
    return $self->{flags};
}

########################################################################
package GrowtopiaWorld::FishTankPortExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{flags} = $self->{_io}->read_u1();
    $self->{fish_data_length} = $self->{_io}->read_u4le();
    $self->{fishes} = [];
    my $n_fishes = int($self->fish_data_length() / 2);
    for (my $i = 0; $i < $n_fishes; $i++) {
        push @{$self->{fishes}}, GrowtopiaWorld::FishTankPortExtra::FishInfo->new($self->{_io}, $self, $self->{_root});
    }
}

sub flags {
    my ($self) = @_;
    return $self->{flags};
}

sub fish_data_length {
    my ($self) = @_;
    return $self->{fish_data_length};
}

sub fishes {
    my ($self) = @_;
    return $self->{fishes};
}

########################################################################
package GrowtopiaWorld::FishTankPortExtra::FishInfo;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{item_id} = $self->{_io}->read_u4le();
    $self->{lbs} = $self->{_io}->read_u4le();
}

sub item_id {
    my ($self) = @_;
    return $self->{item_id};
}

sub lbs {
    my ($self) = @_;
    return $self->{lbs};
}

########################################################################
package GrowtopiaWorld::FishWallMountExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{label} = GrowtopiaWorld::GtStr->new($self->{_io}, $self, $self->{_root});
    $self->{item_id} = $self->{_io}->read_u4le();
    $self->{lbs} = $self->{_io}->read_u1();
}

sub label {
    my ($self) = @_;
    return $self->{label};
}

sub item_id {
    my ($self) = @_;
    return $self->{item_id};
}

sub lbs {
    my ($self) = @_;
    return $self->{lbs};
}

########################################################################
package GrowtopiaWorld::ForgeExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{temperature} = $self->{_io}->read_u4le();
}

sub temperature {
    my ($self) = @_;
    return $self->{temperature};
}

########################################################################
package GrowtopiaWorld::FossilPrepStationExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{unk1} = $self->{_io}->read_u4le();
}

sub unk1 {
    my ($self) = @_;
    return $self->{unk1};
}

########################################################################
package GrowtopiaWorld::FriendsEntranceExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{owner_userid} = $self->{_io}->read_u4le();
    $self->{unk1} = $self->{_io}->read_bytes(2);
    $self->{num_allowed_friends_userid} = $self->{_io}->read_u2le();
    $self->{allowed_friends_userid} = [];
    my $n_allowed_friends_userid = $self->num_allowed_friends_userid();
    for (my $i = 0; $i < $n_allowed_friends_userid; $i++) {
        push @{$self->{allowed_friends_userid}}, $self->{_io}->read_u4le();
    }
}

sub owner_userid {
    my ($self) = @_;
    return $self->{owner_userid};
}

sub unk1 {
    my ($self) = @_;
    return $self->{unk1};
}

sub num_allowed_friends_userid {
    my ($self) = @_;
    return $self->{num_allowed_friends_userid};
}

sub allowed_friends_userid {
    my ($self) = @_;
    return $self->{allowed_friends_userid};
}

########################################################################
package GrowtopiaWorld::GameGeneratorExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

}

########################################################################
package GrowtopiaWorld::GameGraveExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{team_id} = $self->{_io}->read_u1();
}

sub team_id {
    my ($self) = @_;
    return $self->{team_id};
}

########################################################################
package GrowtopiaWorld::GeigerChargerExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{unk1} = $self->{_io}->read_bytes(4);
}

sub unk1 {
    my ($self) = @_;
    return $self->{unk1};
}

########################################################################
package GrowtopiaWorld::GivingTreeExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{harvested} = $self->{_io}->read_u1();
    $self->{age} = $self->{_io}->read_u2le();
    $self->{unk1} = $self->{_io}->read_u2le();
    $self->{decoration_percentage} = $self->{_io}->read_u1();
}

sub harvested {
    my ($self) = @_;
    return $self->{harvested};
}

sub age {
    my ($self) = @_;
    return $self->{age};
}

sub unk1 {
    my ($self) = @_;
    return $self->{unk1};
}

sub decoration_percentage {
    my ($self) = @_;
    return $self->{decoration_percentage};
}

########################################################################
package GrowtopiaWorld::GrowscanExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{unk1} = $self->{_io}->read_u1();
}

sub unk1 {
    my ($self) = @_;
    return $self->{unk1};
}

########################################################################
package GrowtopiaWorld::GtStr;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{len_data} = $self->{_io}->read_u2le();
    $self->{str} = Encode::decode("ASCII", $self->{_io}->read_bytes($self->len_data()));
}

sub len_data {
    my ($self) = @_;
    return $self->{len_data};
}

sub str {
    my ($self) = @_;
    return $self->{str};
}

########################################################################
package GrowtopiaWorld::GuildExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{unk1} = $self->{_io}->read_bytes(17);
}

sub unk1 {
    my ($self) = @_;
    return $self->{unk1};
}

########################################################################
package GrowtopiaWorld::HeartMonitorExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{user_id} = $self->{_io}->read_u4le();
    $self->{grow_id} = GrowtopiaWorld::GtStr->new($self->{_io}, $self, $self->{_root});
}

sub user_id {
    my ($self) = @_;
    return $self->{user_id};
}

sub grow_id {
    my ($self) = @_;
    return $self->{grow_id};
}

########################################################################
package GrowtopiaWorld::HowlerExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

}

########################################################################
package GrowtopiaWorld::InfinityWeatherMachineExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{interval_mins} = $self->{_io}->read_u4le();
    $self->{num_weather_machines} = $self->{_io}->read_u4le();
    $self->{weather_machines} = [];
    my $n_weather_machines = $self->num_weather_machines();
    for (my $i = 0; $i < $n_weather_machines; $i++) {
        push @{$self->{weather_machines}}, $self->{_io}->read_u4le();
    }
}

sub interval_mins {
    my ($self) = @_;
    return $self->{interval_mins};
}

sub num_weather_machines {
    my ($self) = @_;
    return $self->{num_weather_machines};
}

sub weather_machines {
    my ($self) = @_;
    return $self->{weather_machines};
}

########################################################################
package GrowtopiaWorld::ItemSuckerExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{item_id} = $self->{_io}->read_u4le();
    $self->{item_amount} = $self->{_io}->read_u4le();
    $self->{flags} = $self->{_io}->read_u2le();
    $self->{item_limit} = $self->{_io}->read_u4le();
}

sub item_id {
    my ($self) = @_;
    return $self->{item_id};
}

sub item_amount {
    my ($self) = @_;
    return $self->{item_amount};
}

sub flags {
    my ($self) = @_;
    return $self->{flags};
}

sub item_limit {
    my ($self) = @_;
    return $self->{item_limit};
}

########################################################################
package GrowtopiaWorld::KrakensGalaticBlockExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{pattern_number} = $self->{_io}->read_u1();
    $self->{unk1} = $self->{_io}->read_bytes(4);
    $self->{color_rgb} = $self->{_io}->read_bytes(3);
}

sub pattern_number {
    my ($self) = @_;
    return $self->{pattern_number};
}

sub unk1 {
    my ($self) = @_;
    return $self->{unk1};
}

sub color_rgb {
    my ($self) = @_;
    return $self->{color_rgb};
}

########################################################################
package GrowtopiaWorld::LobsterTrapExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

}

########################################################################
package GrowtopiaWorld::LockBotExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{age} = $self->{_io}->read_u4le();
}

sub age {
    my ($self) = @_;
    return $self->{age};
}

########################################################################
package GrowtopiaWorld::LockExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{flag} = $self->{_io}->read_u1();
    $self->{owner_user_id} = $self->{_io}->read_u4le();
    $self->{num_authorized_userids} = $self->{_io}->read_u4le();
    $self->{authorized_userids} = [];
    my $n_authorized_userids = $self->num_authorized_userids();
    for (my $i = 0; $i < $n_authorized_userids; $i++) {
        push @{$self->{authorized_userids}}, $self->{_io}->read_u4le();
    }
    $self->{minimum_level} = $self->{_io}->read_u1();
    $self->{unk1} = $self->{_io}->read_bytes(7);
    if ($self->_parent()->fg() == 5814) {
        $self->{guild_locks_unk} = $self->{_io}->read_bytes(16);
    }
}

sub flag {
    my ($self) = @_;
    return $self->{flag};
}

sub owner_user_id {
    my ($self) = @_;
    return $self->{owner_user_id};
}

sub num_authorized_userids {
    my ($self) = @_;
    return $self->{num_authorized_userids};
}

sub authorized_userids {
    my ($self) = @_;
    return $self->{authorized_userids};
}

sub minimum_level {
    my ($self) = @_;
    return $self->{minimum_level};
}

sub unk1 {
    my ($self) = @_;
    return $self->{unk1};
}

sub guild_locks_unk {
    my ($self) = @_;
    return $self->{guild_locks_unk};
}

########################################################################
package GrowtopiaWorld::MagicEggExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{egg_amount} = $self->{_io}->read_u4le();
}

sub egg_amount {
    my ($self) = @_;
    return $self->{egg_amount};
}

########################################################################
package GrowtopiaWorld::MannequinExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{label} = GrowtopiaWorld::GtStr->new($self->{_io}, $self, $self->{_root});
    $self->{unk1} = $self->{_io}->read_u1();
    $self->{unk2} = $self->{_io}->read_u2le();
    $self->{unk3} = $self->{_io}->read_u2le();
    $self->{hat} = $self->{_io}->read_u2le();
    $self->{shirt} = $self->{_io}->read_u2le();
    $self->{pants} = $self->{_io}->read_u2le();
    $self->{boots} = $self->{_io}->read_u2le();
    $self->{face} = $self->{_io}->read_u2le();
    $self->{hand} = $self->{_io}->read_u2le();
    $self->{back} = $self->{_io}->read_u2le();
    $self->{hair} = $self->{_io}->read_u2le();
    $self->{neck} = $self->{_io}->read_u2le();
}

sub label {
    my ($self) = @_;
    return $self->{label};
}

sub unk1 {
    my ($self) = @_;
    return $self->{unk1};
}

sub unk2 {
    my ($self) = @_;
    return $self->{unk2};
}

sub unk3 {
    my ($self) = @_;
    return $self->{unk3};
}

sub hat {
    my ($self) = @_;
    return $self->{hat};
}

sub shirt {
    my ($self) = @_;
    return $self->{shirt};
}

sub pants {
    my ($self) = @_;
    return $self->{pants};
}

sub boots {
    my ($self) = @_;
    return $self->{boots};
}

sub face {
    my ($self) = @_;
    return $self->{face};
}

sub hand {
    my ($self) = @_;
    return $self->{hand};
}

sub back {
    my ($self) = @_;
    return $self->{back};
}

sub hair {
    my ($self) = @_;
    return $self->{hair};
}

sub neck {
    my ($self) = @_;
    return $self->{neck};
}

########################################################################
package GrowtopiaWorld::PaintingEaselExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{item_id} = $self->{_io}->read_u4le();
    $self->{label} = GrowtopiaWorld::GtStr->new($self->{_io}, $self, $self->{_root});
}

sub item_id {
    my ($self) = @_;
    return $self->{item_id};
}

sub label {
    my ($self) = @_;
    return $self->{label};
}

########################################################################
package GrowtopiaWorld::PetBattleCageExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{label} = GrowtopiaWorld::GtStr->new($self->{_io}, $self, $self->{_root});
    $self->{base_pet} = $self->{_io}->read_u4le();
    $self->{combined_pet_1} = $self->{_io}->read_u4le();
    $self->{combined_pet_2} = $self->{_io}->read_u4le();
}

sub label {
    my ($self) = @_;
    return $self->{label};
}

sub base_pet {
    my ($self) = @_;
    return $self->{base_pet};
}

sub combined_pet_1 {
    my ($self) = @_;
    return $self->{combined_pet_1};
}

sub combined_pet_2 {
    my ($self) = @_;
    return $self->{combined_pet_2};
}

########################################################################
package GrowtopiaWorld::PetTrainerExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{name} = GrowtopiaWorld::GtStr->new($self->{_io}, $self, $self->{_root});
    $self->{num_pets} = $self->{_io}->read_u4le();
    $self->{unk1} = $self->{_io}->read_u4le();
    $self->{pets} = [];
    my $n_pets = $self->num_pets();
    for (my $i = 0; $i < $n_pets; $i++) {
        push @{$self->{pets}}, $self->{_io}->read_u4le();
    }
}

sub name {
    my ($self) = @_;
    return $self->{name};
}

sub num_pets {
    my ($self) = @_;
    return $self->{num_pets};
}

sub unk1 {
    my ($self) = @_;
    return $self->{unk1};
}

sub pets {
    my ($self) = @_;
    return $self->{pets};
}

########################################################################
package GrowtopiaWorld::PhoneBoothExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{hat} = $self->{_io}->read_u2le();
    $self->{shirt} = $self->{_io}->read_u2le();
    $self->{pants} = $self->{_io}->read_u2le();
    $self->{shoes} = $self->{_io}->read_u2le();
    $self->{face} = $self->{_io}->read_u2le();
    $self->{hand} = $self->{_io}->read_u2le();
    $self->{back} = $self->{_io}->read_u2le();
    $self->{hair} = $self->{_io}->read_u2le();
    $self->{neck} = $self->{_io}->read_u2le();
}

sub hat {
    my ($self) = @_;
    return $self->{hat};
}

sub shirt {
    my ($self) = @_;
    return $self->{shirt};
}

sub pants {
    my ($self) = @_;
    return $self->{pants};
}

sub shoes {
    my ($self) = @_;
    return $self->{shoes};
}

sub face {
    my ($self) = @_;
    return $self->{face};
}

sub hand {
    my ($self) = @_;
    return $self->{hand};
}

sub back {
    my ($self) = @_;
    return $self->{back};
}

sub hair {
    my ($self) = @_;
    return $self->{hair};
}

sub neck {
    my ($self) = @_;
    return $self->{neck};
}

########################################################################
package GrowtopiaWorld::PineappleGuzzlerExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{pineapple_fed} = $self->{_io}->read_u4le();
}

sub pineapple_fed {
    my ($self) = @_;
    return $self->{pineapple_fed};
}

########################################################################
package GrowtopiaWorld::PortraitExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{label} = GrowtopiaWorld::GtStr->new($self->{_io}, $self, $self->{_root});
    $self->{unk1} = $self->{_io}->read_u4le();
    $self->{unk2} = $self->{_io}->read_u4le();
    $self->{unk3} = $self->{_io}->read_bytes(5);
    $self->{unk4} = $self->{_io}->read_u1();
    $self->{unk5} = $self->{_io}->read_u2le();
    $self->{face} = $self->{_io}->read_u2le();
    $self->{hat} = $self->{_io}->read_u2le();
    $self->{hair} = $self->{_io}->read_u2le();
    $self->{unk6} = $self->{_io}->read_u4le();
    if ($self->hat() == 12958) {
        $self->{infinity_crown_data} = GrowtopiaWorld::GtStr->new($self->{_io}, $self, $self->{_root});
    }
}

sub label {
    my ($self) = @_;
    return $self->{label};
}

sub unk1 {
    my ($self) = @_;
    return $self->{unk1};
}

sub unk2 {
    my ($self) = @_;
    return $self->{unk2};
}

sub unk3 {
    my ($self) = @_;
    return $self->{unk3};
}

sub unk4 {
    my ($self) = @_;
    return $self->{unk4};
}

sub unk5 {
    my ($self) = @_;
    return $self->{unk5};
}

sub face {
    my ($self) = @_;
    return $self->{face};
}

sub hat {
    my ($self) = @_;
    return $self->{hat};
}

sub hair {
    my ($self) = @_;
    return $self->{hair};
}

sub unk6 {
    my ($self) = @_;
    return $self->{unk6};
}

sub infinity_crown_data {
    my ($self) = @_;
    return $self->{infinity_crown_data};
}

########################################################################
package GrowtopiaWorld::ProviderExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{age} = $self->{_io}->read_u4le();
    if ($self->_parent()->fg() == 10656) {
        $self->{pad1} = $self->{_io}->read_bytes(4);
    }
}

sub age {
    my ($self) = @_;
    return $self->{age};
}

sub pad1 {
    my ($self) = @_;
    return $self->{pad1};
}

########################################################################
package GrowtopiaWorld::SafeVaultExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

}

########################################################################
package GrowtopiaWorld::SeedExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{age} = $self->{_io}->read_u4le();
    $self->{fruit_count} = $self->{_io}->read_u1();
}

sub age {
    my ($self) = @_;
    return $self->{age};
}

sub fruit_count {
    my ($self) = @_;
    return $self->{fruit_count};
}

########################################################################
package GrowtopiaWorld::SewingMachineExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{num_bolt_ids} = $self->{_io}->read_u4le();
    $self->{bolt_ids} = [];
    my $n_bolt_ids = $self->num_bolt_ids();
    for (my $i = 0; $i < $n_bolt_ids; $i++) {
        push @{$self->{bolt_ids}}, $self->{_io}->read_u4le();
    }
}

sub num_bolt_ids {
    my ($self) = @_;
    return $self->{num_bolt_ids};
}

sub bolt_ids {
    my ($self) = @_;
    return $self->{bolt_ids};
}

########################################################################
package GrowtopiaWorld::ShelfExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{top_left_item_id} = $self->{_io}->read_u4le();
    $self->{top_right_item_id} = $self->{_io}->read_u4le();
    $self->{bottom_left_item_id} = $self->{_io}->read_u4le();
    $self->{bottom_right_item_id} = $self->{_io}->read_u4le();
}

sub top_left_item_id {
    my ($self) = @_;
    return $self->{top_left_item_id};
}

sub top_right_item_id {
    my ($self) = @_;
    return $self->{top_right_item_id};
}

sub bottom_left_item_id {
    my ($self) = @_;
    return $self->{bottom_left_item_id};
}

sub bottom_right_item_id {
    my ($self) = @_;
    return $self->{bottom_right_item_id};
}

########################################################################
package GrowtopiaWorld::SignExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{label} = GrowtopiaWorld::GtStr->new($self->{_io}, $self, $self->{_root});
    $self->{pad1} = $self->{_io}->read_bytes(4);
}

sub label {
    my ($self) = @_;
    return $self->{label};
}

sub pad1 {
    my ($self) = @_;
    return $self->{pad1};
}

########################################################################
package GrowtopiaWorld::SilkWormExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{flags} = $self->{_io}->read_u1();
    $self->{name} = GrowtopiaWorld::GtStr->new($self->{_io}, $self, $self->{_root});
    $self->{age_sec} = $self->{_io}->read_u4le();
    $self->{unk1} = $self->{_io}->read_u4le();
    $self->{unk2} = $self->{_io}->read_u4le();
    $self->{can_be_fed} = $self->{_io}->read_u1();
    $self->{food_saturation} = $self->{_io}->read_u4le();
    $self->{water_saturation} = $self->{_io}->read_u4le();
    $self->{color_argb} = GrowtopiaWorld::ARGB->new($self->{_io}, $self, $self->{_root});
    $self->{sick_duration} = $self->{_io}->read_u4le();
}

sub flags {
    my ($self) = @_;
    return $self->{flags};
}

sub name {
    my ($self) = @_;
    return $self->{name};
}

sub age_sec {
    my ($self) = @_;
    return $self->{age_sec};
}

sub unk1 {
    my ($self) = @_;
    return $self->{unk1};
}

sub unk2 {
    my ($self) = @_;
    return $self->{unk2};
}

sub can_be_fed {
    my ($self) = @_;
    return $self->{can_be_fed};
}

sub food_saturation {
    my ($self) = @_;
    return $self->{food_saturation};
}

sub water_saturation {
    my ($self) = @_;
    return $self->{water_saturation};
}

sub color_argb {
    my ($self) = @_;
    return $self->{color_argb};
}

sub sick_duration {
    my ($self) = @_;
    return $self->{sick_duration};
}

########################################################################
package GrowtopiaWorld::SolarCollectorExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{unk1} = $self->{_io}->read_bytes(5);
}

sub unk1 {
    my ($self) = @_;
    return $self->{unk1};
}

########################################################################
package GrowtopiaWorld::SpiritBoardExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{player_required} = $self->{_io}->read_u4le();
    $self->{unk1} = GrowtopiaWorld::GtStr->new($self->{_io}, $self, $self->{_root});
    $self->{command} = GrowtopiaWorld::GtStr->new($self->{_io}, $self, $self->{_root});
    $self->{num_required_items} = $self->{_io}->read_u4le();
    $self->{required_items} = [];
    my $n_required_items = $self->num_required_items();
    for (my $i = 0; $i < $n_required_items; $i++) {
        push @{$self->{required_items}}, $self->{_io}->read_u4le();
    }
}

sub player_required {
    my ($self) = @_;
    return $self->{player_required};
}

sub unk1 {
    my ($self) = @_;
    return $self->{unk1};
}

sub command {
    my ($self) = @_;
    return $self->{command};
}

sub num_required_items {
    my ($self) = @_;
    return $self->{num_required_items};
}

sub required_items {
    my ($self) = @_;
    return $self->{required_items};
}

########################################################################
package GrowtopiaWorld::SpiritStorageUnitExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{ghost_jar_count} = $self->{_io}->read_u4le();
}

sub ghost_jar_count {
    my ($self) = @_;
    return $self->{ghost_jar_count};
}

########################################################################
package GrowtopiaWorld::SpotlightExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

}

########################################################################
package GrowtopiaWorld::SteamEngineExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{temperature} = $self->{_io}->read_u4le();
}

sub temperature {
    my ($self) = @_;
    return $self->{temperature};
}

########################################################################
package GrowtopiaWorld::SteamOrganExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{instrument_type} = $self->{_io}->read_u1();
    $self->{note} = $self->{_io}->read_u4le();
}

sub instrument_type {
    my ($self) = @_;
    return $self->{instrument_type};
}

sub note {
    my ($self) = @_;
    return $self->{note};
}

########################################################################
package GrowtopiaWorld::StorageBoxXtremeExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{data_len} = $self->{_io}->read_u2le();
    $self->{items} = [];
    my $n_items = int($self->data_len() / 13);
    for (my $i = 0; $i < $n_items; $i++) {
        push @{$self->{items}}, GrowtopiaWorld::StorageBoxXtremeExtra::StorageItem->new($self->{_io}, $self, $self->{_root});
    }
}

sub data_len {
    my ($self) = @_;
    return $self->{data_len};
}

sub items {
    my ($self) = @_;
    return $self->{items};
}

########################################################################
package GrowtopiaWorld::StorageBoxXtremeExtra::StorageItem;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{pad1} = $self->{_io}->read_bytes(3);
    $self->{item_id} = $self->{_io}->read_u4le();
    $self->{pad2} = $self->{_io}->read_bytes(2);
    $self->{item_amt} = $self->{_io}->read_u4le();
}

sub pad1 {
    my ($self) = @_;
    return $self->{pad1};
}

sub item_id {
    my ($self) = @_;
    return $self->{item_id};
}

sub pad2 {
    my ($self) = @_;
    return $self->{pad2};
}

sub item_amt {
    my ($self) = @_;
    return $self->{item_amt};
}

########################################################################
package GrowtopiaWorld::StormyCloudExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{sting_duration} = $self->{_io}->read_u4le();
    $self->{is_solid} = $self->{_io}->read_u4le();
    $self->{non_solid_duration} = $self->{_io}->read_u4le();
}

sub sting_duration {
    my ($self) = @_;
    return $self->{sting_duration};
}

sub is_solid {
    my ($self) = @_;
    return $self->{is_solid};
}

sub non_solid_duration {
    my ($self) = @_;
    return $self->{non_solid_duration};
}

########################################################################
package GrowtopiaWorld::TemporaryPlatformExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{unk1} = $self->{_io}->read_u4le();
}

sub unk1 {
    my ($self) = @_;
    return $self->{unk1};
}

########################################################################
package GrowtopiaWorld::TesseractManipulatorExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{gems_left} = $self->{_io}->read_u4le();
    $self->{next_update_ms} = $self->{_io}->read_u4le();
    $self->{item_id} = $self->{_io}->read_u4le();
    $self->{enabled} = $self->{_io}->read_u4le();
}

sub gems_left {
    my ($self) = @_;
    return $self->{gems_left};
}

sub next_update_ms {
    my ($self) = @_;
    return $self->{next_update_ms};
}

sub item_id {
    my ($self) = @_;
    return $self->{item_id};
}

sub enabled {
    my ($self) = @_;
    return $self->{enabled};
}

########################################################################
package GrowtopiaWorld::TombRobberExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

}

########################################################################
package GrowtopiaWorld::TrainingPortExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{fish_lb} = $self->{_io}->read_u4le();
    $self->{status} = $self->{_io}->read_u2le();
    $self->{item_id} = $self->{_io}->read_u4le();
    $self->{total_exp} = $self->{_io}->read_u4le();
    $self->{unk1} = $self->{_io}->read_bytes(8);
    $self->{fish_level} = $self->{_io}->read_u4le();
    $self->{unk2} = $self->{_io}->read_u4le();
    $self->{unk3} = $self->{_io}->read_bytes(5);
}

sub fish_lb {
    my ($self) = @_;
    return $self->{fish_lb};
}

sub status {
    my ($self) = @_;
    return $self->{status};
}

sub item_id {
    my ($self) = @_;
    return $self->{item_id};
}

sub total_exp {
    my ($self) = @_;
    return $self->{total_exp};
}

sub unk1 {
    my ($self) = @_;
    return $self->{unk1};
}

sub fish_level {
    my ($self) = @_;
    return $self->{fish_level};
}

sub unk2 {
    my ($self) = @_;
    return $self->{unk2};
}

sub unk3 {
    my ($self) = @_;
    return $self->{unk3};
}

########################################################################
package GrowtopiaWorld::UnknownExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{this_is_just_to_error_out_kaitai_pls} = $self->{_io}->read_bytes_full();
}

sub this_is_just_to_error_out_kaitai_pls {
    my ($self) = @_;
    return $self->{this_is_just_to_error_out_kaitai_pls};
}

########################################################################
package GrowtopiaWorld::VendingMachineExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{item_id} = $self->{_io}->read_u4le();
    $self->{price} = $self->{_io}->read_s4le();
}

sub item_id {
    my ($self) = @_;
    return $self->{item_id};
}

sub price {
    my ($self) = @_;
    return $self->{price};
}

########################################################################
package GrowtopiaWorld::VipEntranceExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{unk1} = $self->{_io}->read_u1();
    $self->{owner_userid} = $self->{_io}->read_u4le();
    $self->{num_allowed_userids} = $self->{_io}->read_u4le();
    $self->{allowed_userids} = [];
    my $n_allowed_userids = $self->num_allowed_userids();
    for (my $i = 0; $i < $n_allowed_userids; $i++) {
        push @{$self->{allowed_userids}}, $self->{_io}->read_u4le();
    }
}

sub unk1 {
    my ($self) = @_;
    return $self->{unk1};
}

sub owner_userid {
    my ($self) = @_;
    return $self->{owner_userid};
}

sub num_allowed_userids {
    my ($self) = @_;
    return $self->{num_allowed_userids};
}

sub allowed_userids {
    my ($self) = @_;
    return $self->{allowed_userids};
}

########################################################################
package GrowtopiaWorld::WeatherMachine1Extra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{settings} = $self->{_io}->read_bytes(4);
}

sub settings {
    my ($self) = @_;
    return $self->{settings};
}

########################################################################
package GrowtopiaWorld::WeatherMachine2Extra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{item_id} = $self->{_io}->read_u4le();
    $self->{gravity} = $self->{_io}->read_u4le();
    $self->{flag} = $self->{_io}->read_u1();
}

sub item_id {
    my ($self) = @_;
    return $self->{item_id};
}

sub gravity {
    my ($self) = @_;
    return $self->{gravity};
}

sub flag {
    my ($self) = @_;
    return $self->{flag};
}

########################################################################
package GrowtopiaWorld::WorldObject;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{item_id} = $self->{_io}->read_u2le();
    $self->{x} = $self->{_io}->read_f4le();
    $self->{y} = $self->{_io}->read_f4le();
    $self->{amount} = $self->{_io}->read_u1();
    $self->{flag} = $self->{_io}->read_u1();
    $self->{uid} = $self->{_io}->read_u4le();
}

sub item_id {
    my ($self) = @_;
    return $self->{item_id};
}

sub x {
    my ($self) = @_;
    return $self->{x};
}

sub y {
    my ($self) = @_;
    return $self->{y};
}

sub amount {
    my ($self) = @_;
    return $self->{amount};
}

sub flag {
    my ($self) = @_;
    return $self->{flag};
}

sub uid {
    my ($self) = @_;
    return $self->{uid};
}

########################################################################
package GrowtopiaWorld::WorldTile;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{fg} = $self->{_io}->read_u2le();
    $self->{bg} = $self->{_io}->read_u2le();
    if ( (($self->fg() > 25000) || ($self->bg() > 25000)) ) {
        $self->{invalid_tile_fg_bg_kaitai_crasher} = $self->{_io}->read_bytes_full();
    }
    $self->{parent_block_index} = $self->{_io}->read_u2le();
    $self->{flag} = $self->{_io}->read_u2le();
    if (($self->flag() & 2) == 2) {
        $self->{parent_lock} = $self->{_io}->read_u2le();
    }
    if (($self->flag() & 1) == 1) {
        $self->{extra_data_type} = $self->{_io}->read_u1();
    }
    if (($self->flag() & 1) == 1) {
        my $_on = $self->extra_data_type();
        if ($_on == 1) {
            $self->{tile_extra} = GrowtopiaWorld::DoorExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 10) {
            $self->{tile_extra} = GrowtopiaWorld::AchievementBlockExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 11) {
            $self->{tile_extra} = GrowtopiaWorld::HeartMonitorExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 14) {
            $self->{tile_extra} = GrowtopiaWorld::MannequinExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 15) {
            $self->{tile_extra} = GrowtopiaWorld::MagicEggExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 16) {
            $self->{tile_extra} = GrowtopiaWorld::GameGraveExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 17) {
            $self->{tile_extra} = GrowtopiaWorld::GameGeneratorExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 18) {
            $self->{tile_extra} = GrowtopiaWorld::XenoniteExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 19) {
            $self->{tile_extra} = GrowtopiaWorld::PhoneBoothExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 2) {
            $self->{tile_extra} = GrowtopiaWorld::SignExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 20) {
            $self->{tile_extra} = GrowtopiaWorld::CrystalExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 21) {
            $self->{tile_extra} = GrowtopiaWorld::CrimeInProgressExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 22) {
            $self->{tile_extra} = GrowtopiaWorld::SpotlightExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 23) {
            $self->{tile_extra} = GrowtopiaWorld::DisplayBlockExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 24) {
            $self->{tile_extra} = GrowtopiaWorld::VendingMachineExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 25) {
            $self->{tile_extra} = GrowtopiaWorld::FishTankPortExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 26) {
            $self->{tile_extra} = GrowtopiaWorld::SolarCollectorExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 27) {
            $self->{tile_extra} = GrowtopiaWorld::ForgeExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 28) {
            $self->{tile_extra} = GrowtopiaWorld::GivingTreeExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 3) {
            $self->{tile_extra} = GrowtopiaWorld::LockExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 30) {
            $self->{tile_extra} = GrowtopiaWorld::SteamOrganExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 31) {
            $self->{tile_extra} = GrowtopiaWorld::SilkWormExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 32) {
            $self->{tile_extra} = GrowtopiaWorld::SewingMachineExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 33) {
            $self->{tile_extra} = GrowtopiaWorld::CountryFlagExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 34) {
            $self->{tile_extra} = GrowtopiaWorld::LobsterTrapExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 35) {
            $self->{tile_extra} = GrowtopiaWorld::PaintingEaselExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 36) {
            $self->{tile_extra} = GrowtopiaWorld::PetBattleCageExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 37) {
            $self->{tile_extra} = GrowtopiaWorld::PetTrainerExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 38) {
            $self->{tile_extra} = GrowtopiaWorld::SteamEngineExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 39) {
            $self->{tile_extra} = GrowtopiaWorld::LockBotExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 4) {
            $self->{tile_extra} = GrowtopiaWorld::SeedExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 40) {
            $self->{tile_extra} = GrowtopiaWorld::WeatherMachine1Extra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 41) {
            $self->{tile_extra} = GrowtopiaWorld::SpiritStorageUnitExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 42) {
            $self->{tile_extra} = GrowtopiaWorld::DataBedrockExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 43) {
            $self->{tile_extra} = GrowtopiaWorld::ShelfExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 44) {
            $self->{tile_extra} = GrowtopiaWorld::VipEntranceExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 45) {
            $self->{tile_extra} = GrowtopiaWorld::ChallengeTimerExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 47) {
            $self->{tile_extra} = GrowtopiaWorld::FishWallMountExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 48) {
            $self->{tile_extra} = GrowtopiaWorld::PortraitExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 49) {
            $self->{tile_extra} = GrowtopiaWorld::WeatherMachine2Extra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 50) {
            $self->{tile_extra} = GrowtopiaWorld::FossilPrepStationExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 51) {
            $self->{tile_extra} = GrowtopiaWorld::DnaExtractorExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 52) {
            $self->{tile_extra} = GrowtopiaWorld::HowlerExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 53) {
            $self->{tile_extra} = GrowtopiaWorld::ChemsynthTankExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 54) {
            $self->{tile_extra} = GrowtopiaWorld::StorageBoxXtremeExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 55) {
            $self->{tile_extra} = GrowtopiaWorld::CookingOvenExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 56) {
            $self->{tile_extra} = GrowtopiaWorld::AudioRackExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 57) {
            $self->{tile_extra} = GrowtopiaWorld::GeigerChargerExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 58) {
            $self->{tile_extra} = GrowtopiaWorld::AdventureBeginsExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 59) {
            $self->{tile_extra} = GrowtopiaWorld::TombRobberExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 60) {
            $self->{tile_extra} = GrowtopiaWorld::BalloonOMaticExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 61) {
            $self->{tile_extra} = GrowtopiaWorld::TrainingPortExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 62) {
            $self->{tile_extra} = GrowtopiaWorld::ItemSuckerExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 63) {
            $self->{tile_extra} = GrowtopiaWorld::CybotExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 65) {
            $self->{tile_extra} = GrowtopiaWorld::GuildExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 66) {
            $self->{tile_extra} = GrowtopiaWorld::GrowscanExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 67) {
            $self->{tile_extra} = GrowtopiaWorld::ContainmentFieldPowerNodeExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 68) {
            $self->{tile_extra} = GrowtopiaWorld::SpiritBoardExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 69) {
            $self->{tile_extra} = GrowtopiaWorld::TesseractManipulatorExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 72) {
            $self->{tile_extra} = GrowtopiaWorld::StormyCloudExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 73) {
            $self->{tile_extra} = GrowtopiaWorld::TemporaryPlatformExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 74) {
            $self->{tile_extra} = GrowtopiaWorld::SafeVaultExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 75) {
            $self->{tile_extra} = GrowtopiaWorld::AngelicCountingCloudExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 77) {
            $self->{tile_extra} = GrowtopiaWorld::InfinityWeatherMachineExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 79) {
            $self->{tile_extra} = GrowtopiaWorld::PineappleGuzzlerExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 8) {
            $self->{tile_extra} = GrowtopiaWorld::DiceExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 80) {
            $self->{tile_extra} = GrowtopiaWorld::KrakensGalaticBlockExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 81) {
            $self->{tile_extra} = GrowtopiaWorld::FriendsEntranceExtra->new($self->{_io}, $self, $self->{_root});
        }
        elsif ($_on == 9) {
            $self->{tile_extra} = GrowtopiaWorld::ProviderExtra->new($self->{_io}, $self, $self->{_root});
        }
        else {
            $self->{tile_extra} = GrowtopiaWorld::UnknownExtra->new($self->{_io}, $self, $self->{_root});
        }
    }
    if ( (( ((($self->flag() & 1) == 1) && ($self->extra_data_type() == 36)) ) || ($self->fg() == 15546) || ($self->fg() == 14666) || ($self->fg() == 14962) || ($self->fg() == 14662)) ) {
        $self->{cbor_data} = GrowtopiaWorld::CborData->new($self->{_io}, $self, $self->{_root});
    }
}

sub fg {
    my ($self) = @_;
    return $self->{fg};
}

sub bg {
    my ($self) = @_;
    return $self->{bg};
}

sub invalid_tile_fg_bg_kaitai_crasher {
    my ($self) = @_;
    return $self->{invalid_tile_fg_bg_kaitai_crasher};
}

sub parent_block_index {
    my ($self) = @_;
    return $self->{parent_block_index};
}

sub flag {
    my ($self) = @_;
    return $self->{flag};
}

sub parent_lock {
    my ($self) = @_;
    return $self->{parent_lock};
}

sub extra_data_type {
    my ($self) = @_;
    return $self->{extra_data_type};
}

sub tile_extra {
    my ($self) = @_;
    return $self->{tile_extra};
}

sub cbor_data {
    my ($self) = @_;
    return $self->{cbor_data};
}

########################################################################
package GrowtopiaWorld::XenoniteExtra;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{unk1} = $self->{_io}->read_bytes(5);
}

sub unk1 {
    my ($self) = @_;
    return $self->{unk1};
}

1;
