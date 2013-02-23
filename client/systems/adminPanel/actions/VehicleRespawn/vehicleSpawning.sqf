//	@file Version: 1.0
//	@file Name: reloadAllVehicles.sqf
//	@file Author: [TKG] Zuen
//	@file Created: 22/02/2013 17:45
//	@file Args:

private ["_counter","_pos","_type","_num","_markerName","_marker","_amountOfVehicles","_hint"];

_counter = 0;

for "_i" from 1 to 770 do
{
	_pos = getMarkerPos format ["Spawn_%1", _i];
	_type = 0;
    _num = floor (random 100);
	if (_num < 100) then {_type = 0;};
	if (_num < 35) then {_type = 1;};
	if (_num < 10) then {_type = 2;};
	[_pos, _type] call vehicleCreation;

	_counter = _counter + 1;
};