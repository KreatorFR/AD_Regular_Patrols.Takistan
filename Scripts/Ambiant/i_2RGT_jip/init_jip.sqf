//Secondo Reggimento visit us: www.secondoreggimento.it
// Script by 2RGT Harlock 10-10-2013
// V0.5 init JIPT
//----------------------------------------
Player setVariable ["i2RGT_CanJip",true,true];
sleep 1;

systemChat "2RGT JiP Initializing...";

if (!isServer) then {	
	sleep 10;
  if (time > (2*60)) then {execVM "i_2RGT_jip\jip_fnc.sqf";};// Teleport avaible after 2 minutes
};