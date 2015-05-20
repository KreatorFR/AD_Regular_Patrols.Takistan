
private ["_camera"];

titleCut [" ", "BLACK IN", 3];

//_camera cameraeffect ["internal","FRONT", "rendertarget1"];

_camera = "camera" camCreate [(getposASL aan_cam select 0), (getposASL aan_cam select 1), (getpos aan_cam select 2) + 1.71];
_camera camSetFov 0.2;
_camera camSetTarget ppda;
_camera camCommit 0;
_camera cameraEffect ["internal", "FRONT"];

_titletext = "<t size='2'>BULLETIN METEO TAKISTAN</t><br />Prochaines 20 minutes :"+rw2_weatherCurrentName+"    Prochaines 40 minutes :"+rw2_weatherNextName;
title = parsetext _titletext;
scroll = parsetext "WORLD WEATHER  |  New York, NY : Sunny 30?  |  Beijing, China Cloudy 32?  |  Tokyo, Japan : Showers 29?  |  Sydney, Australia : Sunny 20?  |  Johannesburg, South Africa : Cloudy 18?  |  Shanghai, China : Cloudy 27?  |  Berlin, Germany : Cloudy 28?  |  Rio de Janeiro, Brazil : Cloudy 26?  |  Rome, Italy : Sunny 31?  |  Copenhagen, Denmark : Cloudy 21?";
nul = [title,scroll] spawn BIS_fnc_AAN;

["""AAN WEATHER REPORT""",0,.84,5,1] spawn bis_fnc_dynamictext;

ppda playMove "AidlPercSnonWnonDnon_talk1"; // AidlPercSnonWnonDnon_talk1

sleep 17;

(uinamespace getvariable "BIS_AAN") closedisplay 1;

 titlecut ["","BLACK IN",2];
_camera cameraEffect ["terminate", "BACK"];
camDestroy _camera;

sleep 1;

//_camera cameraeffect ["internal","FRONT", "rendertarget1"];
