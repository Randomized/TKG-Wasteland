_radiusH = 200;																	//The radius from the Gun Stores
_gunStoresH = ["gs1", "gs2", "gs3", "gs4"];										//The Gun Stores Array

while {true} do
{
	{
		_unitH = missionNamespace getVariable (_gunStoresH select _forEachIndex);	//Getting the values of each Gun Store from the mission.sqm file
		
		if(player distance _unitH <= _radiusH) then {								//If the player is in the Gun Store radius
		
			player setDamage 0;
		
		};
	} forEach _gunStoresH;
};