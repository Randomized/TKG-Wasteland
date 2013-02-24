//	@file Version: 1.0
//	@file Name: optionSelect.sqf
//	@file Author: [404] Deadbeat, [TKG] Zuen
//	@file Created: 20/11/2012 05:19
//	@file Args:

#define serverTechMenu_option 50009
#define serverAdminMenu_option 50007
#define modMenu_option 50005
#define debugMenu_option 50003
#define adminMenu_option 50001
disableSerialization;

private [
	"_panelType",
	"_displayAdmin","_displayMod","_displayServerAdmin","_displayServerTech","_displayDebug",
	"_modSelect","_adminSelect","_serverAdminSelect","_serverTechSelect","_debugSelect"
];

_uid = getPlayerUID player;

if ((_uid in Moderator) OR (_uid in Administrator) OR (_uid in Technician) OR (_uid in GlobalStaff)) then {

	_panelType = _this select 0;

	_displayAdmin = uiNamespace getVariable "AdminMenu";
	_displayMod = uiNamespace getVariable "ModMenu";
	_displayServerAdmin = uiNamespace getVariable "ServerAdminMenu";
	_displayServerTech = uiNamespace getVariable "ServerTechMenu";
	_displayDebug = uiNamespace getVariable "DebugMenu";

	_modSelect = _displayMod displayCtrl modMenu_option;
	_adminSelect = _displayAdmin displayCtrl adminMenu_option;
	_serverAdminSelect = _displayServerAdmin displayCtrl serverAdminMenu_option;
	_serverTechSelect = _displayServerTech displayCtrl serverTechMenu_option;
	_debugSelect = _displayDebug displayCtrl debugMenu_option;

	switch (_panelType) do
	{
		case 0: //Moderator panel
		{
			switch (lbCurSel _modSelect) do
			{
			    case 0: //Player Menu
				{
	                closeDialog 0;
					execVM "client\systems\adminPanel\actions\playerMenu.sqf";
				};
				case 1: //Basic Vehicle Menu
				{
					closeDialog 0;
					execVM "client\systems\adminPanel\actions\vehicleManagement.sqf";
				};
			};
		};
		case 1: //Administrator panel
		{
			switch (lbCurSel _adminSelect) do
			{
			    case 0: //Player Menu
				{
	                closeDialog 0;
					execVM "client\systems\adminPanel\actions\playerMenu.sqf";
				};
				case 1: //Full Vehicle Management
				{
	                closeDialog 0;
					execVM "client\systems\adminPanel\actions\vehicleManagement.sqf";
				};
			    case 2: //Tags
			    {
					execVM "client\systems\adminPanel\actions\playerTags.sqf";
			    };
			    case 3: //Teleport
			    {
	                closeDialog 0;    
	                hint "Click on map to teleport";
	                onMapSingleClick "vehicle player setPos _pos; onMapSingleClick '';true;";
			    };
	            case 4: //Money
			    {      
					player setVariable["cmoney", (player getVariable "cmoney")+1000,true];
			    };
				case 5: //Access Proving Grounds
			    {
	                closeDialog 0;      
					createDialog "balca_debug_main";
			    };
			};
		};
	    case 2: //Global Staff panel
	    {
			switch (lbCurSel _serverAdminSelect) do
			{
			    case 0: //Player Menu
				{
	                closeDialog 0;
					execVM "client\systems\adminPanel\actions\playerMenu.sqf";
				};
				case 1: //Full Vehicle Management
				{
	                closeDialog 0;
					execVM "client\systems\adminPanel\actions\vehicleManagement.sqf";
				};
			    case 2: //Tags
			    {
					execVM "client\systems\adminPanel\actions\playerTags.sqf";
			    };
			    case 3: //Teleport
			    {
	                closeDialog 0;    
	                hint "Click on map to teleport";
	                onMapSingleClick "vehicle player setPos _pos; onMapSingleClick '';true;";
			    };
	            case 4: //Money
			    {      
					player setVariable["cmoney", (player getVariable "cmoney")+1000,true];
			    };
	            case 5: //Debug Menu
			    {   
	            	closeDialog 0;   
	                execVM "client\systems\adminPanel\actions\loadDebugMenu.sqf";
			    };
				case 6: //Access Proving Grounds
			    {
	                closeDialog 0;      
					createDialog "balca_debug_main";
			    };
			};
	    };
	    case 3: //Debug panel
	    {      
			switch (lbCurSel _debugSelect) do
			{
			    case 0: //Access Gun Store
				{
	                closeDialog 0;
					execVM "client\systems\gunStore\loadGunStore.sqf";
				};
				case 1: //Access General Store
				{
	                closeDialog 0;
					execVM "client\systems\generalStore\loadGenStore.sqf";
				};
			    case 2: //Access Respawn Dialog
			    {
	                closeDialog 0;
					true spawn client_respawnDialog;
			    };
			    case 3: //Access Proving Grounds
			    {
	                closeDialog 0;      
					createDialog "balca_debug_main";
			    };
	            case 4: //Restart Function
			    {      
					hint format["Server FPS: %1",serverFPS];
			    };
	            case 5: //Test Function
			    {      
					if(group player == grpNull) then
	                {
	                    hint "not in a group";
	                } else {
	                    _unitCount = count units group player;
	                	hint format["In a group of %1 players", _unitCount];    
	                };
			    };
			};		
	    };
		case 4: //Server Technician panel
	    {
			switch (lbCurSel _serverTechSelect) do
			{
				case 0: //Player Menu
				{
	                closeDialog 0;
					execVM "client\systems\adminPanel\actions\playerMenu.sqf";
				};
				case 1: //Full Vehicle Management
				{
	                closeDialog 0;
					execVM "client\systems\adminPanel\actions\vehicleManagement.sqf";
				};
			    case 2: //6 hours Skip
			    {
	                closeDialog 0;    
	                hint "Skipped 6 Hours";
	                skipTime 6;
			    };
				case 3: //Teleport
			    {
	                closeDialog 0;    
	                hint "Click on map to teleport";
	                onMapSingleClick "vehicle player setPos _pos; onMapSingleClick '';true;";
			    };
	            case 4: //Money
			    {      
					closeDialog 0;
					player setVariable["cmoney", (player getVariable "cmoney")+1000,true];
			    };
				case 5:// Reload all Vehicles
				{
					closeDialog 0;
					execVM "client\systems\adminPanel\actions\reloadAllVehicles.sqf";
				};
			};
	    };
	};
} else {
  exit;  
};