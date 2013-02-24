//	@file Version: 1.0
//	@file Name: reloadAllVehicles.sqf
//	@file Author: [TKG] Zuen
//	@file Created: 22/02/2013 17:45
//	@file Args:

[] execVM "client\systems\adminPanel\actions\VehicleRespawn\config_Vehicle.sqf";
randomWeapons = compile preprocessFileLineNumbers "client\systems\adminPanel\actions\VehicleRespawn\randomWeapon.sqf";
vehicleCreation = compile preprocessFileLineNumbers "client\systems\adminPanel\actions\VehicleRespawn\vehicleCreation.sqf";

private ["_switch","_vehicleType","_vehicleSummary","_vehicle","_selectedItem","_selectedItemData"];

_uid = getPlayerUID player;

if ((_uid in Moderator) OR (_uid in Administrator) OR (_uid in Technician) OR (_uid in GlobalStaff)) then {

	_allVehicles = vehicles;

	{
	    _vehicle = _X;
		_vehicleType = Format["%1",typeOf _x];
		
		if(((_vehicleType isKindOf "LandVehicle") OR (_vehicleType isKindOf "Air")) AND !(_vehicleType isKindOf "StaticWeapon")) then {
		
			{
				_x leaveVehicle _vehicle;
			} forEach crew _vehicle;
			
			deleteVehicle _vehicle;
		};
	}forEach _allVehicles;

	hint "Vehicles Deleted - Now Respawning them";

	[] ExecVM "client\systems\adminPanel\actions\VehicleRespawn\vehicleSpawning.sqf";
	
} else {
  exit;  
};