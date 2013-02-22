//	@file Version: 1.1
//	@file Name: createGeneralStoreMarkers.sqf
//	@file Author: [404] Deadbeat (Original concept by Sa-Matra)
//	@file Created: 28/11/2012 05:19
//	@file Args:

private["_side"];

_radius = 200;
_status = [];
_tempArray = [];
_generalStores = ["generalStore1","generalStore2","generalStore3","generalStore4","generalStore5"];
_col_empty = "ColorBlue";
_col_enemy = "ColorRed";
_col_friendly = "ColorGreen";
_col_mixed = "ColorOrange";

if(str(playerSide) == "GUER") then {_side = "Independent"};

//Creates the markers around general stores.
waitUntil {{!isNull(missionNamespace getVariable _x) && ((getPos(missionNamespace getVariable _x) distance [0,0,0]) > 100)} count _generalStores == count _generalStores};
{
	_unit = missionNamespace getVariable _x;

	// General store title    
    _markerName = format["marker_shop_title_%1",_x];
    deleteMarkerLocal _markerName;
	_marker = createMarkerLocal [_markerName, getPos _unit];
	_markerName setMarkerShapeLocal "ICON";
    _markerName setMarkerTypeLocal "Dot";
    _markerName setMarkerColorLocal "ColorOrange";
	_markerName setMarkerSizeLocal [0.8,0.8];
	_markerName setMarkerTextLocal "General Store";

	_status set [count _status, "EMPTY"];
} forEach _generalStores;