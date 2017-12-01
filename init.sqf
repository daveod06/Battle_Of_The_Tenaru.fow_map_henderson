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

null = [searchlight_0] execVM "AL_searchlight\al_search_light_ini.sqf";
null = [searchlight_1] execVM "AL_searchlight\al_search_light_ini.sqf";
null = [searchlight_2] execVM "AL_searchlight\al_search_light_ini.sqf";
null = [searchlight_3] execVM "AL_searchlight\al_search_light_ini.sqf";
null = [searchlight_4] execVM "AL_searchlight\al_search_light_ini.sqf";
