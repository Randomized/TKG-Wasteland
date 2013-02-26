//	@file Version: 1.0
//	@file Name: reloadAllVehicles.sqf
//	@file Author: [TKG] Zuen
//	@file Created: 22/02/2013 17:45
//	@file Args:

private ["_switch","_vehicleType","_vehicleSummary","_vehicle","_selectedItem","_selectedItemData"];

_uid = getPlayerUID player;

if ((_uid in Moderator) OR (_uid in Administrator) OR (_uid in Technician) OR (_uid in GlobalStaff)) then {

	_allVehicles = vehicles;
	
	{
	    _vehicle = _X;
		_vehicleType = Format["%1",typeOf _x];
		
		if((_vehicleType isKindOf "Land_Bag_EP1") OR (_vehicleType isKindOf "Land_Teapot_EP1")) then {
			deleteVehicle _vehicle;
		};
	}forEach _allVehicles;

} else {
  exit;  
};