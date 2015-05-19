//Secondo Reggimento visit us: www.secondoreggimento.it
// Script by 2RGT Harlock 10-10-2013
// V0.5 init JIPT
//----------------------------------------
	Private["_target","_team","_Tleader","_tmpos","_tmposALT","_tmposX","_tmposY","_tmposZ"];
		if ((_this select 1) == 87) then{

			_Tleader =(leader player);
			_target= objnull; // Not valid leader
			if (_Tleader == player) then
			{
				_team = units (group player);
				{
					if ((alive _x)&&(_x!=player)) then {
						_target= _x;
					};
					
				} foreach _team;
				if (isnull _target) then
				{
					_team = allunits;
					{
						if ((alive _x) && (isplayer _x)&&(_x!=player)) then {
							if ((side _x) == playerside) then {
								 _target= _x;
							};
						};
					} foreach _team;
				};
			} else { _target= _Tleader};
				if (!isnull _target) then
				{
					_tmpos= getPosATL _target;
					_tmposX=_tmpos select 0; _tmposY=_tmpos select 1; _tmposZ=_tmpos select 2;
					_tmpos set[0,(_tmposX+ (random 2) -1)];
					_tmpos set[1,(_tmposY+ (random 2) -1)];
					
					if (_tmposZ > 1) then {
					
						//Detect buildings
						_tmposALT=_tmpos findEmptyPosition [1,30, typeof player];
						if ((count _tmposALT) > 1) then {_tmpos=_tmposALT};
					};	
				
				
				};
				player setPosATL _tmpos; Player setVariable ["i2RGT_CanJip",false,true]; onKeyPress = {false};
			};
		
