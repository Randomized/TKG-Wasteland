//	@file Version: 1.0
//	@file Name: onHit.sqf
//	@file Author: Zuen
//	@file Created: 07/01/2013 14:30
//	@file Args:

_radiusWarning = 500;																	//The radius from the Gun Stores
_gunStoresWarning = ["gs1", "gs2", "gs3", "gs4"];										//The Gun Stores Array

while {true} do
{
	{
		_unitH = missionNamespace getVariable (_gunStoresWarning select _forEachIndex);	//Getting the values of each Gun Store from the mission.sqm file
		
		if(player distance _unitH <= _radiusWarning) then {								//If the player is in the Gun Store radius
		
			MessageText = format["You are within 500m of a Gun Store area!"];
			titleText [MessageText, "PLAIN"];
			sleep 3;
			
			//Clear Message
			titleText ["", "PLAIN"];
			sleep 10;
		};
	} forEach _gunStoresWarning;
};