/*
    FILE NAME            : INIT.SQF
    FILE VERSION         : PUBLIC BETA 0.5
    FILE LAST MOD.       : ANTHARIEL (19/05/2015)
    FILE REF.            : #ADMF02
    FILE STRING.         : Stringtable OK

    FILE ORIGINAL AUTHOR : ARMADEUS
*/




// Call some miscellaneous scripts :
// Call some ambience scripts :
call compile preprocessFileLineNumbers "Scripts\Ambiant\ShoterAnimation\init.sqf";
[] execVM "initIntro.sqf";
