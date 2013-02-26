//	@file Version: 1.0
//	@file Name: deleteFoodWater.sqf
//	@file Author: [TKG] Zuen
//	@file Created: 22/02/2013 17:45
//	@file Args:

_allVehicles = vehicles;

//save old time
//check if old time has passed new time

_oldTime = time;
_newTime = time;
//_deleteTime = 1800;
_deleteTime = 30;

while{true} do {

	sleep 10;
	_newTime = time;
	
	//Check if 30min has passed from oldTime
	if((_newTime - _oldTime) > _deleteTime) then
	{
		{
			_vehicle = _X;
			_vehicleType = Format["%1",typeOf _x];
			
			if((_vehicleType isKindOf "Land_Bag_EP1") OR (_vehicleType isKindOf "Land_Teapot_EP1")) then {
				deleteVehicle _vehicle;
			};
		}forEach _allVehicles;
		
		_oldTime = time;
	};
};