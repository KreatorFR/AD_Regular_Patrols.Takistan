scriptName "bargate";
/*--------------------------------------------------------------------
   file: bargate.sqf
   ==================
   Author: Tom_48_97 <tom_48_97@me.com>
   Description:
--------------------------------------------------------------------*/
#define __filename "bargate.sqf"

if !(_this isKindOf "Land_BarGate_F") exitWith {};

while {alive _this} do {
   waitUntil {sleep 1; count ((getposATL _this) nearEntities [["Car", "Motorcycle", "Tank"],30]) > 0};
   if (_this animationPhase "Door_1_rot" == 0) Then {
      _this animate ["Door_1_rot", 1];
   };
   waitUntil {sleep 1; count ((getposATL _this) nearEntities [["Car", "Motorcycle", "Tank"],30]) == 0};
   if (_this animationPhase "Door_1_rot" == 1) Then {
      _this animate ["Door_1_rot", 0];
   };
};