//	@file Version: 1.0
//	@file Name: reloadAllVehicles.sqf
//	@file Author: [TKG] Zuen
//	@file Created: 22/02/2013 17:45
//	@file Args:

private ["_car","_mags","_rnd","_weapon","_mag"];

//Grabs carname from array in execVM
_car = _this select 0;

_num = floor (random 100);
if (_num < 75) then { _car addWeaponCargoGlobal ["Binocular", 1]};
if (_num < 15) then { _car addWeaponCargoGlobal ["NVgoggles", 1]};

//Get Random Gun From randomWeapons Array.
_weapon = vehicleWeapons select (random (count vehicleWeapons - 1));
_mag = (getArray (configFile >> "Cfgweapons" >> _weapon >> "magazines")) select 0;

//Add guns and magazines, note the Global at the end..
_car addMagazineCargoGlobal [_mag,1];
_car addMagazineCargoGlobal [_mag,(random 4)];
_car addWeaponCargoGlobal [_weapon,1];