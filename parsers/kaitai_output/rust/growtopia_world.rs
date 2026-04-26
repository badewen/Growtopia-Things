// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#![allow(unused_imports)]
#![allow(non_snake_case)]
#![allow(non_camel_case_types)]
#![allow(irrefutable_let_patterns)]
#![allow(unused_comparisons)]

extern crate kaitai;
use kaitai::*;
use std::convert::{TryFrom, TryInto};
use std::cell::{Ref, Cell, RefCell};
use std::rc::{Rc, Weak};

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld>,
    pub _self: SharedType<Self>,
    version: RefCell<u16>,
    unk1: RefCell<u32>,
    name: RefCell<OptRc<GrowtopiaWorld_GtStr>>,
    width: RefCell<u32>,
    height: RefCell<u32>,
    num_tiles: RefCell<u32>,
    unk2: RefCell<Vec<u8>>,
    tiles: RefCell<Vec<OptRc<GrowtopiaWorld_WorldTile>>>,
    unk3: RefCell<Vec<u8>>,
    num_objects: RefCell<u32>,
    last_object_uid: RefCell<u32>,
    objects: RefCell<Vec<OptRc<GrowtopiaWorld_WorldObject>>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.version.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.unk1.borrow_mut() = _io.read_u4le()?.into();
        let t = Self::read_into::<_, GrowtopiaWorld_GtStr>(&*_io, Some(self_rc._root.clone()), None)?.into();
        *self_rc.name.borrow_mut() = t;
        *self_rc.width.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.height.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.num_tiles.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.unk2.borrow_mut() = _io.read_bytes(5 as usize)?.into();
        *self_rc.tiles.borrow_mut() = Vec::new();
        let l_tiles = *self_rc.num_tiles();
        for _i in 0..l_tiles {
            let t = Self::read_into::<_, GrowtopiaWorld_WorldTile>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
            self_rc.tiles.borrow_mut().push(t);
        }
        *self_rc.unk3.borrow_mut() = _io.read_bytes(12 as usize)?.into();
        *self_rc.num_objects.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.last_object_uid.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.objects.borrow_mut() = Vec::new();
        let l_objects = *self_rc.num_objects();
        for _i in 0..l_objects {
            let t = Self::read_into::<_, GrowtopiaWorld_WorldObject>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
            self_rc.objects.borrow_mut().push(t);
        }
        Ok(())
    }
}
impl GrowtopiaWorld {
}
impl GrowtopiaWorld {
    pub fn version(&self) -> Ref<'_, u16> {
        self.version.borrow()
    }
}
impl GrowtopiaWorld {
    pub fn unk1(&self) -> Ref<'_, u32> {
        self.unk1.borrow()
    }
}
impl GrowtopiaWorld {
    pub fn name(&self) -> Ref<'_, OptRc<GrowtopiaWorld_GtStr>> {
        self.name.borrow()
    }
}
impl GrowtopiaWorld {
    pub fn width(&self) -> Ref<'_, u32> {
        self.width.borrow()
    }
}
impl GrowtopiaWorld {
    pub fn height(&self) -> Ref<'_, u32> {
        self.height.borrow()
    }
}
impl GrowtopiaWorld {
    pub fn num_tiles(&self) -> Ref<'_, u32> {
        self.num_tiles.borrow()
    }
}
impl GrowtopiaWorld {
    pub fn unk2(&self) -> Ref<'_, Vec<u8>> {
        self.unk2.borrow()
    }
}
impl GrowtopiaWorld {
    pub fn tiles(&self) -> Ref<'_, Vec<OptRc<GrowtopiaWorld_WorldTile>>> {
        self.tiles.borrow()
    }
}
impl GrowtopiaWorld {
    pub fn unk3(&self) -> Ref<'_, Vec<u8>> {
        self.unk3.borrow()
    }
}
impl GrowtopiaWorld {
    pub fn num_objects(&self) -> Ref<'_, u32> {
        self.num_objects.borrow()
    }
}
impl GrowtopiaWorld {
    pub fn last_object_uid(&self) -> Ref<'_, u32> {
        self.last_object_uid.borrow()
    }
}
impl GrowtopiaWorld {
    pub fn objects(&self) -> Ref<'_, Vec<OptRc<GrowtopiaWorld_WorldObject>>> {
        self.objects.borrow()
    }
}
impl GrowtopiaWorld {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_ARGB {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_SilkWormExtra>,
    pub _self: SharedType<Self>,
    a: RefCell<u8>,
    r: RefCell<u8>,
    g: RefCell<u8>,
    b: RefCell<u8>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_ARGB {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_SilkWormExtra;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.a.borrow_mut() = _io.read_u1()?.into();
        *self_rc.r.borrow_mut() = _io.read_u1()?.into();
        *self_rc.g.borrow_mut() = _io.read_u1()?.into();
        *self_rc.b.borrow_mut() = _io.read_u1()?.into();
        Ok(())
    }
}
impl GrowtopiaWorld_ARGB {
}
impl GrowtopiaWorld_ARGB {
    pub fn a(&self) -> Ref<'_, u8> {
        self.a.borrow()
    }
}
impl GrowtopiaWorld_ARGB {
    pub fn r(&self) -> Ref<'_, u8> {
        self.r.borrow()
    }
}
impl GrowtopiaWorld_ARGB {
    pub fn g(&self) -> Ref<'_, u8> {
        self.g.borrow()
    }
}
impl GrowtopiaWorld_ARGB {
    pub fn b(&self) -> Ref<'_, u8> {
        self.b.borrow()
    }
}
impl GrowtopiaWorld_ARGB {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_AchievementBlockExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    unk1: RefCell<u32>,
    achievement_id: RefCell<u8>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_AchievementBlockExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.unk1.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.achievement_id.borrow_mut() = _io.read_u1()?.into();
        Ok(())
    }
}
impl GrowtopiaWorld_AchievementBlockExtra {
}
impl GrowtopiaWorld_AchievementBlockExtra {
    pub fn unk1(&self) -> Ref<'_, u32> {
        self.unk1.borrow()
    }
}
impl GrowtopiaWorld_AchievementBlockExtra {
    pub fn achievement_id(&self) -> Ref<'_, u8> {
        self.achievement_id.borrow()
    }
}
impl GrowtopiaWorld_AchievementBlockExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_AdventureBeginsExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_AdventureBeginsExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        Ok(())
    }
}
impl GrowtopiaWorld_AdventureBeginsExtra {
}
impl GrowtopiaWorld_AdventureBeginsExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_AngelicCountingCloudExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    state: RefCell<GrowtopiaWorld_AngelicCountingCloudExtra_States>,
    unk1: RefCell<u16>,
    ascii_code: RefCell<u8>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_AngelicCountingCloudExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.state.borrow_mut() = (_io.read_u4le()? as i64).try_into()?;
        *self_rc.unk1.borrow_mut() = _io.read_u2le()?.into();
        if *self_rc.state() == GrowtopiaWorld_AngelicCountingCloudExtra_States::DoneRaffling {
            *self_rc.ascii_code.borrow_mut() = _io.read_u1()?.into();
        }
        Ok(())
    }
}
impl GrowtopiaWorld_AngelicCountingCloudExtra {
}
impl GrowtopiaWorld_AngelicCountingCloudExtra {
    pub fn state(&self) -> Ref<'_, GrowtopiaWorld_AngelicCountingCloudExtra_States> {
        self.state.borrow()
    }
}
impl GrowtopiaWorld_AngelicCountingCloudExtra {
    pub fn unk1(&self) -> Ref<'_, u16> {
        self.unk1.borrow()
    }
}
impl GrowtopiaWorld_AngelicCountingCloudExtra {
    pub fn ascii_code(&self) -> Ref<'_, u8> {
        self.ascii_code.borrow()
    }
}
impl GrowtopiaWorld_AngelicCountingCloudExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
#[derive(Debug, PartialEq, Clone)]
pub enum GrowtopiaWorld_AngelicCountingCloudExtra_States {
    Raffling,
    DoneRaffling,
    Unknown(i64),
}

impl TryFrom<i64> for GrowtopiaWorld_AngelicCountingCloudExtra_States {
    type Error = KError;
    fn try_from(flag: i64) -> KResult<GrowtopiaWorld_AngelicCountingCloudExtra_States> {
        match flag {
            1 => Ok(GrowtopiaWorld_AngelicCountingCloudExtra_States::Raffling),
            2 => Ok(GrowtopiaWorld_AngelicCountingCloudExtra_States::DoneRaffling),
            _ => Ok(GrowtopiaWorld_AngelicCountingCloudExtra_States::Unknown(flag)),
        }
    }
}

impl From<&GrowtopiaWorld_AngelicCountingCloudExtra_States> for i64 {
    fn from(v: &GrowtopiaWorld_AngelicCountingCloudExtra_States) -> Self {
        match *v {
            GrowtopiaWorld_AngelicCountingCloudExtra_States::Raffling => 1,
            GrowtopiaWorld_AngelicCountingCloudExtra_States::DoneRaffling => 2,
            GrowtopiaWorld_AngelicCountingCloudExtra_States::Unknown(v) => v
        }
    }
}

impl Default for GrowtopiaWorld_AngelicCountingCloudExtra_States {
    fn default() -> Self { GrowtopiaWorld_AngelicCountingCloudExtra_States::Unknown(0) }
}


#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_AudioRackExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    note: RefCell<OptRc<GrowtopiaWorld_GtStr>>,
    volume: RefCell<u32>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_AudioRackExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        let t = Self::read_into::<_, GrowtopiaWorld_GtStr>(&*_io, Some(self_rc._root.clone()), None)?.into();
        *self_rc.note.borrow_mut() = t;
        *self_rc.volume.borrow_mut() = _io.read_u4le()?.into();
        Ok(())
    }
}
impl GrowtopiaWorld_AudioRackExtra {
}
impl GrowtopiaWorld_AudioRackExtra {
    pub fn note(&self) -> Ref<'_, OptRc<GrowtopiaWorld_GtStr>> {
        self.note.borrow()
    }
}
impl GrowtopiaWorld_AudioRackExtra {
    pub fn volume(&self) -> Ref<'_, u32> {
        self.volume.borrow()
    }
}
impl GrowtopiaWorld_AudioRackExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_BalloonOMaticExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    total_rarity: RefCell<u32>,
    team_type: RefCell<u8>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_BalloonOMaticExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.total_rarity.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.team_type.borrow_mut() = _io.read_u1()?.into();
        Ok(())
    }
}
impl GrowtopiaWorld_BalloonOMaticExtra {
}
impl GrowtopiaWorld_BalloonOMaticExtra {
    pub fn total_rarity(&self) -> Ref<'_, u32> {
        self.total_rarity.borrow()
    }
}
impl GrowtopiaWorld_BalloonOMaticExtra {
    pub fn team_type(&self) -> Ref<'_, u8> {
        self.team_type.borrow()
    }
}
impl GrowtopiaWorld_BalloonOMaticExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_CborData {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    len_data: RefCell<u32>,
    data: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_CborData {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.len_data.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.data.borrow_mut() = _io.read_bytes(*self_rc.len_data() as usize)?.into();
        Ok(())
    }
}
impl GrowtopiaWorld_CborData {
}
impl GrowtopiaWorld_CborData {
    pub fn len_data(&self) -> Ref<'_, u32> {
        self.len_data.borrow()
    }
}
impl GrowtopiaWorld_CborData {
    pub fn data(&self) -> Ref<'_, Vec<u8>> {
        self.data.borrow()
    }
}
impl GrowtopiaWorld_CborData {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_ChallengeTimerExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_ChallengeTimerExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        Ok(())
    }
}
impl GrowtopiaWorld_ChallengeTimerExtra {
}
impl GrowtopiaWorld_ChallengeTimerExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_ChemsynthTankExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    current_chem_id: RefCell<u32>,
    supposed_chem_id: RefCell<u32>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_ChemsynthTankExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.current_chem_id.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.supposed_chem_id.borrow_mut() = _io.read_u4le()?.into();
        Ok(())
    }
}
impl GrowtopiaWorld_ChemsynthTankExtra {
}
impl GrowtopiaWorld_ChemsynthTankExtra {
    pub fn current_chem_id(&self) -> Ref<'_, u32> {
        self.current_chem_id.borrow()
    }
}
impl GrowtopiaWorld_ChemsynthTankExtra {
    pub fn supposed_chem_id(&self) -> Ref<'_, u32> {
        self.supposed_chem_id.borrow()
    }
}
impl GrowtopiaWorld_ChemsynthTankExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_ContainmentFieldPowerNodeExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    time_ms: RefCell<u32>,
    num_linked_nodes: RefCell<u32>,
    linked_nodes: RefCell<Vec<u32>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_ContainmentFieldPowerNodeExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.time_ms.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.num_linked_nodes.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.linked_nodes.borrow_mut() = Vec::new();
        let l_linked_nodes = *self_rc.num_linked_nodes();
        for _i in 0..l_linked_nodes {
            self_rc.linked_nodes.borrow_mut().push(_io.read_u4le()?.into());
        }
        Ok(())
    }
}
impl GrowtopiaWorld_ContainmentFieldPowerNodeExtra {
}
impl GrowtopiaWorld_ContainmentFieldPowerNodeExtra {
    pub fn time_ms(&self) -> Ref<'_, u32> {
        self.time_ms.borrow()
    }
}
impl GrowtopiaWorld_ContainmentFieldPowerNodeExtra {
    pub fn num_linked_nodes(&self) -> Ref<'_, u32> {
        self.num_linked_nodes.borrow()
    }
}
impl GrowtopiaWorld_ContainmentFieldPowerNodeExtra {
    pub fn linked_nodes(&self) -> Ref<'_, Vec<u32>> {
        self.linked_nodes.borrow()
    }
}
impl GrowtopiaWorld_ContainmentFieldPowerNodeExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_CookingOvenExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    temp_level: RefCell<u32>,
    ingredient_list_size: RefCell<u32>,
    ingredients: RefCell<Vec<OptRc<GrowtopiaWorld_CookingOvenExtra_Ingredient>>>,
    unk1: RefCell<u32>,
    unk2: RefCell<u32>,
    unk3: RefCell<u32>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_CookingOvenExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.temp_level.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.ingredient_list_size.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.ingredients.borrow_mut() = Vec::new();
        let l_ingredients = ((*self_rc.ingredient_list_size() as u32) / (2 as u32));
        for _i in 0..l_ingredients {
            let t = Self::read_into::<_, GrowtopiaWorld_CookingOvenExtra_Ingredient>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
            self_rc.ingredients.borrow_mut().push(t);
        }
        *self_rc.unk1.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.unk2.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.unk3.borrow_mut() = _io.read_u4le()?.into();
        Ok(())
    }
}
impl GrowtopiaWorld_CookingOvenExtra {
}
impl GrowtopiaWorld_CookingOvenExtra {
    pub fn temp_level(&self) -> Ref<'_, u32> {
        self.temp_level.borrow()
    }
}
impl GrowtopiaWorld_CookingOvenExtra {
    pub fn ingredient_list_size(&self) -> Ref<'_, u32> {
        self.ingredient_list_size.borrow()
    }
}
impl GrowtopiaWorld_CookingOvenExtra {
    pub fn ingredients(&self) -> Ref<'_, Vec<OptRc<GrowtopiaWorld_CookingOvenExtra_Ingredient>>> {
        self.ingredients.borrow()
    }
}
impl GrowtopiaWorld_CookingOvenExtra {
    pub fn unk1(&self) -> Ref<'_, u32> {
        self.unk1.borrow()
    }
}
impl GrowtopiaWorld_CookingOvenExtra {
    pub fn unk2(&self) -> Ref<'_, u32> {
        self.unk2.borrow()
    }
}
impl GrowtopiaWorld_CookingOvenExtra {
    pub fn unk3(&self) -> Ref<'_, u32> {
        self.unk3.borrow()
    }
}
impl GrowtopiaWorld_CookingOvenExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_CookingOvenExtra_Ingredient {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_CookingOvenExtra>,
    pub _self: SharedType<Self>,
    item_id: RefCell<u32>,
    time_added: RefCell<u32>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_CookingOvenExtra_Ingredient {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_CookingOvenExtra;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.item_id.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.time_added.borrow_mut() = _io.read_u4le()?.into();
        Ok(())
    }
}
impl GrowtopiaWorld_CookingOvenExtra_Ingredient {
}
impl GrowtopiaWorld_CookingOvenExtra_Ingredient {
    pub fn item_id(&self) -> Ref<'_, u32> {
        self.item_id.borrow()
    }
}
impl GrowtopiaWorld_CookingOvenExtra_Ingredient {
    pub fn time_added(&self) -> Ref<'_, u32> {
        self.time_added.borrow()
    }
}
impl GrowtopiaWorld_CookingOvenExtra_Ingredient {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_CountryFlagExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    country: RefCell<OptRc<GrowtopiaWorld_GtStr>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_CountryFlagExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if ((*_prc.as_ref().unwrap().fg() as i32) == (3394 as i32)) {
            let t = Self::read_into::<_, GrowtopiaWorld_GtStr>(&*_io, Some(self_rc._root.clone()), None)?.into();
            *self_rc.country.borrow_mut() = t;
        }
        Ok(())
    }
}
impl GrowtopiaWorld_CountryFlagExtra {
}
impl GrowtopiaWorld_CountryFlagExtra {
    pub fn country(&self) -> Ref<'_, OptRc<GrowtopiaWorld_GtStr>> {
        self.country.borrow()
    }
}
impl GrowtopiaWorld_CountryFlagExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_CrimeInProgressExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    crime_name: RefCell<OptRc<GrowtopiaWorld_GtStr>>,
    crime_index: RefCell<u32>,
    unk1: RefCell<u8>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_CrimeInProgressExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        let t = Self::read_into::<_, GrowtopiaWorld_GtStr>(&*_io, Some(self_rc._root.clone()), None)?.into();
        *self_rc.crime_name.borrow_mut() = t;
        *self_rc.crime_index.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.unk1.borrow_mut() = _io.read_u1()?.into();
        Ok(())
    }
}
impl GrowtopiaWorld_CrimeInProgressExtra {
}
impl GrowtopiaWorld_CrimeInProgressExtra {
    pub fn crime_name(&self) -> Ref<'_, OptRc<GrowtopiaWorld_GtStr>> {
        self.crime_name.borrow()
    }
}
impl GrowtopiaWorld_CrimeInProgressExtra {
    pub fn crime_index(&self) -> Ref<'_, u32> {
        self.crime_index.borrow()
    }
}
impl GrowtopiaWorld_CrimeInProgressExtra {
    pub fn unk1(&self) -> Ref<'_, u8> {
        self.unk1.borrow()
    }
}
impl GrowtopiaWorld_CrimeInProgressExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_CrystalExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    num_crystals: RefCell<u16>,
    crystals: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_CrystalExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.num_crystals.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.crystals.borrow_mut() = Vec::new();
        let l_crystals = *self_rc.num_crystals();
        for _i in 0..l_crystals {
            self_rc.crystals.borrow_mut().push(_io.read_u1()?.into());
        }
        Ok(())
    }
}
impl GrowtopiaWorld_CrystalExtra {
}
impl GrowtopiaWorld_CrystalExtra {
    pub fn num_crystals(&self) -> Ref<'_, u16> {
        self.num_crystals.borrow()
    }
}
impl GrowtopiaWorld_CrystalExtra {
    pub fn crystals(&self) -> Ref<'_, Vec<u8>> {
        self.crystals.borrow()
    }
}
impl GrowtopiaWorld_CrystalExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_CybotExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    num_commands: RefCell<u32>,
    commands: RefCell<Vec<OptRc<GrowtopiaWorld_CybotExtra_Command>>>,
    timer: RefCell<u32>,
    is_activated: RefCell<u32>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_CybotExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.num_commands.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.commands.borrow_mut() = Vec::new();
        let l_commands = *self_rc.num_commands();
        for _i in 0..l_commands {
            let t = Self::read_into::<_, GrowtopiaWorld_CybotExtra_Command>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
            self_rc.commands.borrow_mut().push(t);
        }
        *self_rc.timer.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.is_activated.borrow_mut() = _io.read_u4le()?.into();
        Ok(())
    }
}
impl GrowtopiaWorld_CybotExtra {
}
impl GrowtopiaWorld_CybotExtra {
    pub fn num_commands(&self) -> Ref<'_, u32> {
        self.num_commands.borrow()
    }
}
impl GrowtopiaWorld_CybotExtra {
    pub fn commands(&self) -> Ref<'_, Vec<OptRc<GrowtopiaWorld_CybotExtra_Command>>> {
        self.commands.borrow()
    }
}
impl GrowtopiaWorld_CybotExtra {
    pub fn timer(&self) -> Ref<'_, u32> {
        self.timer.borrow()
    }
}
impl GrowtopiaWorld_CybotExtra {
    pub fn is_activated(&self) -> Ref<'_, u32> {
        self.is_activated.borrow()
    }
}
impl GrowtopiaWorld_CybotExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_CybotExtra_Command {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_CybotExtra>,
    pub _self: SharedType<Self>,
    command_id: RefCell<u32>,
    is_command_used: RefCell<u32>,
    unk1: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_CybotExtra_Command {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_CybotExtra;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.command_id.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.is_command_used.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.unk1.borrow_mut() = _io.read_bytes(7 as usize)?.into();
        Ok(())
    }
}
impl GrowtopiaWorld_CybotExtra_Command {
}
impl GrowtopiaWorld_CybotExtra_Command {
    pub fn command_id(&self) -> Ref<'_, u32> {
        self.command_id.borrow()
    }
}
impl GrowtopiaWorld_CybotExtra_Command {
    pub fn is_command_used(&self) -> Ref<'_, u32> {
        self.is_command_used.borrow()
    }
}
impl GrowtopiaWorld_CybotExtra_Command {
    pub fn unk1(&self) -> Ref<'_, Vec<u8>> {
        self.unk1.borrow()
    }
}
impl GrowtopiaWorld_CybotExtra_Command {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_DataBedrockExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    unk1: RefCell<Vec<u8>>,
    pad1: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_DataBedrockExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.unk1.borrow_mut() = _io.read_bytes(17 as usize)?.into();
        *self_rc.pad1.borrow_mut() = _io.read_bytes(4 as usize)?.into();
        Ok(())
    }
}
impl GrowtopiaWorld_DataBedrockExtra {
}
impl GrowtopiaWorld_DataBedrockExtra {
    pub fn unk1(&self) -> Ref<'_, Vec<u8>> {
        self.unk1.borrow()
    }
}
impl GrowtopiaWorld_DataBedrockExtra {
    pub fn pad1(&self) -> Ref<'_, Vec<u8>> {
        self.pad1.borrow()
    }
}
impl GrowtopiaWorld_DataBedrockExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_DiceExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    symbol: RefCell<u8>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_DiceExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.symbol.borrow_mut() = _io.read_u1()?.into();
        Ok(())
    }
}
impl GrowtopiaWorld_DiceExtra {
}
impl GrowtopiaWorld_DiceExtra {
    pub fn symbol(&self) -> Ref<'_, u8> {
        self.symbol.borrow()
    }
}
impl GrowtopiaWorld_DiceExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_DisplayBlockExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    item_id: RefCell<u32>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_DisplayBlockExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.item_id.borrow_mut() = _io.read_u4le()?.into();
        Ok(())
    }
}
impl GrowtopiaWorld_DisplayBlockExtra {
}
impl GrowtopiaWorld_DisplayBlockExtra {
    pub fn item_id(&self) -> Ref<'_, u32> {
        self.item_id.borrow()
    }
}
impl GrowtopiaWorld_DisplayBlockExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_DnaExtractorExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_DnaExtractorExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        Ok(())
    }
}
impl GrowtopiaWorld_DnaExtractorExtra {
}
impl GrowtopiaWorld_DnaExtractorExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_DoorExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    label: RefCell<OptRc<GrowtopiaWorld_GtStr>>,
    flags: RefCell<u8>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_DoorExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        let t = Self::read_into::<_, GrowtopiaWorld_GtStr>(&*_io, Some(self_rc._root.clone()), None)?.into();
        *self_rc.label.borrow_mut() = t;
        *self_rc.flags.borrow_mut() = _io.read_u1()?.into();
        Ok(())
    }
}
impl GrowtopiaWorld_DoorExtra {
}
impl GrowtopiaWorld_DoorExtra {
    pub fn label(&self) -> Ref<'_, OptRc<GrowtopiaWorld_GtStr>> {
        self.label.borrow()
    }
}
impl GrowtopiaWorld_DoorExtra {
    pub fn flags(&self) -> Ref<'_, u8> {
        self.flags.borrow()
    }
}
impl GrowtopiaWorld_DoorExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_FishTankPortExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    flags: RefCell<u8>,
    fish_data_length: RefCell<u32>,
    fishes: RefCell<Vec<OptRc<GrowtopiaWorld_FishTankPortExtra_FishInfo>>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_FishTankPortExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.flags.borrow_mut() = _io.read_u1()?.into();
        *self_rc.fish_data_length.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.fishes.borrow_mut() = Vec::new();
        let l_fishes = ((*self_rc.fish_data_length() as u32) / (2 as u32));
        for _i in 0..l_fishes {
            let t = Self::read_into::<_, GrowtopiaWorld_FishTankPortExtra_FishInfo>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
            self_rc.fishes.borrow_mut().push(t);
        }
        Ok(())
    }
}
impl GrowtopiaWorld_FishTankPortExtra {
}
impl GrowtopiaWorld_FishTankPortExtra {
    pub fn flags(&self) -> Ref<'_, u8> {
        self.flags.borrow()
    }
}
impl GrowtopiaWorld_FishTankPortExtra {
    pub fn fish_data_length(&self) -> Ref<'_, u32> {
        self.fish_data_length.borrow()
    }
}
impl GrowtopiaWorld_FishTankPortExtra {
    pub fn fishes(&self) -> Ref<'_, Vec<OptRc<GrowtopiaWorld_FishTankPortExtra_FishInfo>>> {
        self.fishes.borrow()
    }
}
impl GrowtopiaWorld_FishTankPortExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_FishTankPortExtra_FishInfo {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_FishTankPortExtra>,
    pub _self: SharedType<Self>,
    item_id: RefCell<u32>,
    lbs: RefCell<u32>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_FishTankPortExtra_FishInfo {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_FishTankPortExtra;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.item_id.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.lbs.borrow_mut() = _io.read_u4le()?.into();
        Ok(())
    }
}
impl GrowtopiaWorld_FishTankPortExtra_FishInfo {
}
impl GrowtopiaWorld_FishTankPortExtra_FishInfo {
    pub fn item_id(&self) -> Ref<'_, u32> {
        self.item_id.borrow()
    }
}
impl GrowtopiaWorld_FishTankPortExtra_FishInfo {
    pub fn lbs(&self) -> Ref<'_, u32> {
        self.lbs.borrow()
    }
}
impl GrowtopiaWorld_FishTankPortExtra_FishInfo {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_FishWallMountExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    label: RefCell<OptRc<GrowtopiaWorld_GtStr>>,
    item_id: RefCell<u32>,
    lbs: RefCell<u8>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_FishWallMountExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        let t = Self::read_into::<_, GrowtopiaWorld_GtStr>(&*_io, Some(self_rc._root.clone()), None)?.into();
        *self_rc.label.borrow_mut() = t;
        *self_rc.item_id.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.lbs.borrow_mut() = _io.read_u1()?.into();
        Ok(())
    }
}
impl GrowtopiaWorld_FishWallMountExtra {
}
impl GrowtopiaWorld_FishWallMountExtra {
    pub fn label(&self) -> Ref<'_, OptRc<GrowtopiaWorld_GtStr>> {
        self.label.borrow()
    }
}
impl GrowtopiaWorld_FishWallMountExtra {
    pub fn item_id(&self) -> Ref<'_, u32> {
        self.item_id.borrow()
    }
}
impl GrowtopiaWorld_FishWallMountExtra {
    pub fn lbs(&self) -> Ref<'_, u8> {
        self.lbs.borrow()
    }
}
impl GrowtopiaWorld_FishWallMountExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_ForgeExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    temperature: RefCell<u32>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_ForgeExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.temperature.borrow_mut() = _io.read_u4le()?.into();
        Ok(())
    }
}
impl GrowtopiaWorld_ForgeExtra {
}
impl GrowtopiaWorld_ForgeExtra {
    pub fn temperature(&self) -> Ref<'_, u32> {
        self.temperature.borrow()
    }
}
impl GrowtopiaWorld_ForgeExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_FossilPrepStationExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    unk1: RefCell<u32>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_FossilPrepStationExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.unk1.borrow_mut() = _io.read_u4le()?.into();
        Ok(())
    }
}
impl GrowtopiaWorld_FossilPrepStationExtra {
}
impl GrowtopiaWorld_FossilPrepStationExtra {
    pub fn unk1(&self) -> Ref<'_, u32> {
        self.unk1.borrow()
    }
}
impl GrowtopiaWorld_FossilPrepStationExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_FriendsEntranceExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    owner_userid: RefCell<u32>,
    unk1: RefCell<Vec<u8>>,
    num_allowed_friends_userid: RefCell<u16>,
    allowed_friends_userid: RefCell<Vec<u32>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_FriendsEntranceExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.owner_userid.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.unk1.borrow_mut() = _io.read_bytes(2 as usize)?.into();
        *self_rc.num_allowed_friends_userid.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.allowed_friends_userid.borrow_mut() = Vec::new();
        let l_allowed_friends_userid = *self_rc.num_allowed_friends_userid();
        for _i in 0..l_allowed_friends_userid {
            self_rc.allowed_friends_userid.borrow_mut().push(_io.read_u4le()?.into());
        }
        Ok(())
    }
}
impl GrowtopiaWorld_FriendsEntranceExtra {
}
impl GrowtopiaWorld_FriendsEntranceExtra {
    pub fn owner_userid(&self) -> Ref<'_, u32> {
        self.owner_userid.borrow()
    }
}
impl GrowtopiaWorld_FriendsEntranceExtra {
    pub fn unk1(&self) -> Ref<'_, Vec<u8>> {
        self.unk1.borrow()
    }
}
impl GrowtopiaWorld_FriendsEntranceExtra {
    pub fn num_allowed_friends_userid(&self) -> Ref<'_, u16> {
        self.num_allowed_friends_userid.borrow()
    }
}
impl GrowtopiaWorld_FriendsEntranceExtra {
    pub fn allowed_friends_userid(&self) -> Ref<'_, Vec<u32>> {
        self.allowed_friends_userid.borrow()
    }
}
impl GrowtopiaWorld_FriendsEntranceExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_GameGeneratorExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_GameGeneratorExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        Ok(())
    }
}
impl GrowtopiaWorld_GameGeneratorExtra {
}
impl GrowtopiaWorld_GameGeneratorExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_GameGraveExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    team_id: RefCell<u8>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_GameGraveExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.team_id.borrow_mut() = _io.read_u1()?.into();
        Ok(())
    }
}
impl GrowtopiaWorld_GameGraveExtra {
}
impl GrowtopiaWorld_GameGraveExtra {
    pub fn team_id(&self) -> Ref<'_, u8> {
        self.team_id.borrow()
    }
}
impl GrowtopiaWorld_GameGraveExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_GeigerChargerExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    unk1: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_GeigerChargerExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.unk1.borrow_mut() = _io.read_bytes(4 as usize)?.into();
        Ok(())
    }
}
impl GrowtopiaWorld_GeigerChargerExtra {
}
impl GrowtopiaWorld_GeigerChargerExtra {
    pub fn unk1(&self) -> Ref<'_, Vec<u8>> {
        self.unk1.borrow()
    }
}
impl GrowtopiaWorld_GeigerChargerExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_GivingTreeExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    harvested: RefCell<u8>,
    age: RefCell<u16>,
    unk1: RefCell<u16>,
    decoration_percentage: RefCell<u8>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_GivingTreeExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.harvested.borrow_mut() = _io.read_u1()?.into();
        *self_rc.age.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.unk1.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.decoration_percentage.borrow_mut() = _io.read_u1()?.into();
        Ok(())
    }
}
impl GrowtopiaWorld_GivingTreeExtra {
}
impl GrowtopiaWorld_GivingTreeExtra {
    pub fn harvested(&self) -> Ref<'_, u8> {
        self.harvested.borrow()
    }
}
impl GrowtopiaWorld_GivingTreeExtra {
    pub fn age(&self) -> Ref<'_, u16> {
        self.age.borrow()
    }
}
impl GrowtopiaWorld_GivingTreeExtra {
    pub fn unk1(&self) -> Ref<'_, u16> {
        self.unk1.borrow()
    }
}
impl GrowtopiaWorld_GivingTreeExtra {
    pub fn decoration_percentage(&self) -> Ref<'_, u8> {
        self.decoration_percentage.borrow()
    }
}
impl GrowtopiaWorld_GivingTreeExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_GrowscanExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    unk1: RefCell<u8>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_GrowscanExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.unk1.borrow_mut() = _io.read_u1()?.into();
        Ok(())
    }
}
impl GrowtopiaWorld_GrowscanExtra {
}
impl GrowtopiaWorld_GrowscanExtra {
    pub fn unk1(&self) -> Ref<'_, u8> {
        self.unk1.borrow()
    }
}
impl GrowtopiaWorld_GrowscanExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_GtStr {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<KStructUnit>,
    pub _self: SharedType<Self>,
    len_data: RefCell<u16>,
    str: RefCell<String>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_GtStr {
    type Root = GrowtopiaWorld;
    type Parent = KStructUnit;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.len_data.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.str.borrow_mut() = bytes_to_str(&_io.read_bytes(*self_rc.len_data() as usize)?.into(), "ASCII")?;
        Ok(())
    }
}
impl GrowtopiaWorld_GtStr {
}
impl GrowtopiaWorld_GtStr {
    pub fn len_data(&self) -> Ref<'_, u16> {
        self.len_data.borrow()
    }
}
impl GrowtopiaWorld_GtStr {
    pub fn str(&self) -> Ref<'_, String> {
        self.str.borrow()
    }
}
impl GrowtopiaWorld_GtStr {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_GuildExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    unk1: RefCell<u8>,
    guild_id: RefCell<u32>,
    guild_mascot_fg: RefCell<u16>,
    guild_mascot_bg: RefCell<u16>,
    guild_level: RefCell<u32>,
    guild_flags: RefCell<u32>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_GuildExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.unk1.borrow_mut() = _io.read_u1()?.into();
        *self_rc.guild_id.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.guild_mascot_fg.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.guild_mascot_bg.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.guild_level.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.guild_flags.borrow_mut() = _io.read_u4le()?.into();
        Ok(())
    }
}
impl GrowtopiaWorld_GuildExtra {
}
impl GrowtopiaWorld_GuildExtra {
    pub fn unk1(&self) -> Ref<'_, u8> {
        self.unk1.borrow()
    }
}
impl GrowtopiaWorld_GuildExtra {
    pub fn guild_id(&self) -> Ref<'_, u32> {
        self.guild_id.borrow()
    }
}
impl GrowtopiaWorld_GuildExtra {
    pub fn guild_mascot_fg(&self) -> Ref<'_, u16> {
        self.guild_mascot_fg.borrow()
    }
}
impl GrowtopiaWorld_GuildExtra {
    pub fn guild_mascot_bg(&self) -> Ref<'_, u16> {
        self.guild_mascot_bg.borrow()
    }
}
impl GrowtopiaWorld_GuildExtra {
    pub fn guild_level(&self) -> Ref<'_, u32> {
        self.guild_level.borrow()
    }
}
impl GrowtopiaWorld_GuildExtra {
    pub fn guild_flags(&self) -> Ref<'_, u32> {
        self.guild_flags.borrow()
    }
}
impl GrowtopiaWorld_GuildExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_HeartMonitorExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    user_id: RefCell<u32>,
    grow_id: RefCell<OptRc<GrowtopiaWorld_GtStr>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_HeartMonitorExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.user_id.borrow_mut() = _io.read_u4le()?.into();
        let t = Self::read_into::<_, GrowtopiaWorld_GtStr>(&*_io, Some(self_rc._root.clone()), None)?.into();
        *self_rc.grow_id.borrow_mut() = t;
        Ok(())
    }
}
impl GrowtopiaWorld_HeartMonitorExtra {
}
impl GrowtopiaWorld_HeartMonitorExtra {
    pub fn user_id(&self) -> Ref<'_, u32> {
        self.user_id.borrow()
    }
}
impl GrowtopiaWorld_HeartMonitorExtra {
    pub fn grow_id(&self) -> Ref<'_, OptRc<GrowtopiaWorld_GtStr>> {
        self.grow_id.borrow()
    }
}
impl GrowtopiaWorld_HeartMonitorExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_HowlerExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_HowlerExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        Ok(())
    }
}
impl GrowtopiaWorld_HowlerExtra {
}
impl GrowtopiaWorld_HowlerExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_InfinityWeatherMachineExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    interval_mins: RefCell<u32>,
    num_weather_machines: RefCell<u32>,
    weather_machines: RefCell<Vec<u32>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_InfinityWeatherMachineExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.interval_mins.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.num_weather_machines.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.weather_machines.borrow_mut() = Vec::new();
        let l_weather_machines = *self_rc.num_weather_machines();
        for _i in 0..l_weather_machines {
            self_rc.weather_machines.borrow_mut().push(_io.read_u4le()?.into());
        }
        Ok(())
    }
}
impl GrowtopiaWorld_InfinityWeatherMachineExtra {
}
impl GrowtopiaWorld_InfinityWeatherMachineExtra {
    pub fn interval_mins(&self) -> Ref<'_, u32> {
        self.interval_mins.borrow()
    }
}
impl GrowtopiaWorld_InfinityWeatherMachineExtra {
    pub fn num_weather_machines(&self) -> Ref<'_, u32> {
        self.num_weather_machines.borrow()
    }
}
impl GrowtopiaWorld_InfinityWeatherMachineExtra {
    pub fn weather_machines(&self) -> Ref<'_, Vec<u32>> {
        self.weather_machines.borrow()
    }
}
impl GrowtopiaWorld_InfinityWeatherMachineExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_ItemSuckerExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    item_id: RefCell<u32>,
    item_amount: RefCell<u32>,
    flags: RefCell<u16>,
    item_limit: RefCell<u32>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_ItemSuckerExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.item_id.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.item_amount.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.flags.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.item_limit.borrow_mut() = _io.read_u4le()?.into();
        Ok(())
    }
}
impl GrowtopiaWorld_ItemSuckerExtra {
}
impl GrowtopiaWorld_ItemSuckerExtra {
    pub fn item_id(&self) -> Ref<'_, u32> {
        self.item_id.borrow()
    }
}
impl GrowtopiaWorld_ItemSuckerExtra {
    pub fn item_amount(&self) -> Ref<'_, u32> {
        self.item_amount.borrow()
    }
}
impl GrowtopiaWorld_ItemSuckerExtra {
    pub fn flags(&self) -> Ref<'_, u16> {
        self.flags.borrow()
    }
}
impl GrowtopiaWorld_ItemSuckerExtra {
    pub fn item_limit(&self) -> Ref<'_, u32> {
        self.item_limit.borrow()
    }
}
impl GrowtopiaWorld_ItemSuckerExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_KrakensGalaticBlockExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    pattern_number: RefCell<u8>,
    unk1: RefCell<Vec<u8>>,
    color_rgb: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_KrakensGalaticBlockExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.pattern_number.borrow_mut() = _io.read_u1()?.into();
        *self_rc.unk1.borrow_mut() = _io.read_bytes(4 as usize)?.into();
        *self_rc.color_rgb.borrow_mut() = _io.read_bytes(3 as usize)?.into();
        Ok(())
    }
}
impl GrowtopiaWorld_KrakensGalaticBlockExtra {
}
impl GrowtopiaWorld_KrakensGalaticBlockExtra {
    pub fn pattern_number(&self) -> Ref<'_, u8> {
        self.pattern_number.borrow()
    }
}
impl GrowtopiaWorld_KrakensGalaticBlockExtra {
    pub fn unk1(&self) -> Ref<'_, Vec<u8>> {
        self.unk1.borrow()
    }
}
impl GrowtopiaWorld_KrakensGalaticBlockExtra {
    pub fn color_rgb(&self) -> Ref<'_, Vec<u8>> {
        self.color_rgb.borrow()
    }
}
impl GrowtopiaWorld_KrakensGalaticBlockExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_LobsterTrapExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_LobsterTrapExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        Ok(())
    }
}
impl GrowtopiaWorld_LobsterTrapExtra {
}
impl GrowtopiaWorld_LobsterTrapExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_LockBotExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    age: RefCell<u32>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_LockBotExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.age.borrow_mut() = _io.read_u4le()?.into();
        Ok(())
    }
}
impl GrowtopiaWorld_LockBotExtra {
}
impl GrowtopiaWorld_LockBotExtra {
    pub fn age(&self) -> Ref<'_, u32> {
        self.age.borrow()
    }
}
impl GrowtopiaWorld_LockBotExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_LockExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    flag: RefCell<u8>,
    owner_user_id: RefCell<u32>,
    num_authorized_userids: RefCell<u32>,
    authorized_userids: RefCell<Vec<i32>>,
    minimum_level: RefCell<u32>,
    world_timer: RefCell<u32>,
    guild_id: RefCell<u32>,
    guild_mascot_fg: RefCell<u16>,
    guild_mascot_bg: RefCell<u16>,
    guild_level: RefCell<u32>,
    guild_flags: RefCell<u32>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_LockExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.flag.borrow_mut() = _io.read_u1()?.into();
        *self_rc.owner_user_id.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.num_authorized_userids.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.authorized_userids.borrow_mut() = Vec::new();
        let l_authorized_userids = *self_rc.num_authorized_userids();
        for _i in 0..l_authorized_userids {
            self_rc.authorized_userids.borrow_mut().push(_io.read_s4le()?.into());
        }
        *self_rc.minimum_level.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.world_timer.borrow_mut() = _io.read_u4le()?.into();
        if ((*_prc.as_ref().unwrap().fg() as i32) == (5814 as i32)) {
            *self_rc.guild_id.borrow_mut() = _io.read_u4le()?.into();
        }
        if ((*_prc.as_ref().unwrap().fg() as i32) == (5814 as i32)) {
            *self_rc.guild_mascot_fg.borrow_mut() = _io.read_u2le()?.into();
        }
        if ((*_prc.as_ref().unwrap().fg() as i32) == (5814 as i32)) {
            *self_rc.guild_mascot_bg.borrow_mut() = _io.read_u2le()?.into();
        }
        if ((*_prc.as_ref().unwrap().fg() as i32) == (5814 as i32)) {
            *self_rc.guild_level.borrow_mut() = _io.read_u4le()?.into();
        }
        if ((*_prc.as_ref().unwrap().fg() as i32) == (5814 as i32)) {
            *self_rc.guild_flags.borrow_mut() = _io.read_u4le()?.into();
        }
        Ok(())
    }
}
impl GrowtopiaWorld_LockExtra {
}
impl GrowtopiaWorld_LockExtra {
    pub fn flag(&self) -> Ref<'_, u8> {
        self.flag.borrow()
    }
}
impl GrowtopiaWorld_LockExtra {
    pub fn owner_user_id(&self) -> Ref<'_, u32> {
        self.owner_user_id.borrow()
    }
}
impl GrowtopiaWorld_LockExtra {
    pub fn num_authorized_userids(&self) -> Ref<'_, u32> {
        self.num_authorized_userids.borrow()
    }
}

/**
 * if you encounter negative user id, it is a world BPM. Kaitai doesnt support
 * complex logic yet. 
 */
impl GrowtopiaWorld_LockExtra {
    pub fn authorized_userids(&self) -> Ref<'_, Vec<i32>> {
        self.authorized_userids.borrow()
    }
}
impl GrowtopiaWorld_LockExtra {
    pub fn minimum_level(&self) -> Ref<'_, u32> {
        self.minimum_level.borrow()
    }
}
impl GrowtopiaWorld_LockExtra {
    pub fn world_timer(&self) -> Ref<'_, u32> {
        self.world_timer.borrow()
    }
}
impl GrowtopiaWorld_LockExtra {
    pub fn guild_id(&self) -> Ref<'_, u32> {
        self.guild_id.borrow()
    }
}
impl GrowtopiaWorld_LockExtra {
    pub fn guild_mascot_fg(&self) -> Ref<'_, u16> {
        self.guild_mascot_fg.borrow()
    }
}
impl GrowtopiaWorld_LockExtra {
    pub fn guild_mascot_bg(&self) -> Ref<'_, u16> {
        self.guild_mascot_bg.borrow()
    }
}
impl GrowtopiaWorld_LockExtra {
    pub fn guild_level(&self) -> Ref<'_, u32> {
        self.guild_level.borrow()
    }
}
impl GrowtopiaWorld_LockExtra {
    pub fn guild_flags(&self) -> Ref<'_, u32> {
        self.guild_flags.borrow()
    }
}
impl GrowtopiaWorld_LockExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_MagicEggExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    egg_amount: RefCell<u32>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_MagicEggExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.egg_amount.borrow_mut() = _io.read_u4le()?.into();
        Ok(())
    }
}
impl GrowtopiaWorld_MagicEggExtra {
}
impl GrowtopiaWorld_MagicEggExtra {
    pub fn egg_amount(&self) -> Ref<'_, u32> {
        self.egg_amount.borrow()
    }
}
impl GrowtopiaWorld_MagicEggExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_MannequinExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    label: RefCell<OptRc<GrowtopiaWorld_GtStr>>,
    unk1: RefCell<u8>,
    unk2: RefCell<u16>,
    unk3: RefCell<u16>,
    hat: RefCell<u16>,
    shirt: RefCell<u16>,
    pants: RefCell<u16>,
    boots: RefCell<u16>,
    face: RefCell<u16>,
    hand: RefCell<u16>,
    back: RefCell<u16>,
    hair: RefCell<u16>,
    neck: RefCell<u16>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_MannequinExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        let t = Self::read_into::<_, GrowtopiaWorld_GtStr>(&*_io, Some(self_rc._root.clone()), None)?.into();
        *self_rc.label.borrow_mut() = t;
        *self_rc.unk1.borrow_mut() = _io.read_u1()?.into();
        *self_rc.unk2.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.unk3.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.hat.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.shirt.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.pants.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.boots.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.face.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.hand.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.back.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.hair.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.neck.borrow_mut() = _io.read_u2le()?.into();
        Ok(())
    }
}
impl GrowtopiaWorld_MannequinExtra {
}
impl GrowtopiaWorld_MannequinExtra {
    pub fn label(&self) -> Ref<'_, OptRc<GrowtopiaWorld_GtStr>> {
        self.label.borrow()
    }
}
impl GrowtopiaWorld_MannequinExtra {
    pub fn unk1(&self) -> Ref<'_, u8> {
        self.unk1.borrow()
    }
}
impl GrowtopiaWorld_MannequinExtra {
    pub fn unk2(&self) -> Ref<'_, u16> {
        self.unk2.borrow()
    }
}
impl GrowtopiaWorld_MannequinExtra {
    pub fn unk3(&self) -> Ref<'_, u16> {
        self.unk3.borrow()
    }
}
impl GrowtopiaWorld_MannequinExtra {
    pub fn hat(&self) -> Ref<'_, u16> {
        self.hat.borrow()
    }
}
impl GrowtopiaWorld_MannequinExtra {
    pub fn shirt(&self) -> Ref<'_, u16> {
        self.shirt.borrow()
    }
}
impl GrowtopiaWorld_MannequinExtra {
    pub fn pants(&self) -> Ref<'_, u16> {
        self.pants.borrow()
    }
}
impl GrowtopiaWorld_MannequinExtra {
    pub fn boots(&self) -> Ref<'_, u16> {
        self.boots.borrow()
    }
}
impl GrowtopiaWorld_MannequinExtra {
    pub fn face(&self) -> Ref<'_, u16> {
        self.face.borrow()
    }
}
impl GrowtopiaWorld_MannequinExtra {
    pub fn hand(&self) -> Ref<'_, u16> {
        self.hand.borrow()
    }
}
impl GrowtopiaWorld_MannequinExtra {
    pub fn back(&self) -> Ref<'_, u16> {
        self.back.borrow()
    }
}
impl GrowtopiaWorld_MannequinExtra {
    pub fn hair(&self) -> Ref<'_, u16> {
        self.hair.borrow()
    }
}
impl GrowtopiaWorld_MannequinExtra {
    pub fn neck(&self) -> Ref<'_, u16> {
        self.neck.borrow()
    }
}
impl GrowtopiaWorld_MannequinExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_PaintingEaselExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    item_id: RefCell<u32>,
    label: RefCell<OptRc<GrowtopiaWorld_GtStr>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_PaintingEaselExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.item_id.borrow_mut() = _io.read_u4le()?.into();
        let t = Self::read_into::<_, GrowtopiaWorld_GtStr>(&*_io, Some(self_rc._root.clone()), None)?.into();
        *self_rc.label.borrow_mut() = t;
        Ok(())
    }
}
impl GrowtopiaWorld_PaintingEaselExtra {
}
impl GrowtopiaWorld_PaintingEaselExtra {
    pub fn item_id(&self) -> Ref<'_, u32> {
        self.item_id.borrow()
    }
}
impl GrowtopiaWorld_PaintingEaselExtra {
    pub fn label(&self) -> Ref<'_, OptRc<GrowtopiaWorld_GtStr>> {
        self.label.borrow()
    }
}
impl GrowtopiaWorld_PaintingEaselExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_PetBattleCageExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    label: RefCell<OptRc<GrowtopiaWorld_GtStr>>,
    base_pet: RefCell<u32>,
    combined_pet_1: RefCell<u32>,
    combined_pet_2: RefCell<u32>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_PetBattleCageExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        let t = Self::read_into::<_, GrowtopiaWorld_GtStr>(&*_io, Some(self_rc._root.clone()), None)?.into();
        *self_rc.label.borrow_mut() = t;
        *self_rc.base_pet.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.combined_pet_1.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.combined_pet_2.borrow_mut() = _io.read_u4le()?.into();
        Ok(())
    }
}
impl GrowtopiaWorld_PetBattleCageExtra {
}
impl GrowtopiaWorld_PetBattleCageExtra {
    pub fn label(&self) -> Ref<'_, OptRc<GrowtopiaWorld_GtStr>> {
        self.label.borrow()
    }
}
impl GrowtopiaWorld_PetBattleCageExtra {
    pub fn base_pet(&self) -> Ref<'_, u32> {
        self.base_pet.borrow()
    }
}
impl GrowtopiaWorld_PetBattleCageExtra {
    pub fn combined_pet_1(&self) -> Ref<'_, u32> {
        self.combined_pet_1.borrow()
    }
}
impl GrowtopiaWorld_PetBattleCageExtra {
    pub fn combined_pet_2(&self) -> Ref<'_, u32> {
        self.combined_pet_2.borrow()
    }
}
impl GrowtopiaWorld_PetBattleCageExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_PetTrainerExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    name: RefCell<OptRc<GrowtopiaWorld_GtStr>>,
    num_pets: RefCell<u32>,
    unk1: RefCell<u32>,
    pets: RefCell<Vec<u32>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_PetTrainerExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        let t = Self::read_into::<_, GrowtopiaWorld_GtStr>(&*_io, Some(self_rc._root.clone()), None)?.into();
        *self_rc.name.borrow_mut() = t;
        *self_rc.num_pets.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.unk1.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.pets.borrow_mut() = Vec::new();
        let l_pets = *self_rc.num_pets();
        for _i in 0..l_pets {
            self_rc.pets.borrow_mut().push(_io.read_u4le()?.into());
        }
        Ok(())
    }
}
impl GrowtopiaWorld_PetTrainerExtra {
}
impl GrowtopiaWorld_PetTrainerExtra {
    pub fn name(&self) -> Ref<'_, OptRc<GrowtopiaWorld_GtStr>> {
        self.name.borrow()
    }
}
impl GrowtopiaWorld_PetTrainerExtra {
    pub fn num_pets(&self) -> Ref<'_, u32> {
        self.num_pets.borrow()
    }
}
impl GrowtopiaWorld_PetTrainerExtra {
    pub fn unk1(&self) -> Ref<'_, u32> {
        self.unk1.borrow()
    }
}
impl GrowtopiaWorld_PetTrainerExtra {
    pub fn pets(&self) -> Ref<'_, Vec<u32>> {
        self.pets.borrow()
    }
}
impl GrowtopiaWorld_PetTrainerExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_PhoneBoothExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    hat: RefCell<u16>,
    shirt: RefCell<u16>,
    pants: RefCell<u16>,
    shoes: RefCell<u16>,
    face: RefCell<u16>,
    hand: RefCell<u16>,
    back: RefCell<u16>,
    hair: RefCell<u16>,
    neck: RefCell<u16>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_PhoneBoothExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.hat.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.shirt.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.pants.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.shoes.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.face.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.hand.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.back.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.hair.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.neck.borrow_mut() = _io.read_u2le()?.into();
        Ok(())
    }
}
impl GrowtopiaWorld_PhoneBoothExtra {
}
impl GrowtopiaWorld_PhoneBoothExtra {
    pub fn hat(&self) -> Ref<'_, u16> {
        self.hat.borrow()
    }
}
impl GrowtopiaWorld_PhoneBoothExtra {
    pub fn shirt(&self) -> Ref<'_, u16> {
        self.shirt.borrow()
    }
}
impl GrowtopiaWorld_PhoneBoothExtra {
    pub fn pants(&self) -> Ref<'_, u16> {
        self.pants.borrow()
    }
}
impl GrowtopiaWorld_PhoneBoothExtra {
    pub fn shoes(&self) -> Ref<'_, u16> {
        self.shoes.borrow()
    }
}
impl GrowtopiaWorld_PhoneBoothExtra {
    pub fn face(&self) -> Ref<'_, u16> {
        self.face.borrow()
    }
}
impl GrowtopiaWorld_PhoneBoothExtra {
    pub fn hand(&self) -> Ref<'_, u16> {
        self.hand.borrow()
    }
}
impl GrowtopiaWorld_PhoneBoothExtra {
    pub fn back(&self) -> Ref<'_, u16> {
        self.back.borrow()
    }
}
impl GrowtopiaWorld_PhoneBoothExtra {
    pub fn hair(&self) -> Ref<'_, u16> {
        self.hair.borrow()
    }
}
impl GrowtopiaWorld_PhoneBoothExtra {
    pub fn neck(&self) -> Ref<'_, u16> {
        self.neck.borrow()
    }
}
impl GrowtopiaWorld_PhoneBoothExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_PineappleGuzzlerExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    pineapple_fed: RefCell<u32>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_PineappleGuzzlerExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.pineapple_fed.borrow_mut() = _io.read_u4le()?.into();
        Ok(())
    }
}
impl GrowtopiaWorld_PineappleGuzzlerExtra {
}
impl GrowtopiaWorld_PineappleGuzzlerExtra {
    pub fn pineapple_fed(&self) -> Ref<'_, u32> {
        self.pineapple_fed.borrow()
    }
}
impl GrowtopiaWorld_PineappleGuzzlerExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_PortraitExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    label: RefCell<OptRc<GrowtopiaWorld_GtStr>>,
    unk1: RefCell<u32>,
    unk2: RefCell<u32>,
    unk3: RefCell<Vec<u8>>,
    unk4: RefCell<u8>,
    unk5: RefCell<u16>,
    face: RefCell<u16>,
    hat: RefCell<u16>,
    hair: RefCell<u16>,
    unk6: RefCell<u32>,
    infinity_crown_data: RefCell<OptRc<GrowtopiaWorld_GtStr>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_PortraitExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        let t = Self::read_into::<_, GrowtopiaWorld_GtStr>(&*_io, Some(self_rc._root.clone()), None)?.into();
        *self_rc.label.borrow_mut() = t;
        *self_rc.unk1.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.unk2.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.unk3.borrow_mut() = _io.read_bytes(5 as usize)?.into();
        *self_rc.unk4.borrow_mut() = _io.read_u1()?.into();
        *self_rc.unk5.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.face.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.hat.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.hair.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.unk6.borrow_mut() = _io.read_u4le()?.into();
        if ((*self_rc.hat() as i32) == (12958 as i32)) {
            let t = Self::read_into::<_, GrowtopiaWorld_GtStr>(&*_io, Some(self_rc._root.clone()), None)?.into();
            *self_rc.infinity_crown_data.borrow_mut() = t;
        }
        Ok(())
    }
}
impl GrowtopiaWorld_PortraitExtra {
}
impl GrowtopiaWorld_PortraitExtra {
    pub fn label(&self) -> Ref<'_, OptRc<GrowtopiaWorld_GtStr>> {
        self.label.borrow()
    }
}
impl GrowtopiaWorld_PortraitExtra {
    pub fn unk1(&self) -> Ref<'_, u32> {
        self.unk1.borrow()
    }
}
impl GrowtopiaWorld_PortraitExtra {
    pub fn unk2(&self) -> Ref<'_, u32> {
        self.unk2.borrow()
    }
}
impl GrowtopiaWorld_PortraitExtra {
    pub fn unk3(&self) -> Ref<'_, Vec<u8>> {
        self.unk3.borrow()
    }
}
impl GrowtopiaWorld_PortraitExtra {
    pub fn unk4(&self) -> Ref<'_, u8> {
        self.unk4.borrow()
    }
}
impl GrowtopiaWorld_PortraitExtra {
    pub fn unk5(&self) -> Ref<'_, u16> {
        self.unk5.borrow()
    }
}
impl GrowtopiaWorld_PortraitExtra {
    pub fn face(&self) -> Ref<'_, u16> {
        self.face.borrow()
    }
}
impl GrowtopiaWorld_PortraitExtra {
    pub fn hat(&self) -> Ref<'_, u16> {
        self.hat.borrow()
    }
}
impl GrowtopiaWorld_PortraitExtra {
    pub fn hair(&self) -> Ref<'_, u16> {
        self.hair.borrow()
    }
}
impl GrowtopiaWorld_PortraitExtra {
    pub fn unk6(&self) -> Ref<'_, u32> {
        self.unk6.borrow()
    }
}
impl GrowtopiaWorld_PortraitExtra {
    pub fn infinity_crown_data(&self) -> Ref<'_, OptRc<GrowtopiaWorld_GtStr>> {
        self.infinity_crown_data.borrow()
    }
}
impl GrowtopiaWorld_PortraitExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_ProviderExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    age: RefCell<u32>,
    pad1: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_ProviderExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.age.borrow_mut() = _io.read_u4le()?.into();
        if ((*_prc.as_ref().unwrap().fg() as i32) == (10656 as i32)) {
            *self_rc.pad1.borrow_mut() = _io.read_bytes(4 as usize)?.into();
        }
        Ok(())
    }
}
impl GrowtopiaWorld_ProviderExtra {
}
impl GrowtopiaWorld_ProviderExtra {
    pub fn age(&self) -> Ref<'_, u32> {
        self.age.borrow()
    }
}
impl GrowtopiaWorld_ProviderExtra {
    pub fn pad1(&self) -> Ref<'_, Vec<u8>> {
        self.pad1.borrow()
    }
}
impl GrowtopiaWorld_ProviderExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_SafeVaultExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_SafeVaultExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        Ok(())
    }
}
impl GrowtopiaWorld_SafeVaultExtra {
}
impl GrowtopiaWorld_SafeVaultExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_SeedExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    age: RefCell<u32>,
    fruit_count: RefCell<u8>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_SeedExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.age.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.fruit_count.borrow_mut() = _io.read_u1()?.into();
        Ok(())
    }
}
impl GrowtopiaWorld_SeedExtra {
}
impl GrowtopiaWorld_SeedExtra {
    pub fn age(&self) -> Ref<'_, u32> {
        self.age.borrow()
    }
}
impl GrowtopiaWorld_SeedExtra {
    pub fn fruit_count(&self) -> Ref<'_, u8> {
        self.fruit_count.borrow()
    }
}
impl GrowtopiaWorld_SeedExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_SewingMachineExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    num_bolt_ids: RefCell<u32>,
    bolt_ids: RefCell<Vec<u32>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_SewingMachineExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.num_bolt_ids.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.bolt_ids.borrow_mut() = Vec::new();
        let l_bolt_ids = *self_rc.num_bolt_ids();
        for _i in 0..l_bolt_ids {
            self_rc.bolt_ids.borrow_mut().push(_io.read_u4le()?.into());
        }
        Ok(())
    }
}
impl GrowtopiaWorld_SewingMachineExtra {
}
impl GrowtopiaWorld_SewingMachineExtra {
    pub fn num_bolt_ids(&self) -> Ref<'_, u32> {
        self.num_bolt_ids.borrow()
    }
}
impl GrowtopiaWorld_SewingMachineExtra {
    pub fn bolt_ids(&self) -> Ref<'_, Vec<u32>> {
        self.bolt_ids.borrow()
    }
}
impl GrowtopiaWorld_SewingMachineExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_ShelfExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    top_left_item_id: RefCell<u32>,
    top_right_item_id: RefCell<u32>,
    bottom_left_item_id: RefCell<u32>,
    bottom_right_item_id: RefCell<u32>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_ShelfExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.top_left_item_id.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.top_right_item_id.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.bottom_left_item_id.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.bottom_right_item_id.borrow_mut() = _io.read_u4le()?.into();
        Ok(())
    }
}
impl GrowtopiaWorld_ShelfExtra {
}
impl GrowtopiaWorld_ShelfExtra {
    pub fn top_left_item_id(&self) -> Ref<'_, u32> {
        self.top_left_item_id.borrow()
    }
}
impl GrowtopiaWorld_ShelfExtra {
    pub fn top_right_item_id(&self) -> Ref<'_, u32> {
        self.top_right_item_id.borrow()
    }
}
impl GrowtopiaWorld_ShelfExtra {
    pub fn bottom_left_item_id(&self) -> Ref<'_, u32> {
        self.bottom_left_item_id.borrow()
    }
}
impl GrowtopiaWorld_ShelfExtra {
    pub fn bottom_right_item_id(&self) -> Ref<'_, u32> {
        self.bottom_right_item_id.borrow()
    }
}
impl GrowtopiaWorld_ShelfExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_SignExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    label: RefCell<OptRc<GrowtopiaWorld_GtStr>>,
    pad1: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_SignExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        let t = Self::read_into::<_, GrowtopiaWorld_GtStr>(&*_io, Some(self_rc._root.clone()), None)?.into();
        *self_rc.label.borrow_mut() = t;
        *self_rc.pad1.borrow_mut() = _io.read_bytes(4 as usize)?.into();
        Ok(())
    }
}
impl GrowtopiaWorld_SignExtra {
}
impl GrowtopiaWorld_SignExtra {
    pub fn label(&self) -> Ref<'_, OptRc<GrowtopiaWorld_GtStr>> {
        self.label.borrow()
    }
}
impl GrowtopiaWorld_SignExtra {
    pub fn pad1(&self) -> Ref<'_, Vec<u8>> {
        self.pad1.borrow()
    }
}
impl GrowtopiaWorld_SignExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_SilkWormExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    flags: RefCell<u8>,
    name: RefCell<OptRc<GrowtopiaWorld_GtStr>>,
    age_sec: RefCell<u32>,
    unk1: RefCell<u32>,
    unk2: RefCell<u32>,
    can_be_fed: RefCell<u8>,
    food_saturation: RefCell<u32>,
    water_saturation: RefCell<u32>,
    color_argb: RefCell<OptRc<GrowtopiaWorld_ARGB>>,
    sick_duration: RefCell<u32>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_SilkWormExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.flags.borrow_mut() = _io.read_u1()?.into();
        let t = Self::read_into::<_, GrowtopiaWorld_GtStr>(&*_io, Some(self_rc._root.clone()), None)?.into();
        *self_rc.name.borrow_mut() = t;
        *self_rc.age_sec.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.unk1.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.unk2.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.can_be_fed.borrow_mut() = _io.read_u1()?.into();
        *self_rc.food_saturation.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.water_saturation.borrow_mut() = _io.read_u4le()?.into();
        let t = Self::read_into::<_, GrowtopiaWorld_ARGB>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.color_argb.borrow_mut() = t;
        *self_rc.sick_duration.borrow_mut() = _io.read_u4le()?.into();
        Ok(())
    }
}
impl GrowtopiaWorld_SilkWormExtra {
}
impl GrowtopiaWorld_SilkWormExtra {
    pub fn flags(&self) -> Ref<'_, u8> {
        self.flags.borrow()
    }
}
impl GrowtopiaWorld_SilkWormExtra {
    pub fn name(&self) -> Ref<'_, OptRc<GrowtopiaWorld_GtStr>> {
        self.name.borrow()
    }
}
impl GrowtopiaWorld_SilkWormExtra {
    pub fn age_sec(&self) -> Ref<'_, u32> {
        self.age_sec.borrow()
    }
}
impl GrowtopiaWorld_SilkWormExtra {
    pub fn unk1(&self) -> Ref<'_, u32> {
        self.unk1.borrow()
    }
}
impl GrowtopiaWorld_SilkWormExtra {
    pub fn unk2(&self) -> Ref<'_, u32> {
        self.unk2.borrow()
    }
}
impl GrowtopiaWorld_SilkWormExtra {
    pub fn can_be_fed(&self) -> Ref<'_, u8> {
        self.can_be_fed.borrow()
    }
}
impl GrowtopiaWorld_SilkWormExtra {
    pub fn food_saturation(&self) -> Ref<'_, u32> {
        self.food_saturation.borrow()
    }
}
impl GrowtopiaWorld_SilkWormExtra {
    pub fn water_saturation(&self) -> Ref<'_, u32> {
        self.water_saturation.borrow()
    }
}
impl GrowtopiaWorld_SilkWormExtra {
    pub fn color_argb(&self) -> Ref<'_, OptRc<GrowtopiaWorld_ARGB>> {
        self.color_argb.borrow()
    }
}
impl GrowtopiaWorld_SilkWormExtra {
    pub fn sick_duration(&self) -> Ref<'_, u32> {
        self.sick_duration.borrow()
    }
}
impl GrowtopiaWorld_SilkWormExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_SolarCollectorExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    unk1: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_SolarCollectorExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.unk1.borrow_mut() = _io.read_bytes(5 as usize)?.into();
        Ok(())
    }
}
impl GrowtopiaWorld_SolarCollectorExtra {
}
impl GrowtopiaWorld_SolarCollectorExtra {
    pub fn unk1(&self) -> Ref<'_, Vec<u8>> {
        self.unk1.borrow()
    }
}
impl GrowtopiaWorld_SolarCollectorExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_SpiritBoardExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    player_required: RefCell<u32>,
    unk1: RefCell<OptRc<GrowtopiaWorld_GtStr>>,
    command: RefCell<OptRc<GrowtopiaWorld_GtStr>>,
    num_required_items: RefCell<u32>,
    required_items: RefCell<Vec<u32>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_SpiritBoardExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.player_required.borrow_mut() = _io.read_u4le()?.into();
        let t = Self::read_into::<_, GrowtopiaWorld_GtStr>(&*_io, Some(self_rc._root.clone()), None)?.into();
        *self_rc.unk1.borrow_mut() = t;
        let t = Self::read_into::<_, GrowtopiaWorld_GtStr>(&*_io, Some(self_rc._root.clone()), None)?.into();
        *self_rc.command.borrow_mut() = t;
        *self_rc.num_required_items.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.required_items.borrow_mut() = Vec::new();
        let l_required_items = *self_rc.num_required_items();
        for _i in 0..l_required_items {
            self_rc.required_items.borrow_mut().push(_io.read_u4le()?.into());
        }
        Ok(())
    }
}
impl GrowtopiaWorld_SpiritBoardExtra {
}
impl GrowtopiaWorld_SpiritBoardExtra {
    pub fn player_required(&self) -> Ref<'_, u32> {
        self.player_required.borrow()
    }
}
impl GrowtopiaWorld_SpiritBoardExtra {
    pub fn unk1(&self) -> Ref<'_, OptRc<GrowtopiaWorld_GtStr>> {
        self.unk1.borrow()
    }
}
impl GrowtopiaWorld_SpiritBoardExtra {
    pub fn command(&self) -> Ref<'_, OptRc<GrowtopiaWorld_GtStr>> {
        self.command.borrow()
    }
}
impl GrowtopiaWorld_SpiritBoardExtra {
    pub fn num_required_items(&self) -> Ref<'_, u32> {
        self.num_required_items.borrow()
    }
}
impl GrowtopiaWorld_SpiritBoardExtra {
    pub fn required_items(&self) -> Ref<'_, Vec<u32>> {
        self.required_items.borrow()
    }
}
impl GrowtopiaWorld_SpiritBoardExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_SpiritStorageUnitExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    ghost_jar_count: RefCell<u32>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_SpiritStorageUnitExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.ghost_jar_count.borrow_mut() = _io.read_u4le()?.into();
        Ok(())
    }
}
impl GrowtopiaWorld_SpiritStorageUnitExtra {
}
impl GrowtopiaWorld_SpiritStorageUnitExtra {
    pub fn ghost_jar_count(&self) -> Ref<'_, u32> {
        self.ghost_jar_count.borrow()
    }
}
impl GrowtopiaWorld_SpiritStorageUnitExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_SpotlightExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_SpotlightExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        Ok(())
    }
}
impl GrowtopiaWorld_SpotlightExtra {
}
impl GrowtopiaWorld_SpotlightExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_SteamEngineExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    temperature: RefCell<u32>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_SteamEngineExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.temperature.borrow_mut() = _io.read_u4le()?.into();
        Ok(())
    }
}
impl GrowtopiaWorld_SteamEngineExtra {
}
impl GrowtopiaWorld_SteamEngineExtra {
    pub fn temperature(&self) -> Ref<'_, u32> {
        self.temperature.borrow()
    }
}
impl GrowtopiaWorld_SteamEngineExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_SteamOrganExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    instrument_type: RefCell<u8>,
    note: RefCell<u32>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_SteamOrganExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.instrument_type.borrow_mut() = _io.read_u1()?.into();
        *self_rc.note.borrow_mut() = _io.read_u4le()?.into();
        Ok(())
    }
}
impl GrowtopiaWorld_SteamOrganExtra {
}
impl GrowtopiaWorld_SteamOrganExtra {
    pub fn instrument_type(&self) -> Ref<'_, u8> {
        self.instrument_type.borrow()
    }
}
impl GrowtopiaWorld_SteamOrganExtra {
    pub fn note(&self) -> Ref<'_, u32> {
        self.note.borrow()
    }
}
impl GrowtopiaWorld_SteamOrganExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_StorageBoxXtremeExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    data_len: RefCell<u16>,
    items: RefCell<Vec<OptRc<GrowtopiaWorld_StorageBoxXtremeExtra_StorageItem>>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_StorageBoxXtremeExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.data_len.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.items.borrow_mut() = Vec::new();
        let l_items = ((*self_rc.data_len() as u16) / (13 as u16));
        for _i in 0..l_items {
            let t = Self::read_into::<_, GrowtopiaWorld_StorageBoxXtremeExtra_StorageItem>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
            self_rc.items.borrow_mut().push(t);
        }
        Ok(())
    }
}
impl GrowtopiaWorld_StorageBoxXtremeExtra {
}
impl GrowtopiaWorld_StorageBoxXtremeExtra {
    pub fn data_len(&self) -> Ref<'_, u16> {
        self.data_len.borrow()
    }
}
impl GrowtopiaWorld_StorageBoxXtremeExtra {
    pub fn items(&self) -> Ref<'_, Vec<OptRc<GrowtopiaWorld_StorageBoxXtremeExtra_StorageItem>>> {
        self.items.borrow()
    }
}
impl GrowtopiaWorld_StorageBoxXtremeExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_StorageBoxXtremeExtra_StorageItem {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_StorageBoxXtremeExtra>,
    pub _self: SharedType<Self>,
    pad1: RefCell<Vec<u8>>,
    item_id: RefCell<u32>,
    pad2: RefCell<Vec<u8>>,
    item_amt: RefCell<u32>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_StorageBoxXtremeExtra_StorageItem {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_StorageBoxXtremeExtra;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.pad1.borrow_mut() = _io.read_bytes(3 as usize)?.into();
        *self_rc.item_id.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.pad2.borrow_mut() = _io.read_bytes(2 as usize)?.into();
        *self_rc.item_amt.borrow_mut() = _io.read_u4le()?.into();
        Ok(())
    }
}
impl GrowtopiaWorld_StorageBoxXtremeExtra_StorageItem {
}
impl GrowtopiaWorld_StorageBoxXtremeExtra_StorageItem {
    pub fn pad1(&self) -> Ref<'_, Vec<u8>> {
        self.pad1.borrow()
    }
}
impl GrowtopiaWorld_StorageBoxXtremeExtra_StorageItem {
    pub fn item_id(&self) -> Ref<'_, u32> {
        self.item_id.borrow()
    }
}
impl GrowtopiaWorld_StorageBoxXtremeExtra_StorageItem {
    pub fn pad2(&self) -> Ref<'_, Vec<u8>> {
        self.pad2.borrow()
    }
}
impl GrowtopiaWorld_StorageBoxXtremeExtra_StorageItem {
    pub fn item_amt(&self) -> Ref<'_, u32> {
        self.item_amt.borrow()
    }
}
impl GrowtopiaWorld_StorageBoxXtremeExtra_StorageItem {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_StormyCloudExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    sting_duration: RefCell<u32>,
    is_solid: RefCell<u32>,
    non_solid_duration: RefCell<u32>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_StormyCloudExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.sting_duration.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.is_solid.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.non_solid_duration.borrow_mut() = _io.read_u4le()?.into();
        Ok(())
    }
}
impl GrowtopiaWorld_StormyCloudExtra {
}
impl GrowtopiaWorld_StormyCloudExtra {
    pub fn sting_duration(&self) -> Ref<'_, u32> {
        self.sting_duration.borrow()
    }
}
impl GrowtopiaWorld_StormyCloudExtra {
    pub fn is_solid(&self) -> Ref<'_, u32> {
        self.is_solid.borrow()
    }
}
impl GrowtopiaWorld_StormyCloudExtra {
    pub fn non_solid_duration(&self) -> Ref<'_, u32> {
        self.non_solid_duration.borrow()
    }
}
impl GrowtopiaWorld_StormyCloudExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_TemporaryPlatformExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    unk1: RefCell<u32>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_TemporaryPlatformExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.unk1.borrow_mut() = _io.read_u4le()?.into();
        Ok(())
    }
}
impl GrowtopiaWorld_TemporaryPlatformExtra {
}
impl GrowtopiaWorld_TemporaryPlatformExtra {
    pub fn unk1(&self) -> Ref<'_, u32> {
        self.unk1.borrow()
    }
}
impl GrowtopiaWorld_TemporaryPlatformExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_TesseractManipulatorExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    gems_left: RefCell<u32>,
    next_update_ms: RefCell<u32>,
    item_id: RefCell<u32>,
    enabled: RefCell<u32>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_TesseractManipulatorExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.gems_left.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.next_update_ms.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.item_id.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.enabled.borrow_mut() = _io.read_u4le()?.into();
        Ok(())
    }
}
impl GrowtopiaWorld_TesseractManipulatorExtra {
}
impl GrowtopiaWorld_TesseractManipulatorExtra {
    pub fn gems_left(&self) -> Ref<'_, u32> {
        self.gems_left.borrow()
    }
}
impl GrowtopiaWorld_TesseractManipulatorExtra {
    pub fn next_update_ms(&self) -> Ref<'_, u32> {
        self.next_update_ms.borrow()
    }
}
impl GrowtopiaWorld_TesseractManipulatorExtra {
    pub fn item_id(&self) -> Ref<'_, u32> {
        self.item_id.borrow()
    }
}
impl GrowtopiaWorld_TesseractManipulatorExtra {
    pub fn enabled(&self) -> Ref<'_, u32> {
        self.enabled.borrow()
    }
}
impl GrowtopiaWorld_TesseractManipulatorExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_TombRobberExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_TombRobberExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        Ok(())
    }
}
impl GrowtopiaWorld_TombRobberExtra {
}
impl GrowtopiaWorld_TombRobberExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_TrainingPortExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    fish_lb: RefCell<u32>,
    status: RefCell<u16>,
    item_id: RefCell<u32>,
    total_exp: RefCell<u32>,
    unk1: RefCell<Vec<u8>>,
    fish_level: RefCell<u32>,
    unk2: RefCell<u32>,
    unk3: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_TrainingPortExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.fish_lb.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.status.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.item_id.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.total_exp.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.unk1.borrow_mut() = _io.read_bytes(8 as usize)?.into();
        *self_rc.fish_level.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.unk2.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.unk3.borrow_mut() = _io.read_bytes(5 as usize)?.into();
        Ok(())
    }
}
impl GrowtopiaWorld_TrainingPortExtra {
}
impl GrowtopiaWorld_TrainingPortExtra {
    pub fn fish_lb(&self) -> Ref<'_, u32> {
        self.fish_lb.borrow()
    }
}
impl GrowtopiaWorld_TrainingPortExtra {
    pub fn status(&self) -> Ref<'_, u16> {
        self.status.borrow()
    }
}
impl GrowtopiaWorld_TrainingPortExtra {
    pub fn item_id(&self) -> Ref<'_, u32> {
        self.item_id.borrow()
    }
}
impl GrowtopiaWorld_TrainingPortExtra {
    pub fn total_exp(&self) -> Ref<'_, u32> {
        self.total_exp.borrow()
    }
}
impl GrowtopiaWorld_TrainingPortExtra {
    pub fn unk1(&self) -> Ref<'_, Vec<u8>> {
        self.unk1.borrow()
    }
}
impl GrowtopiaWorld_TrainingPortExtra {
    pub fn fish_level(&self) -> Ref<'_, u32> {
        self.fish_level.borrow()
    }
}
impl GrowtopiaWorld_TrainingPortExtra {
    pub fn unk2(&self) -> Ref<'_, u32> {
        self.unk2.borrow()
    }
}
impl GrowtopiaWorld_TrainingPortExtra {
    pub fn unk3(&self) -> Ref<'_, Vec<u8>> {
        self.unk3.borrow()
    }
}
impl GrowtopiaWorld_TrainingPortExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_UnknownExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    this_is_just_to_error_out_kaitai_pls: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_UnknownExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.this_is_just_to_error_out_kaitai_pls.borrow_mut() = _io.read_bytes_full()?.into();
        Ok(())
    }
}
impl GrowtopiaWorld_UnknownExtra {
}

/**
 * This type is just to error out kaitai. So if you encounter any error, 
 * please either give the world name or dump the world and submit it to me
 * (81739844+badewen@users.noreply.github.com).  
 */
impl GrowtopiaWorld_UnknownExtra {
    pub fn this_is_just_to_error_out_kaitai_pls(&self) -> Ref<'_, Vec<u8>> {
        self.this_is_just_to_error_out_kaitai_pls.borrow()
    }
}
impl GrowtopiaWorld_UnknownExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_VendingMachineExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    item_id: RefCell<u32>,
    price: RefCell<i32>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_VendingMachineExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.item_id.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.price.borrow_mut() = _io.read_s4le()?.into();
        Ok(())
    }
}
impl GrowtopiaWorld_VendingMachineExtra {
}
impl GrowtopiaWorld_VendingMachineExtra {
    pub fn item_id(&self) -> Ref<'_, u32> {
        self.item_id.borrow()
    }
}
impl GrowtopiaWorld_VendingMachineExtra {
    pub fn price(&self) -> Ref<'_, i32> {
        self.price.borrow()
    }
}
impl GrowtopiaWorld_VendingMachineExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_VipEntranceExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    unk1: RefCell<u8>,
    owner_userid: RefCell<u32>,
    num_allowed_userids: RefCell<u32>,
    allowed_userids: RefCell<Vec<u32>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_VipEntranceExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.unk1.borrow_mut() = _io.read_u1()?.into();
        *self_rc.owner_userid.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.num_allowed_userids.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.allowed_userids.borrow_mut() = Vec::new();
        let l_allowed_userids = *self_rc.num_allowed_userids();
        for _i in 0..l_allowed_userids {
            self_rc.allowed_userids.borrow_mut().push(_io.read_u4le()?.into());
        }
        Ok(())
    }
}
impl GrowtopiaWorld_VipEntranceExtra {
}
impl GrowtopiaWorld_VipEntranceExtra {
    pub fn unk1(&self) -> Ref<'_, u8> {
        self.unk1.borrow()
    }
}
impl GrowtopiaWorld_VipEntranceExtra {
    pub fn owner_userid(&self) -> Ref<'_, u32> {
        self.owner_userid.borrow()
    }
}
impl GrowtopiaWorld_VipEntranceExtra {
    pub fn num_allowed_userids(&self) -> Ref<'_, u32> {
        self.num_allowed_userids.borrow()
    }
}
impl GrowtopiaWorld_VipEntranceExtra {
    pub fn allowed_userids(&self) -> Ref<'_, Vec<u32>> {
        self.allowed_userids.borrow()
    }
}
impl GrowtopiaWorld_VipEntranceExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_WeatherMachine1Extra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    settings: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_WeatherMachine1Extra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.settings.borrow_mut() = _io.read_bytes(4 as usize)?.into();
        Ok(())
    }
}
impl GrowtopiaWorld_WeatherMachine1Extra {
}
impl GrowtopiaWorld_WeatherMachine1Extra {
    pub fn settings(&self) -> Ref<'_, Vec<u8>> {
        self.settings.borrow()
    }
}
impl GrowtopiaWorld_WeatherMachine1Extra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_WeatherMachine2Extra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    item_id: RefCell<u32>,
    gravity: RefCell<u32>,
    flag: RefCell<u8>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_WeatherMachine2Extra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.item_id.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.gravity.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.flag.borrow_mut() = _io.read_u1()?.into();
        Ok(())
    }
}
impl GrowtopiaWorld_WeatherMachine2Extra {
}
impl GrowtopiaWorld_WeatherMachine2Extra {
    pub fn item_id(&self) -> Ref<'_, u32> {
        self.item_id.borrow()
    }
}
impl GrowtopiaWorld_WeatherMachine2Extra {
    pub fn gravity(&self) -> Ref<'_, u32> {
        self.gravity.borrow()
    }
}
impl GrowtopiaWorld_WeatherMachine2Extra {
    pub fn flag(&self) -> Ref<'_, u8> {
        self.flag.borrow()
    }
}
impl GrowtopiaWorld_WeatherMachine2Extra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_WorldObject {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld>,
    pub _self: SharedType<Self>,
    item_id: RefCell<u16>,
    x: RefCell<f32>,
    y: RefCell<f32>,
    amount: RefCell<u8>,
    flag: RefCell<u8>,
    uid: RefCell<u32>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_WorldObject {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.item_id.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.x.borrow_mut() = _io.read_f4le()?.into();
        *self_rc.y.borrow_mut() = _io.read_f4le()?.into();
        *self_rc.amount.borrow_mut() = _io.read_u1()?.into();
        *self_rc.flag.borrow_mut() = _io.read_u1()?.into();
        *self_rc.uid.borrow_mut() = _io.read_u4le()?.into();
        Ok(())
    }
}
impl GrowtopiaWorld_WorldObject {
}
impl GrowtopiaWorld_WorldObject {
    pub fn item_id(&self) -> Ref<'_, u16> {
        self.item_id.borrow()
    }
}
impl GrowtopiaWorld_WorldObject {
    pub fn x(&self) -> Ref<'_, f32> {
        self.x.borrow()
    }
}
impl GrowtopiaWorld_WorldObject {
    pub fn y(&self) -> Ref<'_, f32> {
        self.y.borrow()
    }
}
impl GrowtopiaWorld_WorldObject {
    pub fn amount(&self) -> Ref<'_, u8> {
        self.amount.borrow()
    }
}
impl GrowtopiaWorld_WorldObject {
    pub fn flag(&self) -> Ref<'_, u8> {
        self.flag.borrow()
    }
}
impl GrowtopiaWorld_WorldObject {
    pub fn uid(&self) -> Ref<'_, u32> {
        self.uid.borrow()
    }
}
impl GrowtopiaWorld_WorldObject {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_WorldTile {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld>,
    pub _self: SharedType<Self>,
    fg: RefCell<u16>,
    bg: RefCell<u16>,
    invalid_tile_fg_bg_kaitai_crasher: RefCell<Vec<u8>>,
    parent_block_index: RefCell<u16>,
    flag: RefCell<u16>,
    parent_lock: RefCell<u16>,
    extra_data_type: RefCell<u8>,
    tile_extra: RefCell<Option<GrowtopiaWorld_WorldTile_TileExtra>>,
    cbor_data: RefCell<OptRc<GrowtopiaWorld_CborData>>,
    _io: RefCell<BytesReader>,
}
#[derive(Debug, Clone)]
pub enum GrowtopiaWorld_WorldTile_TileExtra {
    GrowtopiaWorld_LockExtra(OptRc<GrowtopiaWorld_LockExtra>),
    GrowtopiaWorld_GuildExtra(OptRc<GrowtopiaWorld_GuildExtra>),
    GrowtopiaWorld_XenoniteExtra(OptRc<GrowtopiaWorld_XenoniteExtra>),
    GrowtopiaWorld_ChemsynthTankExtra(OptRc<GrowtopiaWorld_ChemsynthTankExtra>),
    GrowtopiaWorld_AdventureBeginsExtra(OptRc<GrowtopiaWorld_AdventureBeginsExtra>),
    GrowtopiaWorld_ChallengeTimerExtra(OptRc<GrowtopiaWorld_ChallengeTimerExtra>),
    GrowtopiaWorld_TemporaryPlatformExtra(OptRc<GrowtopiaWorld_TemporaryPlatformExtra>),
    GrowtopiaWorld_LobsterTrapExtra(OptRc<GrowtopiaWorld_LobsterTrapExtra>),
    GrowtopiaWorld_AngelicCountingCloudExtra(OptRc<GrowtopiaWorld_AngelicCountingCloudExtra>),
    GrowtopiaWorld_KrakensGalaticBlockExtra(OptRc<GrowtopiaWorld_KrakensGalaticBlockExtra>),
    GrowtopiaWorld_TesseractManipulatorExtra(OptRc<GrowtopiaWorld_TesseractManipulatorExtra>),
    GrowtopiaWorld_InfinityWeatherMachineExtra(OptRc<GrowtopiaWorld_InfinityWeatherMachineExtra>),
    GrowtopiaWorld_SpiritBoardExtra(OptRc<GrowtopiaWorld_SpiritBoardExtra>),
    GrowtopiaWorld_LockBotExtra(OptRc<GrowtopiaWorld_LockBotExtra>),
    GrowtopiaWorld_DiceExtra(OptRc<GrowtopiaWorld_DiceExtra>),
    GrowtopiaWorld_PortraitExtra(OptRc<GrowtopiaWorld_PortraitExtra>),
    GrowtopiaWorld_DnaExtractorExtra(OptRc<GrowtopiaWorld_DnaExtractorExtra>),
    GrowtopiaWorld_GameGraveExtra(OptRc<GrowtopiaWorld_GameGraveExtra>),
    GrowtopiaWorld_GrowscanExtra(OptRc<GrowtopiaWorld_GrowscanExtra>),
    GrowtopiaWorld_GivingTreeExtra(OptRc<GrowtopiaWorld_GivingTreeExtra>),
    GrowtopiaWorld_GameGeneratorExtra(OptRc<GrowtopiaWorld_GameGeneratorExtra>),
    GrowtopiaWorld_MagicEggExtra(OptRc<GrowtopiaWorld_MagicEggExtra>),
    GrowtopiaWorld_StorageBoxXtremeExtra(OptRc<GrowtopiaWorld_StorageBoxXtremeExtra>),
    GrowtopiaWorld_VipEntranceExtra(OptRc<GrowtopiaWorld_VipEntranceExtra>),
    GrowtopiaWorld_DoorExtra(OptRc<GrowtopiaWorld_DoorExtra>),
    GrowtopiaWorld_PetBattleCageExtra(OptRc<GrowtopiaWorld_PetBattleCageExtra>),
    GrowtopiaWorld_HowlerExtra(OptRc<GrowtopiaWorld_HowlerExtra>),
    GrowtopiaWorld_SeedExtra(OptRc<GrowtopiaWorld_SeedExtra>),
    GrowtopiaWorld_FishTankPortExtra(OptRc<GrowtopiaWorld_FishTankPortExtra>),
    GrowtopiaWorld_ProviderExtra(OptRc<GrowtopiaWorld_ProviderExtra>),
    GrowtopiaWorld_SilkWormExtra(OptRc<GrowtopiaWorld_SilkWormExtra>),
    GrowtopiaWorld_SafeVaultExtra(OptRc<GrowtopiaWorld_SafeVaultExtra>),
    GrowtopiaWorld_HeartMonitorExtra(OptRc<GrowtopiaWorld_HeartMonitorExtra>),
    GrowtopiaWorld_DisplayBlockExtra(OptRc<GrowtopiaWorld_DisplayBlockExtra>),
    GrowtopiaWorld_DataBedrockExtra(OptRc<GrowtopiaWorld_DataBedrockExtra>),
    GrowtopiaWorld_SteamEngineExtra(OptRc<GrowtopiaWorld_SteamEngineExtra>),
    GrowtopiaWorld_CrystalExtra(OptRc<GrowtopiaWorld_CrystalExtra>),
    GrowtopiaWorld_TrainingPortExtra(OptRc<GrowtopiaWorld_TrainingPortExtra>),
    GrowtopiaWorld_PhoneBoothExtra(OptRc<GrowtopiaWorld_PhoneBoothExtra>),
    GrowtopiaWorld_FishWallMountExtra(OptRc<GrowtopiaWorld_FishWallMountExtra>),
    GrowtopiaWorld_CountryFlagExtra(OptRc<GrowtopiaWorld_CountryFlagExtra>),
    GrowtopiaWorld_SpotlightExtra(OptRc<GrowtopiaWorld_SpotlightExtra>),
    GrowtopiaWorld_GeigerChargerExtra(OptRc<GrowtopiaWorld_GeigerChargerExtra>),
    GrowtopiaWorld_BalloonOMaticExtra(OptRc<GrowtopiaWorld_BalloonOMaticExtra>),
    GrowtopiaWorld_UnknownExtra(OptRc<GrowtopiaWorld_UnknownExtra>),
    GrowtopiaWorld_FriendsEntranceExtra(OptRc<GrowtopiaWorld_FriendsEntranceExtra>),
    GrowtopiaWorld_CybotExtra(OptRc<GrowtopiaWorld_CybotExtra>),
    GrowtopiaWorld_SignExtra(OptRc<GrowtopiaWorld_SignExtra>),
    GrowtopiaWorld_ItemSuckerExtra(OptRc<GrowtopiaWorld_ItemSuckerExtra>),
    GrowtopiaWorld_MannequinExtra(OptRc<GrowtopiaWorld_MannequinExtra>),
    GrowtopiaWorld_TombRobberExtra(OptRc<GrowtopiaWorld_TombRobberExtra>),
    GrowtopiaWorld_VendingMachineExtra(OptRc<GrowtopiaWorld_VendingMachineExtra>),
    GrowtopiaWorld_ShelfExtra(OptRc<GrowtopiaWorld_ShelfExtra>),
    GrowtopiaWorld_PineappleGuzzlerExtra(OptRc<GrowtopiaWorld_PineappleGuzzlerExtra>),
    GrowtopiaWorld_PaintingEaselExtra(OptRc<GrowtopiaWorld_PaintingEaselExtra>),
    GrowtopiaWorld_ContainmentFieldPowerNodeExtra(OptRc<GrowtopiaWorld_ContainmentFieldPowerNodeExtra>),
    GrowtopiaWorld_PetTrainerExtra(OptRc<GrowtopiaWorld_PetTrainerExtra>),
    GrowtopiaWorld_AudioRackExtra(OptRc<GrowtopiaWorld_AudioRackExtra>),
    GrowtopiaWorld_SteamOrganExtra(OptRc<GrowtopiaWorld_SteamOrganExtra>),
    GrowtopiaWorld_FossilPrepStationExtra(OptRc<GrowtopiaWorld_FossilPrepStationExtra>),
    GrowtopiaWorld_AchievementBlockExtra(OptRc<GrowtopiaWorld_AchievementBlockExtra>),
    GrowtopiaWorld_SewingMachineExtra(OptRc<GrowtopiaWorld_SewingMachineExtra>),
    GrowtopiaWorld_StormyCloudExtra(OptRc<GrowtopiaWorld_StormyCloudExtra>),
    GrowtopiaWorld_CookingOvenExtra(OptRc<GrowtopiaWorld_CookingOvenExtra>),
    GrowtopiaWorld_SpiritStorageUnitExtra(OptRc<GrowtopiaWorld_SpiritStorageUnitExtra>),
    GrowtopiaWorld_WeatherMachine2Extra(OptRc<GrowtopiaWorld_WeatherMachine2Extra>),
    GrowtopiaWorld_SolarCollectorExtra(OptRc<GrowtopiaWorld_SolarCollectorExtra>),
    GrowtopiaWorld_WeatherMachine1Extra(OptRc<GrowtopiaWorld_WeatherMachine1Extra>),
    GrowtopiaWorld_CrimeInProgressExtra(OptRc<GrowtopiaWorld_CrimeInProgressExtra>),
    GrowtopiaWorld_ForgeExtra(OptRc<GrowtopiaWorld_ForgeExtra>),
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_LockExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_LockExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_LockExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_LockExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_LockExtra>) -> Self {
        Self::GrowtopiaWorld_LockExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_GuildExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_GuildExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_GuildExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_GuildExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_GuildExtra>) -> Self {
        Self::GrowtopiaWorld_GuildExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_XenoniteExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_XenoniteExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_XenoniteExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_XenoniteExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_XenoniteExtra>) -> Self {
        Self::GrowtopiaWorld_XenoniteExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_ChemsynthTankExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_ChemsynthTankExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_ChemsynthTankExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_ChemsynthTankExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_ChemsynthTankExtra>) -> Self {
        Self::GrowtopiaWorld_ChemsynthTankExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_AdventureBeginsExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_AdventureBeginsExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_AdventureBeginsExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_AdventureBeginsExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_AdventureBeginsExtra>) -> Self {
        Self::GrowtopiaWorld_AdventureBeginsExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_ChallengeTimerExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_ChallengeTimerExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_ChallengeTimerExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_ChallengeTimerExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_ChallengeTimerExtra>) -> Self {
        Self::GrowtopiaWorld_ChallengeTimerExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_TemporaryPlatformExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_TemporaryPlatformExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_TemporaryPlatformExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_TemporaryPlatformExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_TemporaryPlatformExtra>) -> Self {
        Self::GrowtopiaWorld_TemporaryPlatformExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_LobsterTrapExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_LobsterTrapExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_LobsterTrapExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_LobsterTrapExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_LobsterTrapExtra>) -> Self {
        Self::GrowtopiaWorld_LobsterTrapExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_AngelicCountingCloudExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_AngelicCountingCloudExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_AngelicCountingCloudExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_AngelicCountingCloudExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_AngelicCountingCloudExtra>) -> Self {
        Self::GrowtopiaWorld_AngelicCountingCloudExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_KrakensGalaticBlockExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_KrakensGalaticBlockExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_KrakensGalaticBlockExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_KrakensGalaticBlockExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_KrakensGalaticBlockExtra>) -> Self {
        Self::GrowtopiaWorld_KrakensGalaticBlockExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_TesseractManipulatorExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_TesseractManipulatorExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_TesseractManipulatorExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_TesseractManipulatorExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_TesseractManipulatorExtra>) -> Self {
        Self::GrowtopiaWorld_TesseractManipulatorExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_InfinityWeatherMachineExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_InfinityWeatherMachineExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_InfinityWeatherMachineExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_InfinityWeatherMachineExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_InfinityWeatherMachineExtra>) -> Self {
        Self::GrowtopiaWorld_InfinityWeatherMachineExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_SpiritBoardExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_SpiritBoardExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_SpiritBoardExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_SpiritBoardExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_SpiritBoardExtra>) -> Self {
        Self::GrowtopiaWorld_SpiritBoardExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_LockBotExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_LockBotExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_LockBotExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_LockBotExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_LockBotExtra>) -> Self {
        Self::GrowtopiaWorld_LockBotExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_DiceExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_DiceExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_DiceExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_DiceExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_DiceExtra>) -> Self {
        Self::GrowtopiaWorld_DiceExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_PortraitExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_PortraitExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_PortraitExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_PortraitExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_PortraitExtra>) -> Self {
        Self::GrowtopiaWorld_PortraitExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_DnaExtractorExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_DnaExtractorExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_DnaExtractorExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_DnaExtractorExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_DnaExtractorExtra>) -> Self {
        Self::GrowtopiaWorld_DnaExtractorExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_GameGraveExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_GameGraveExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_GameGraveExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_GameGraveExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_GameGraveExtra>) -> Self {
        Self::GrowtopiaWorld_GameGraveExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_GrowscanExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_GrowscanExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_GrowscanExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_GrowscanExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_GrowscanExtra>) -> Self {
        Self::GrowtopiaWorld_GrowscanExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_GivingTreeExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_GivingTreeExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_GivingTreeExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_GivingTreeExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_GivingTreeExtra>) -> Self {
        Self::GrowtopiaWorld_GivingTreeExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_GameGeneratorExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_GameGeneratorExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_GameGeneratorExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_GameGeneratorExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_GameGeneratorExtra>) -> Self {
        Self::GrowtopiaWorld_GameGeneratorExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_MagicEggExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_MagicEggExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_MagicEggExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_MagicEggExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_MagicEggExtra>) -> Self {
        Self::GrowtopiaWorld_MagicEggExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_StorageBoxXtremeExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_StorageBoxXtremeExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_StorageBoxXtremeExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_StorageBoxXtremeExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_StorageBoxXtremeExtra>) -> Self {
        Self::GrowtopiaWorld_StorageBoxXtremeExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_VipEntranceExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_VipEntranceExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_VipEntranceExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_VipEntranceExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_VipEntranceExtra>) -> Self {
        Self::GrowtopiaWorld_VipEntranceExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_DoorExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_DoorExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_DoorExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_DoorExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_DoorExtra>) -> Self {
        Self::GrowtopiaWorld_DoorExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_PetBattleCageExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_PetBattleCageExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_PetBattleCageExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_PetBattleCageExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_PetBattleCageExtra>) -> Self {
        Self::GrowtopiaWorld_PetBattleCageExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_HowlerExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_HowlerExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_HowlerExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_HowlerExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_HowlerExtra>) -> Self {
        Self::GrowtopiaWorld_HowlerExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_SeedExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_SeedExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_SeedExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_SeedExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_SeedExtra>) -> Self {
        Self::GrowtopiaWorld_SeedExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_FishTankPortExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_FishTankPortExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_FishTankPortExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_FishTankPortExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_FishTankPortExtra>) -> Self {
        Self::GrowtopiaWorld_FishTankPortExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_ProviderExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_ProviderExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_ProviderExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_ProviderExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_ProviderExtra>) -> Self {
        Self::GrowtopiaWorld_ProviderExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_SilkWormExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_SilkWormExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_SilkWormExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_SilkWormExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_SilkWormExtra>) -> Self {
        Self::GrowtopiaWorld_SilkWormExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_SafeVaultExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_SafeVaultExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_SafeVaultExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_SafeVaultExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_SafeVaultExtra>) -> Self {
        Self::GrowtopiaWorld_SafeVaultExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_HeartMonitorExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_HeartMonitorExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_HeartMonitorExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_HeartMonitorExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_HeartMonitorExtra>) -> Self {
        Self::GrowtopiaWorld_HeartMonitorExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_DisplayBlockExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_DisplayBlockExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_DisplayBlockExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_DisplayBlockExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_DisplayBlockExtra>) -> Self {
        Self::GrowtopiaWorld_DisplayBlockExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_DataBedrockExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_DataBedrockExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_DataBedrockExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_DataBedrockExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_DataBedrockExtra>) -> Self {
        Self::GrowtopiaWorld_DataBedrockExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_SteamEngineExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_SteamEngineExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_SteamEngineExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_SteamEngineExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_SteamEngineExtra>) -> Self {
        Self::GrowtopiaWorld_SteamEngineExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_CrystalExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_CrystalExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_CrystalExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_CrystalExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_CrystalExtra>) -> Self {
        Self::GrowtopiaWorld_CrystalExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_TrainingPortExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_TrainingPortExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_TrainingPortExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_TrainingPortExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_TrainingPortExtra>) -> Self {
        Self::GrowtopiaWorld_TrainingPortExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_PhoneBoothExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_PhoneBoothExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_PhoneBoothExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_PhoneBoothExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_PhoneBoothExtra>) -> Self {
        Self::GrowtopiaWorld_PhoneBoothExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_FishWallMountExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_FishWallMountExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_FishWallMountExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_FishWallMountExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_FishWallMountExtra>) -> Self {
        Self::GrowtopiaWorld_FishWallMountExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_CountryFlagExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_CountryFlagExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_CountryFlagExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_CountryFlagExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_CountryFlagExtra>) -> Self {
        Self::GrowtopiaWorld_CountryFlagExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_SpotlightExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_SpotlightExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_SpotlightExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_SpotlightExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_SpotlightExtra>) -> Self {
        Self::GrowtopiaWorld_SpotlightExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_GeigerChargerExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_GeigerChargerExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_GeigerChargerExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_GeigerChargerExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_GeigerChargerExtra>) -> Self {
        Self::GrowtopiaWorld_GeigerChargerExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_BalloonOMaticExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_BalloonOMaticExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_BalloonOMaticExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_BalloonOMaticExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_BalloonOMaticExtra>) -> Self {
        Self::GrowtopiaWorld_BalloonOMaticExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_UnknownExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_UnknownExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_UnknownExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_UnknownExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_UnknownExtra>) -> Self {
        Self::GrowtopiaWorld_UnknownExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_FriendsEntranceExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_FriendsEntranceExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_FriendsEntranceExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_FriendsEntranceExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_FriendsEntranceExtra>) -> Self {
        Self::GrowtopiaWorld_FriendsEntranceExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_CybotExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_CybotExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_CybotExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_CybotExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_CybotExtra>) -> Self {
        Self::GrowtopiaWorld_CybotExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_SignExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_SignExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_SignExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_SignExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_SignExtra>) -> Self {
        Self::GrowtopiaWorld_SignExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_ItemSuckerExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_ItemSuckerExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_ItemSuckerExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_ItemSuckerExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_ItemSuckerExtra>) -> Self {
        Self::GrowtopiaWorld_ItemSuckerExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_MannequinExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_MannequinExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_MannequinExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_MannequinExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_MannequinExtra>) -> Self {
        Self::GrowtopiaWorld_MannequinExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_TombRobberExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_TombRobberExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_TombRobberExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_TombRobberExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_TombRobberExtra>) -> Self {
        Self::GrowtopiaWorld_TombRobberExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_VendingMachineExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_VendingMachineExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_VendingMachineExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_VendingMachineExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_VendingMachineExtra>) -> Self {
        Self::GrowtopiaWorld_VendingMachineExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_ShelfExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_ShelfExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_ShelfExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_ShelfExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_ShelfExtra>) -> Self {
        Self::GrowtopiaWorld_ShelfExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_PineappleGuzzlerExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_PineappleGuzzlerExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_PineappleGuzzlerExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_PineappleGuzzlerExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_PineappleGuzzlerExtra>) -> Self {
        Self::GrowtopiaWorld_PineappleGuzzlerExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_PaintingEaselExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_PaintingEaselExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_PaintingEaselExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_PaintingEaselExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_PaintingEaselExtra>) -> Self {
        Self::GrowtopiaWorld_PaintingEaselExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_ContainmentFieldPowerNodeExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_ContainmentFieldPowerNodeExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_ContainmentFieldPowerNodeExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_ContainmentFieldPowerNodeExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_ContainmentFieldPowerNodeExtra>) -> Self {
        Self::GrowtopiaWorld_ContainmentFieldPowerNodeExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_PetTrainerExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_PetTrainerExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_PetTrainerExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_PetTrainerExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_PetTrainerExtra>) -> Self {
        Self::GrowtopiaWorld_PetTrainerExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_AudioRackExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_AudioRackExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_AudioRackExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_AudioRackExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_AudioRackExtra>) -> Self {
        Self::GrowtopiaWorld_AudioRackExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_SteamOrganExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_SteamOrganExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_SteamOrganExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_SteamOrganExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_SteamOrganExtra>) -> Self {
        Self::GrowtopiaWorld_SteamOrganExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_FossilPrepStationExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_FossilPrepStationExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_FossilPrepStationExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_FossilPrepStationExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_FossilPrepStationExtra>) -> Self {
        Self::GrowtopiaWorld_FossilPrepStationExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_AchievementBlockExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_AchievementBlockExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_AchievementBlockExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_AchievementBlockExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_AchievementBlockExtra>) -> Self {
        Self::GrowtopiaWorld_AchievementBlockExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_SewingMachineExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_SewingMachineExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_SewingMachineExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_SewingMachineExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_SewingMachineExtra>) -> Self {
        Self::GrowtopiaWorld_SewingMachineExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_StormyCloudExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_StormyCloudExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_StormyCloudExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_StormyCloudExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_StormyCloudExtra>) -> Self {
        Self::GrowtopiaWorld_StormyCloudExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_CookingOvenExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_CookingOvenExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_CookingOvenExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_CookingOvenExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_CookingOvenExtra>) -> Self {
        Self::GrowtopiaWorld_CookingOvenExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_SpiritStorageUnitExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_SpiritStorageUnitExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_SpiritStorageUnitExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_SpiritStorageUnitExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_SpiritStorageUnitExtra>) -> Self {
        Self::GrowtopiaWorld_SpiritStorageUnitExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_WeatherMachine2Extra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_WeatherMachine2Extra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_WeatherMachine2Extra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_WeatherMachine2Extra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_WeatherMachine2Extra>) -> Self {
        Self::GrowtopiaWorld_WeatherMachine2Extra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_SolarCollectorExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_SolarCollectorExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_SolarCollectorExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_SolarCollectorExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_SolarCollectorExtra>) -> Self {
        Self::GrowtopiaWorld_SolarCollectorExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_WeatherMachine1Extra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_WeatherMachine1Extra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_WeatherMachine1Extra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_WeatherMachine1Extra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_WeatherMachine1Extra>) -> Self {
        Self::GrowtopiaWorld_WeatherMachine1Extra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_CrimeInProgressExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_CrimeInProgressExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_CrimeInProgressExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_CrimeInProgressExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_CrimeInProgressExtra>) -> Self {
        Self::GrowtopiaWorld_CrimeInProgressExtra(v)
    }
}
impl From<&GrowtopiaWorld_WorldTile_TileExtra> for OptRc<GrowtopiaWorld_ForgeExtra> {
    fn from(v: &GrowtopiaWorld_WorldTile_TileExtra) -> Self {
        if let GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_ForgeExtra(x) = v {
            return x.clone();
        }
        panic!("expected GrowtopiaWorld_WorldTile_TileExtra::GrowtopiaWorld_ForgeExtra, got {:?}", v)
    }
}
impl From<OptRc<GrowtopiaWorld_ForgeExtra>> for GrowtopiaWorld_WorldTile_TileExtra {
    fn from(v: OptRc<GrowtopiaWorld_ForgeExtra>) -> Self {
        Self::GrowtopiaWorld_ForgeExtra(v)
    }
}
impl KStruct for GrowtopiaWorld_WorldTile {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.fg.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.bg.borrow_mut() = _io.read_u2le()?.into();
        if  ((((*self_rc.fg() as i32) > (25000 as i32))) || (((*self_rc.bg() as i32) > (25000 as i32))))  {
            *self_rc.invalid_tile_fg_bg_kaitai_crasher.borrow_mut() = _io.read_bytes_full()?.into();
        }
        *self_rc.parent_block_index.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.flag.borrow_mut() = _io.read_u2le()?.into();
        if ((((*self_rc.flag() as u16) & (2 as u16)) as i32) == (2 as i32)) {
            *self_rc.parent_lock.borrow_mut() = _io.read_u2le()?.into();
        }
        if ((((*self_rc.flag() as u16) & (1 as u16)) as i32) == (1 as i32)) {
            *self_rc.extra_data_type.borrow_mut() = _io.read_u1()?.into();
        }
        if ((((*self_rc.flag() as u16) & (1 as u16)) as i32) == (1 as i32)) {
            match *self_rc.extra_data_type() {
                1 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_DoorExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                10 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_AchievementBlockExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                11 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_HeartMonitorExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                14 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_MannequinExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                15 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_MagicEggExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                16 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_GameGraveExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                17 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_GameGeneratorExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                18 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_XenoniteExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                19 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_PhoneBoothExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                2 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_SignExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                20 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_CrystalExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                21 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_CrimeInProgressExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                22 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_SpotlightExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                23 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_DisplayBlockExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                24 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_VendingMachineExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                25 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_FishTankPortExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                26 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_SolarCollectorExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                27 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_ForgeExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                28 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_GivingTreeExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                3 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_LockExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                30 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_SteamOrganExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                31 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_SilkWormExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                32 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_SewingMachineExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                33 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_CountryFlagExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                34 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_LobsterTrapExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                35 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_PaintingEaselExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                36 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_PetBattleCageExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                37 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_PetTrainerExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                38 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_SteamEngineExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                39 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_LockBotExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                4 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_SeedExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                40 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_WeatherMachine1Extra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                41 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_SpiritStorageUnitExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                42 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_DataBedrockExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                43 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_ShelfExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                44 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_VipEntranceExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                45 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_ChallengeTimerExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                47 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_FishWallMountExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                48 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_PortraitExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                49 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_WeatherMachine2Extra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                50 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_FossilPrepStationExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                51 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_DnaExtractorExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                52 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_HowlerExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                53 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_ChemsynthTankExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                54 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_StorageBoxXtremeExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                55 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_CookingOvenExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                56 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_AudioRackExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                57 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_GeigerChargerExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                58 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_AdventureBeginsExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                59 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_TombRobberExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                60 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_BalloonOMaticExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                61 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_TrainingPortExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                62 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_ItemSuckerExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                63 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_CybotExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                65 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_GuildExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                66 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_GrowscanExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                67 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_ContainmentFieldPowerNodeExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                68 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_SpiritBoardExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                69 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_TesseractManipulatorExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                72 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_StormyCloudExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                73 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_TemporaryPlatformExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                74 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_SafeVaultExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                75 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_AngelicCountingCloudExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                77 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_InfinityWeatherMachineExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                79 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_PineappleGuzzlerExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                8 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_DiceExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                80 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_KrakensGalaticBlockExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                81 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_FriendsEntranceExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                9 => {
                    let t = Self::read_into::<_, GrowtopiaWorld_ProviderExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
                _ => {
                    let t = Self::read_into::<_, GrowtopiaWorld_UnknownExtra>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    *self_rc.tile_extra.borrow_mut() = Some(t);
                }
            }
        }
        if  (( ((((((*self_rc.flag() as u16) & (1 as u16)) as i32) == (1 as i32))) && (((*self_rc.extra_data_type() as u8) == (36 as u8)))) ) || (((*self_rc.fg() as i32) == (15546 as i32))) || (((*self_rc.fg() as i32) == (14666 as i32))) || (((*self_rc.fg() as i32) == (14962 as i32))) || (((*self_rc.fg() as i32) == (14662 as i32))))  {
            let t = Self::read_into::<_, GrowtopiaWorld_CborData>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
            *self_rc.cbor_data.borrow_mut() = t;
        }
        Ok(())
    }
}
impl GrowtopiaWorld_WorldTile {
}
impl GrowtopiaWorld_WorldTile {
    pub fn fg(&self) -> Ref<'_, u16> {
        self.fg.borrow()
    }
}
impl GrowtopiaWorld_WorldTile {
    pub fn bg(&self) -> Ref<'_, u16> {
        self.bg.borrow()
    }
}

/**
 * This type is just to error out kaitai. If this is 
 * encountered, then maybe there was a parsing error.
 * Please report :)
 */
impl GrowtopiaWorld_WorldTile {
    pub fn invalid_tile_fg_bg_kaitai_crasher(&self) -> Ref<'_, Vec<u8>> {
        self.invalid_tile_fg_bg_kaitai_crasher.borrow()
    }
}
impl GrowtopiaWorld_WorldTile {
    pub fn parent_block_index(&self) -> Ref<'_, u16> {
        self.parent_block_index.borrow()
    }
}
impl GrowtopiaWorld_WorldTile {
    pub fn flag(&self) -> Ref<'_, u16> {
        self.flag.borrow()
    }
}
impl GrowtopiaWorld_WorldTile {
    pub fn parent_lock(&self) -> Ref<'_, u16> {
        self.parent_lock.borrow()
    }
}
impl GrowtopiaWorld_WorldTile {
    pub fn extra_data_type(&self) -> Ref<'_, u8> {
        self.extra_data_type.borrow()
    }
}
impl GrowtopiaWorld_WorldTile {
    pub fn tile_extra(&self) -> Ref<'_, Option<GrowtopiaWorld_WorldTile_TileExtra>> {
        self.tile_extra.borrow()
    }
}
impl GrowtopiaWorld_WorldTile {
    pub fn cbor_data(&self) -> Ref<'_, OptRc<GrowtopiaWorld_CborData>> {
        self.cbor_data.borrow()
    }
}
impl GrowtopiaWorld_WorldTile {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct GrowtopiaWorld_XenoniteExtra {
    pub _root: SharedType<GrowtopiaWorld>,
    pub _parent: SharedType<GrowtopiaWorld_WorldTile>,
    pub _self: SharedType<Self>,
    unk1: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for GrowtopiaWorld_XenoniteExtra {
    type Root = GrowtopiaWorld;
    type Parent = GrowtopiaWorld_WorldTile;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.unk1.borrow_mut() = _io.read_bytes(5 as usize)?.into();
        Ok(())
    }
}
impl GrowtopiaWorld_XenoniteExtra {
}
impl GrowtopiaWorld_XenoniteExtra {
    pub fn unk1(&self) -> Ref<'_, Vec<u8>> {
        self.unk1.borrow()
    }
}
impl GrowtopiaWorld_XenoniteExtra {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
