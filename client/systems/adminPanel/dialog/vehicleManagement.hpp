
#define vehicleManagementDialog 12000
#define vehicleManagementListBox 12001
#define vehicleManagementVehicleCount 12002
#define vehicleWeaponsText 12003
#define vehicleUsersText 12004
#define vehicleDamageText 12005
#define vehicleSpeedText 12006
#define vehicleManagementCivButton 12007
#define vehicleManagementHeliButton 12008
#define vehicleManagementPlaneButton 12009
#define vehicleManagementTankButton 12010

class VehicleManagement {

	idd = vehicleManagementDialog;
	movingEnable = false;
	enableSimulation = true;
	onLoad = "[4] execVM 'client\systems\adminPanel\populateVehicles.sqf'";

	class controlsBackground {
		
		class MainBackground: w_RscPicture
		{
			idc = -1;
			text = "\ca\ui\data\ui_background_controlers_ca.paa";
			x = 0.1875 * safezoneW + safezoneX;
			y = 0.15 * safezoneH + safezoneY;
			w = 0.837499 * safezoneW;
			h = 0.661111 * safezoneH;
		};

		class menuTitle: w_RscText
		{
			idc = -1;
			text = "Vehicle Management";
			x = 0.203125 * safezoneW + safezoneX;
			y = 0.175 * safezoneH + safezoneY;
			w = 0.0844792 * safezoneW;
			h = 0.0448148 * safezoneH;
		};

		class amountOfVehicles: w_RscText
		{
			idc = vehicleManagementVehicleCount;
			text = "";
			x = 0.227604 * safezoneW + safezoneX;
			y = 0.22363 * safezoneH + safezoneY;
			w = 0.150 * safezoneW;
			h = 0.031 * safezoneH;
			
		};

		class weaponsText: w_RscText
		{
			idc = vehicleWeaponsText;
			text = "Weapons:";
			sizeEx = 0.030;
			x = 0.335 * safezoneW + safezoneX;
			y = 0.600 * safezoneH + safezoneY;
			w = 0.2 * safezoneW;
			h = 0.030 * safezoneH;
		};

		class speedText: w_RscText
		{
			idc = vehicleSpeedText;
			text = "Speed:";
			sizeEx = 0.030;
			x = 0.335 * safezoneW + safezoneX;
			y = 0.620 * safezoneH + safezoneY;
			w = 0.2 * safezoneW;
			h = 0.030 * safezoneH;
		};

		class usersText: w_RscText
		{
			idc = vehicleUsersText;
			text = "Users:";
			sizeEx = 0.030;
			x = 0.335 * safezoneW + safezoneX;
			y = 0.640 * safezoneH + safezoneY;
			w = 0.2 * safezoneW;
			h = 0.030 * safezoneH;
		};

		class damageText: w_RscText
		{
			idc = vehicleDamageText;
			text = "Damage:";
			sizeEx = 0.030;
			x = 0.335 * safezoneW + safezoneX;
			y = 0.660 * safezoneH + safezoneY;
			w = 0.2 * safezoneW;
			h = 0.030 * safezoneH;
		};
	};
	
	class controls {
		
		class vehicleListBox: w_RscListbox
		{
			idc = vehicleManagementListBox;
			onLBSelChanged="[1,_this select 1] execVM ""client\systems\adminPanel\importvalues.sqf"";";
			x = 0.227604 * safezoneW + safezoneX;
			y = 0.25463 * safezoneH + safezoneY;
			w = 0.545417 * safezoneW;
			h = 0.343889 * safezoneH;
		};
		
		class civButton: w_RscButton
		{
			idc = vehicleManagementCivButton;
			onButtonClick = "[0] execVM 'client\systems\adminPanel\populateVehicles.sqf'";
			text = "Cars";
			x = 0.2 * safezoneW + safezoneX;
			y = 0.750 * safezoneH + safezoneY;
			w = 0.06 * safezoneW;
			h = 0.04 * safezoneH;
		};

		class heliButton: w_RscButton
		{
			idc = vehicleManagementHeliButton;
			onButtonClick = "[1] execVM 'client\systems\adminPanel\populateVehicles.sqf'";
			text = "Helicopter";
			x = 0.26 * safezoneW + safezoneX;
			y = 0.750 * safezoneH + safezoneY;
			w = 0.06 * safezoneW;
			h = 0.04 * safezoneH;
		};

		class planeButton: w_RscButton
		{
			idc = vehicleManagementPlaneButton;
			onButtonClick = "[2] execVM 'client\systems\adminPanel\populateVehicles.sqf'";
			text = "Plane";
			x = 0.32 * safezoneW + safezoneX;
			y = 0.750 * safezoneH + safezoneY;
			w = 0.06 * safezoneW;
			h = 0.04 * safezoneH;
		};

		class tankButton: w_RscButton
		{
			idc = vehicleManagementTankButton;
			onButtonClick = "[3] execVM 'client\systems\adminPanel\populateVehicles.sqf'";
			text = "Tank";
			x = 0.38 * safezoneW + safezoneX;
			y = 0.750 * safezoneH + safezoneY;
			w = 0.06 * safezoneW;
			h = 0.04 * safezoneH;
		};

		class hackedVehiclesButton: w_RscButton
		{
			idc = -1;
			onButtonClick = "[4] execVM 'client\systems\adminPanel\populateVehicles.sqf'";
			text = "Show All";
			x = 0.44 * safezoneW + safezoneX;
			y = 0.750 * safezoneH + safezoneY;
			w = 0.06 * safezoneW;
			h = 0.04 * safezoneH;
		};

		class deleteButton: w_RscButton
		{
			idc = -1;
			onButtonClick = "execVM 'client\systems\adminPanel\deleteVehicle.sqf'";
			text = "Delete";
			x = 0.50 * safezoneW + safezoneX;
			y = 0.750 * safezoneH + safezoneY;
			w = 0.06 * safezoneW;
			h = 0.04 * safezoneH;
			color[] = {0.95,0.1,0.1,1};
		};

		class deleteAllButton: w_RscButton
		{
			idc = -1;
			onButtonClick = "execVM 'client\systems\adminPanel\deleteAllHackedVehicles.sqf'";
			text = "Delete All";
			x = 0.56 * safezoneW + safezoneX;
			y = 0.750 * safezoneH + safezoneY;
			w = 0.07 * safezoneW;
			h = 0.04 * safezoneH;
			color[] = {0.95,0.1,0.1,1};
		};
		
		class goToVehicleButton: w_RscButton
		{
			idc = -1;
			onButtonClick = "execVM 'client\systems\adminPanel\goToVehicle.sqf'";
			text = "Go To Vehicle";
			x = 0.62 * safezoneW + safezoneX;
			y = 0.750 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			h = 0.04 * safezoneH;
			color[] = {0.95,0.1,0.1,1};
		};
	};
};