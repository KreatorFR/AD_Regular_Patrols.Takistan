/*
    FILE NAME            : INITINTRO.SQF
    FILE VERSION         : PUBLIC BETA 0.5
    FILE LAST MOD.       : KREATOR (19/05/2015)
    FILE REF.            : #ADMF02
    FILE STRING.         : Stringtable OK

    FILE ORIGINAL AUTHOR : ARMADEUS
*/


hint (localize "STR_AD_resume");

//Intro NOIR
cutText ["","BLACK FADED"];
sleep 2;

//INFOS OPE, DATE, LOCALISATION
[str ("Takistan"), str("Foreign Operations")] spawn BIS_fnc_infoText;
sleep 4;

//Fin du NOIR
cutText ["","BLACK IN"];
