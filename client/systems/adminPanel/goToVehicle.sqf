//	@file Version: 1.0
//	@file Name: goToVehicle.sqf
//	@file Author: [TKG] Zuen
//	@file Created: 28/02/2013 21:01
//	@file Args:

#define vehicleManagementDialog 12000
#define vehicleManagementListBox 12001

disableSerialization;

private ["_switch","_vehicleType","_vehicleSummary","_vehicle","_selectedItem","_selectedItemData"];

_uid = getPlayerUID player;

if ((_uid in Moderator) OR (_uid in Administrator) OR (_uid in Technician) OR (_uid in GlobalStaff)) then {

	_allVehicles = vehicles;

	_dialog = findDisplay vehicleManagementDialog;
	_vehicleListBox = _dialog displayCtrl vehicleManagementListBox;

	_selectedItem = lbCurSel _vehicleListBox;
	_selectedItemData = _vehicleListBox lbData _selectedItem;
	
	{
	    _vehicle = _X;
		
		if(str(_vehicle) == _selectedItemData) then
	    {
	        vehicle player setPos (getPos _vehicle);
	    };    
	}forEach _allVehicles;

	player commandChat "Vehicle Deleted";

	closeDialog 0;
execVM "client\systems\adminPanel\actions\vehicleManagement.sqf";
} else {
  exit;  
};