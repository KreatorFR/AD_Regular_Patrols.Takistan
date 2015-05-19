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
call compile preprocessFile "Scripts\Ambiant\SHK_cruise\fn_cruiseSpawn.sqf";
call compile preprocessFile "Scripts\Ambiant\=BTC=_revive\=BTC=_revive_init.sqf";
call compile preprocessFile "Scripts\Ambiant\=BTC=_TK_punishment\=BTC=_tk_init.sqf";
call compile preprocessFile "i_2RGT_jip\init_jip.sqf";
[] execVM "initIntro.sqf";
