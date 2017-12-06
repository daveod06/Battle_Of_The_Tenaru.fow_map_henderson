//EOS Dynamic Combat System
[]execVM "scripts\eos\OpenMe.sqf";

0 = [] spawn
{
while{true}do
{
playMusic "01";
sleep 140.0; //where xyz the duration of the music file is
};
};

//null = [searchlight_0] execVM "AL_searchlight\al_search_light_ini.sqf";
//null = [searchlight_1] execVM "AL_searchlight\al_search_light_ini.sqf";
//null = [searchlight_2] execVM "AL_searchlight\al_search_light_ini.sqf";
//null = [searchlight_3] execVM "AL_searchlight\al_search_light_ini.sqf";
//null = [searchlight_4] execVM "AL_searchlight\al_search_light_ini.sqf";


EDstraker_fnc_setBanzaiMode = {
	if(!isServer)exitWith{};
	params ["_group",["_enable",false]];

	if (_enable) exitWith {
	
		{
			_unit = _x;		
			{_unit disableAI _x} foreach ["AUTOCOMBAT","TARGET","AUTOTARGET","SUPPRESSION","COVER"];
			_unit setbehaviour "AWARE";//in case unit is already in combat
		} forEach units _group;
	};

	{	
		_unit = _x;
		{_unit enableAI _x} foreach ["AUTOCOMBAT","TARGET","AUTOTARGET","SUPPRESSION","COVER"];
		_unit setbehaviour "COMBAT";
	} forEach units _group;
	true
};


Sabersnack_fnc_setUSMCSkills = {
	if(!isServer)exitWith{};
	params ["_group"];
	
	{_x setSkill ["spotDistance",1.0]} forEach units _group;
	{_x setSkill ["spotTime",1.0]} forEach units _group;
	{_x setSkill ["commanding",1.0]} forEach units _group;
	{_x setSkill ["courage",1.0]} forEach units _group;

	true
};

_skills = [us_squad_0] call Sabersnack_fnc_setUSMCSkills;
_skills = [us_squad_1] call Sabersnack_fnc_setUSMCSkills;
_skills = [us_squad_2] call Sabersnack_fnc_setUSMCSkills;
_skills = [us_squad_3] call Sabersnack_fnc_setUSMCSkills;
_skills = [us_squad_4] call Sabersnack_fnc_setUSMCSkills;
_skills = [us_squad_5] call Sabersnack_fnc_setUSMCSkills;


//_skills = [us_squad_0] call Sabersnack_fnc_setUSMCSkills;
//_banzai = [jap_squad_0,true] call EDstraker_fnc_setBanzaiMode;
//_banzai = [jap_squad_0] call EDstraker_fnc_setBanzaiMode;