//	@file Version: 1.1
//	@file Name: createGunStoreMarkers.sqf
//	@file Author: [404] Deadbeat
//	@file Created: 28/11/2012 05:19
//	@file Args:

private["_side"];

_radius = 200;
_status = [];
_gunStores = ["gs1", "gs2", "gs3", "gs4"];
_col_empty = "ColorBlue";
_col_enemy = "ColorRed";
_col_friendly = "ColorGreen";
_col_mixed = "ColorOrange";

if(str(playerSide) == "GUER") then {_side = "Independent"};

//Creates the markers around general stores.
waitUntil {{!isNull(missionNamespace getVariable _x) && ((getPos(missionNamespace getVariable _x) distance [0,0,0]) > 100)} count _gunStores == count _gunStores};
{
	_unit = missionNamespace getVariable _x;

	// Gun store title    
    _markerName = format["marker_shop_title_%1",_x];
    deleteMarkerLocal _markerName;
	_marker = createMarkerLocal [_markerName, getPos _unit];
	_markerName setMarkerShapeLocal "ICON";
    _markerName setMarkerTypeLocal "Dot";
    _markerName setMarkerColorLocal "ColorRed";
	_markerName setMarkerSizeLocal [0.8,0.8];
	_markerName setMarkerTextLocal "Gun Store";

	_status set [count _status, "EMPTY"];
} forEach _gunStores;