//	@file Version: 1.0
//	@file Name: loadServerTechMenu.sqf
//	@file Author: Zuen
//	@file Created: 20/01/2013 22:28
//	@file Args:

#define serverTechMenu_option 50009

disableSerialization;

private ["_start","_panelOptions","_displayServerTech","_serverTechSelect"];

_uid = getPlayerUID player;

if ((_uid in Technician)) then {

	_start = createDialog "ServerTechMenu";

	_displayServerTech = uiNamespace getVariable "ServerTechMenu";

	_serverTechSelect = _displayServerTech displayCtrl serverTechMenu_option;

	_panelOptions = [
		"Player Menu",
		"Vehicle Management",
		"Skip +6 Hours",
		"Teleport",
		"Add Money",
		"Respawn Vehicles",
		"Proving Grounds"
	];

	{
		_serverTechSelect lbAdd _x;
	} forEach _panelOptions;

} else {
  exit;  
};