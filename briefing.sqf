player createDiarySubject ["TKG_Wasteland_Rules", "Rules"];
player createDiarySubject ["TKGaming.com", "Help Panel"];
player createDiarySubject ["changelog", "Change Log"];
player createDiarySubject ["wasteland", "What is Wasteland?"];

player createDiaryRecord["changelog",
[
"Chernarus Changes",
"
<br/>
		[Fixed] - Server performance issues.<br/>
		[Fixed] - Vehicle cleanup.<br/>
		[Fixed] - Team locking time which is actually 3 mins now.<br/>
		[Added] - Towing Limit Now Set to 1 Vehicle and Cars can Tow<br/>
		[Added] - Some Static Helis<br/>
		[Added] - Spawn Beacons<br/>
		[Added] - Client Markers<br/>
		[Added] - Outpost Mission<br/>
		[Added] - Concurrent Missions<br/>
		[Added] - Welcome Message<br/>
		[Added] - Admin Levels<br/>
		[Added] - More Ammo Types<br/>
		[Added] - More Player Roles, Now 120 Total<br/>
		[Changed] - Object List to have more Objects<br/>
		[Changed] - Balanced Mission Ammo Caches<br/>
		[Changed] - Faction Starting Pistols now more appropriate<br/>
		[Changed] - Missions Rewriten to Address Multiple Bugs<br/>
		[Redesigned] - Gun Store<br/>
		[Redesigned] - General Store<br/>
		[Fixed] - Animation not working correctly<br/>
		[Fixed] - Money Drop Bug and Exploit<br/>
		[Fixed] - JIP Loading Bug<br/>
		[Fixed] - AI Running to Other Mission<br/>
		[Fixed] - Numerous minor bugs and tweeks<br/>
		[Added] - Body Clean Up after a short period.<br/>
		[Added] - Mobile Radar Station Mission.<br/>
		[Changed] - Vehicle Clean made less aggressive.<br/>
		[Changed] - Server Spawning Less Aggressive.<br/>
		[Fixed] - Drinking and Eating While in the car animation.<br/>
        [Fixed] - Other minor bugs.<br/>
		[Added] - Three new objects.<br/>
		[Added] - More anti hack for vehicles.<br/>
		[Added] - Check to make sure missions don't pop up in the same place.<br/>
		[Added] - Static Boats.<br/>
		[Changed] - Increased length of welcome message.<br/>
		[Changed] - Mission failover to 60 mins.<br/>
		[Changed] - Increased delay for body clean up to 15 mins.<br/>
		[Fixed] - Vehicle respawn script.<br/>
		[Removed] - Some debuging.<br/>
		[Added] - Default weapon crates have been nerfed and more gun variations added.<br/>
		[Added] - Static helis now spawn in random locations.<br/>
		[Added] - When a static heli fails to spawn, a wreck is spawned instead.<br/>
		[Added] - Cammo nets have been added to the general store.<br/>
		[Fixed] - Players are now able to buy LMG's at the gun store.<br/>
		[Fixed] - Weapons now have varying sell prices relative to gun cost.<br/>
		[Fixed] - When buying a full jerry can, the empty one is automatically removed from player inventory.<br/>
		[Changed] - Various balance and price tweaks made to stores.<br/>
		[Changed] - Chernarus is now in summer time. Longer days to be had by all.<br/>
		[Changed] - Player starting money reduced to $100.<br/>
		[Added] - Groups.<br/>
        [Added] - Body and Object clean up.<br/>
		[Added] - Static helis now spawn in random locations.<br/>
		[Added] - Default weapon crates have been nerfed and more gun variations added.<br/>
		[Added] - When a static heli fails to spawn, a wreck is spawned instead.<br/>
		[Added] - Player Tags thanks to [OcUK]Melbo.<br/>
		[Added] - Yellow tint, falling ash and dust for wasteland.<br/>
		[Added] - Cammo nets have been added to the general store.<br/>
        [Fixed] - Fix vehicle cleanup and respawn.<br/>
		[Fixed] - Players are now able to buy LMG's at the gun store.<br/>
		[Fixed] - Weapons now have varying sell prices relative to gun cost.<br/>
		[Fixed] - When buying a full jerry can, the empty one is automatically removed from player inventory.<br/>
		[Changed] - Town marker procedural generation optimised for reduced start-up lag.<br/>
		[Changed] - Admin menu can now remove player teamlock and teamkiller, also added a three tier permission system for greater flexibility.<br/>
		[Changed] - Player starting money reduced to $100.<br/>
		[Changed] - Various balance and price tweaks made to stores.<br/>
		[Changed] - Chernarus is now in summer time. Longer days to be had by all.<br/>
		[Added] - TKG Scrips added to remove dead bodys and objects every 10 minutes and TWS removal.<br/>
		[Fixed] - Flickering Icons.<br/>
		[Fixed] - Spawning with guns.<br/>
		[Fixed] - Spawning in a group.<br/>
		[Changed] - Removed Green Icons From Groups.<br/>
		[Added] - Better player join flow.<br/>
		[Added] - Independent groups now have icons back.<br/>
		[Fixed] - Disapearing icons on players who have been alive a long time.<br/>
		[Fixed] - Player Setup and Initialization.<br/>
		[Fixed] - Joining with a group.<br/>
		[Fixed] - Feedback messages missing.<br/>
		[Fixed] - Money dupe.<br/>
		[Changed] - Time Sync to just sync time and not accelerate it.<br/>
		[Added] - When spawning on a spawn beacon, you come in via HALO jump.<br/>
		[Added] - New store interaction system.<br/>
		[Added] - Supply drop mission written by OCUK MarKeR and tweaked by 404Games.<br/>
		[Added] - Lots of new mission spawn locations.<br/>
		[Fixed] - Floating crates/objects sometimes appearing above Novy.<br/>
		[Fixed] - AI Team defend script. Be careful, they now actually use their mounted weapons!<br/>
		[Fixed] - Vehicles no longer spawn in silly places / silly angles.<br/>
		[Fixed] - Not able to interact with stores sometimes.<br/>
		[Fixed] - Outpost having overpowered weapons.<br/>
		[Fixed] - Other misc fixes that have been mentioned on the forums, Thanks for your help!<br/>
		[Improved] - Vehicle HUD to now show the players respective role within the vehicle.<br/>
		[Improved] - Mission spawning system thanks to Kettlewell.<br/>
		[Fixed] - AI getting into mission vehicles.<br/>
		[Fixed] - Fixed some issues with missions.<br/>
		[Fixed] - Added in some defines for missions to easily edit the times.<br/>
		[Added] - Most interactions now have a Cancel Action option.<br/>
		[Fixed] - Abandoned Truck showing up as recon vehicle.<br/>
		[Fixed] - Object lock now functions correctly.<br/>
		[Fixed] - Spawn beacon, radar, object etc unlock/lock actions now stop on death.<br/>    
		[Fixed] - The mission RPT errors.<br/>
		[Fixed] - The vehicle count RPT error.<br/>
		[Fixed] - mission_Outpost timeout.<br/>
		[Changed] - Gun and General stores no longer have over-powered super radars.<br/>
		[Changed] - Player now starts with only 1x food and water.<br/>
		[Changed] - Added more variation to vehicle weapons spawns and removed OP weapons.<br/>
		[Enhancement] - Refuel and Repair vehicle functions have been improved.<br/>
		[Enhancement] - The mission RPT's to have more information to help with debuging.<br/>
		[Enhancement] - Server startup optimizations.<br/>
		[Enhancement] - General wasteland mission optimizations; many changes to improve performance.<br/>
		[Enhancement] - Made some changes to defend area to make the AI more aware.<br/>
		[Enhancement] - The mission system is now all pre compiled and steamlined to make it run smoother.<br/>
		[Enhancement] - Mission will no longer run the same one twice.<br/>
"
]
];

player createDiaryRecord["changelog",
[
"1.0 (TKG)",
"
<br/>
		[Added] - Gun Store Anti-Kill System.<br/>
		[Removed] - Yellow Ash/Dust overlay look.<br/>
		[Fixed] - Removed TWS from Gun Store.<br/>
"
]
];

player createDiaryRecord["changelog",
[
"1.5 (TKG)",
"
<br/>
		[Added] - Display players in each town.<br/>
		[Added] - Tech level access.<br/>
		[Changed] - Cleaned up some text display.<br/>
		[Fixed] - Typo in xml string file.<br/>
"
]
];

player createDiaryRecord["changelog",
[
"1.7 (TKG)",
"
<br/>
		[Added] - Paycheck system to gain more money overtime.<br/>
		[Removed] - Show enemy locations in towns when there is no friendlies in the town.<br/>
		[Fixed] - Show independants in your group as friendly in towns.<br/>
"
]
];

player createDiaryRecord["changelog",
[
"1.8 (TKG)",
"
<br/>
		[Changed] - Enemies won't show up in Gun store on the map.<br/>
		[Changed] - Enemies won't show up in General store on the map.<br/>
		[Removed] - 404Wasteland body delete script. We have our own in place.<br/>
		[Fixed] - Animation when eating or drinking.<br/>
		[Fixed] - When killing a player. he won't be kicked from the server.<br/>
		[Fixed] - Returns 75% of money back when selling a weapon.<br/>
		[Fixed] - Icosn now display properly based on value of blood,food and water.<br/>
		[Added] - Few more objects to spawn.<br/>
		[Added] - Binoculars, Range Finders and Nightvision now spawns in each weapon crate.<br/>
		[Added] - The official TKG blood,food,water icons for the UI.<br/>
"
]
];

player createDiaryRecord["changelog",
[
"1.9 (TKG)",
"
<br/>
		[Fixed] - You can now sell your gun in the gun store.<br/>
		[Added] - Now shows who drove over you.<br/>
		[Changed] - New admin panel has been set up.<br/>
		[Fixed] - Shows proper money value when selling your weapon.<br/>
		[Changed] - Selling starter weapons only give you 25 bucks.<br/>
		[Fixed] - Selling weapons not in the gun store list give you 100 bucks.<br/>
		[Added] - Advertise system has been added. Shows an advert ever 30 min.<br/>
"
]
];

player createDiaryRecord["changelog",
[
"1.9a (TKG)",
"
<br/>
		[Added] Rules on the objective log when opening map<br/>
		[Changed] Added new Wasteland admins<br/>
		[Changed] Some string clean-up<br/>
"
]
];

player createDiaryRecord["changelog",
[
"2.0 (TKG)",
"
<br/>
		[Update] - GUI Icons.<br/>
		[Update] - The welcome screen shows more information with better colors.<br/>
		[Changed] - Money drop amount in Player menu.<br/>
		[Changed] - Tweeked Gun Store Hit ignore script.<br/>
		[Changed] - Paycheck timer increased.<br/>
		[Changed] - Vehicles now start with 20% fuel.<br/>
		[Changed] - Gunstore no-kill range.<br/>
		[Changed] - Techs can now delete and respawn all vehicles on teh map.<br/>
		[Changed] - Some Admin scripting cleanup.<br/>
		[Fixed] - Gunstore shooting script now works.<br/>
		[Fixed] - Shows globally who drove over a player.<br/>
		[Added] - You die if you kill someone inside the Gun Store area.<br/>
		[Added] - Admins can now teleport to players or teleport players to them.<br/>
		[Added] - Chat rules to the rules section on map.<br/>
		[Added] - Shows when you are in 500m of a Gun Store.<br/>
		[Removed] - Debug from admins.<br/>
		[Removed] - Gun store and general store circles.<br/>
"
]
];

player createDiaryRecord["changelog",
[
"2.0a (TKG)",
"
<br/>
		[Fixed] - Deleting Vehicles and Players if you kill a player inside the gun store area with a Armed Vehicle.<br/>
		[Fixed] - Near Gun Store Message display time increased.<br/>
		[Changed] - New vehicles has been added to the Wasteland array.<br/>
"
]
];

player createDiaryRecord["changelog",
[
"2.1 (TKG)",
"
<br/>
		
		[Added] - Donation Starter gear.<br/>
		[Added] - Spawn on Random Store now.<br/>
		[Added] - Kick option for Admins.<br/>
		[Added] - Helicopters now have weapons inside of their gear.<br/>
		[Changed] - 12 helicopters spawn instead of 8.<br/>
		[Changed] - Helicopters start with 20% fuel.<br/>
		[Changed] - Helicopters have a chance of being damaged.<br/>
		[Changed] - Near Gun Store Message time increased.<br/>
		[Updated] - Advertising Information.<br/>
		[Fixed] - Loading image.<br/>
"
]
];


player createDiaryRecord["TKGaming.com",
[
"Credits",
"
<br/>
	Contributors:<br/><br/>
	TKG Wasteland Developers:<br/>
	- Leavaris<br/>
	- Zuen<br/><br/>
	
	
	Credit:<br/>
	- Tonic (original game-mode)<br/>
	- Deadbeat (404Developers)<br/>
	- Costlyy (404Developers)<br/>
	- Pulse (404Developers)<br/>
	<br/>
	Server Host - TKGaming.com<br/>
"
]
];

player createDiaryRecord["TKGaming.com",
[
"Bug and Cheat Reporting",
"
<br/>
	Found a bug? Please report it at: http://www.tkgaming.com Or at the original authors website (404)<br/><br/>
	Please remeber this game-mode is in continuous development and there will be bugs. 
"
]
];

player createDiaryRecord["TKGaming.com",
[
"Teamspeak",
"
<br/>
	There is a public Teamspeak 3 server available for players of this server.<br/><br/>
	Teamspeak IP: 176.31.233.192<br/><br/>
"
]
];

player createDiaryRecord["TKG_Wasteland_Rules",
[
"Gun Store Rules",
"
<br/>
	Do not shoot inside the Gun store area!<br/><br/>
	Shooting from outside the Gun Store area into the Gun Store area will result in a 1 Day ban.<br/><br/>
	Driving over people inside the Gun Store area will result in a 1 Day ban.<br/><br/>
	Camping the gun store area and killing players right outside the 300m Gun Store area will result in a 1 Day ban.<br/><br/>
	Shooting from outside the area into the area will get you killed.<br/><br/>
	<br/>
	System Warnings:<br/>
	Warning 1: Deleting all your weapons.<br/>
	Warning 2: Deleting all your weapons.<br/>
	Warning 3: You will be kicked from the server.<br/>
"
]
];

player createDiaryRecord["TKG_Wasteland_Rules",
[
"Chat Rules",
"
<br/>
	Do not use bad language. We have a system installed that will give you warnings for bad language. After your 3rd warning, you will then be kicked from the server.<br/><br/>
	Only talk in English in Global, Side chat. We are a Multi-Gaming community and so we can not allow the chat logs to be filled with all sorts of languages.<br/>
"
]
];

player createDiaryRecord["TKG_Wasteland_Rules",
[
"Hacked Vehicles",
"
<br/>
	Driving or flying in a hacked vehicle will result in a ban.<br/>
	Playing with a friend that hacked will result in a ban as well.<br/>
"
]
];

player createDiaryRecord["TKG_Wasteland_Rules",
[
"What to do when banned",
"
<br/>
	If you are banned from the server for whatever reason. You can make a ban appeal on the forums at TKGaming.com<br/><br/>
	Explain the reason of the ban. Who banned you and on what server you are banned.<br/><br/>
	Being rude in your appeal will result in us mking it a permanent ban on all servers. Respect us and we will respect you.<br/><br/>
	For a faster response, join our TeamSpeak channel and talk to one of our Staff members. Being rude in TeamSpeak will result in a permanent ban.<br/><br/>
"
]
];

player createDiaryRecord["wasteland",
[
"Hints & Tips",
"
<br/>
    At the start of the game, spread out and find supplies before worrying about where to establish a meeting place or a base, supplies are important and very valuable.<br/><br/>
    When picking a base location, it is best advised to pick a place that is out of the way and not so obvious such as airports, cities, castles, etc.<br/><br/>
    If you spawn in an area with no vehicles or supplies in the immediate area, DO NOT just click respawn from the pause menu, chances are if you search an area of a few hundred meters, you will find something.<br/><br/>
    Always be on the lookout for nightvision. Two pairs are located in the Large Cache, and there are pairs scattered throughout cars. You can also purchase them from the gunstores. Nighttime without them SUCKS, and if you have them, you can conduct stealth raids on enemy bases under the cover of complete darkness.<br/><br/>
    When you set up a base, never leave your supplies unguarded, one guard will suffice, but it is recommended you have at least 2, maybe 3 guards at base at all times.<br/><br/>
    The helicopter from the side mission spawns with no fuel, so do not make a mad dash for the chopper unless you are armed and plan to protect it, or have some fuel which can be found in the fuel truck, or in the palated barrels from the abandoned base.<br/>
    There are very aggressive AI characters that spawn with most side missions and will protect the mission objectives with deadly force, be aware of them.<br/>
"
]
];

player CreateDiaryRecord["wasteland",
[
"WELCOME TO THE WASTELAND",
"
The Wasteland is a team versus team versus team sandbox survival experience. The objective of this mission is to rally your faction, scavenge supplies, weapons, and vehicles, and destroy the other factions. It is survival at its best! Keep in mind this is a work in progress, please direct your reports to Deadbeat.
<br/><br/>

FAQ<br/>
Q. What am I supposed to do here?<br/>
A. See the above description<br/>
<br/>
Q. Where can I get a gun?<br/>
A. Weapons are found in one of three places, first in ammo caches that randomly spawn around the map inside and outside buildings, and second, in the gear section of the vehicles, which also randomly spawn around the map. The last place to find a gun would be at the gunshops located throughout the map. You can also find them on dead players whose bodies have not yet been looted.
<br/><br/>
Q. What are the colored circles on the map?<br/>
A. The colored circles represent power grids, each color with its own transformer or substation. If you tamper with the substation, the grid will lose power, it will be very inconvenient for anyone looking through the town at night.
<br/><br/>
Q. Why is it so dark, I cant see.<br/>
A. The server has a day/night cycle just like in the real world, and as such, night time is a factor in your survival. It is recommended that you find sources of light or Night Vision Goggles before the darkness sets in. You can find night vision goggles in vehicles, or you can purchase them at the gunshops.
<br/><br/>
Q. Is it ok for me to shoot my team mates?<br/>
A. If you are member of BLUFOR or OPFOR teams, then you are not allowed to shoot or steam items and vehicles from other players. If you play as Independent, you are free to engage anyone as well as team up with anyone you want.
<br/><br/>
Q. Whats with the teapots and big bags?<br/>
A. This game has a food and water system that you must stay on top of if you hope to survive. You can collect food and water from water barrels, food stands, or dead players bodies. Food and water will randomly spawn around the map. Other items that will randomly spawn are fuel cans for refueling vehicles, medkits for healing yourself, and repair kits for repairing vehicles. Each of these is a one-time-only use item.
<br/><br/>
Q. I saw someone breaking a rule, what do I do?<br/>
A. Simply go into global chat and get the attention of one of the admins and let them know who the offender was and what they did and they will be dealt with swiftly.
<br/>
"]
];