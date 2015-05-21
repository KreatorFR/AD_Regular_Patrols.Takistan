/*
    FILE NAME            : MAIN_OBJECTIS.SQF
    FILE VERSION         : PUBLIC BETA 0.5
    FILE LAST MOD.       : ANTHARIEL (19/05/2015)
    FILE REF.            : #ADMF03
    FILE STRING.         : Stringtable OK

    FILE ORIGINAL AUTHOR : ARMADEUS
*/


private ["_target1","_target2","_target3","_MainObjectifs","_targetArray"];
eastSide = createCenter east;


_MainObjectifs = ["OB1","OB2","OB3","OB4","OB5","OB6","OB7","OB8","OB9","OB10"];

_Objectif1 = _MainObjectifs call BIS_fnc_selectRandom;
_MainObjectifs = _MainObjectifs - [_Objectif1];
_Objectif2 = _MainObjectifs call BIS_fnc_selectRandom;
_MainObjectifs = _MainObjectifs - [_Objectif2];
_Objectif3 = _MainObjectifs call BIS_fnc_selectRandom;
_targetArray = [_Objectif1,_Objectif2,_Objectif3];


while { count _targetArray > 0 } do {
	sleep 1;

	ActiveObjectif = _targetArray call BIS_fnc_selectRandom;

	{_x setMarkerPos (getMarkerPos ActiveObjectif);} forEach ["ObjectifCircle","ObjectifMarker"];
	"ObjectifMarker" setMarkerText format["%1",ActiveObjectif];
	sleep 1;

	_co = createTrigger ["EmptyDetector", getMarkerPos ActiveObjectif];
	_co setTriggerArea [PARAMS_ObjectifSize, PARAMS_ObjectifSize, 0, false];
	_co setTriggerActivation ["EAST", "PRESENT", false];
	_co setTriggerStatements ["this","",""];

};