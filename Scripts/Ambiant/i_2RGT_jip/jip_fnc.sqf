//Secondo Reggimento visit us: www.secondoreggimento.it
// Script by 2RGT Harlock 10-10-2013
// V0.5 init JIPT
//----------------------------------------
onKeyPress = compile preprocessFileLineNumbers "i_2RGT_jip\TP_fnc.sqf";
sleep 5;

if (player getVariable "i2RGT_CanJip") then { 

Private["_Keypressed"];
Player setVariable ["i2RGT_CanJip",false,true];

sleep 5;

			_Keypressed = (findDisplay 46) displayAddEventHandler ["KeyDown","_this call onKeyPress"];
			10 cutText ["Press F11 within the next 2 minutes to teleport to your squad/allies","PLAIN",2];
			Sleep 130; // Teleport avaible for 2 minutes
			(findDisplay 46) displayRemoveEventHandler ["KeyDown",_Keypressed]; onKeyPress = {false};

	};
