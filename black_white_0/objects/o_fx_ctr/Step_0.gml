if zoom{
if !audio_is_playing(snd_wait_bell) audio_play_sound(snd_wait_bell,1,false);
audio_sound_gain(snd_wait_bell,.8,1000);
o_depth_sorter._enabled = false;
fx_set_parameter(zoom_fx,"g_ZoomBlurIntensity",up);
layer_set_fx("fx",zoom_fx);
up +=.01;
}

if vignette{
o_depth_sorter._enabled = false;
layer_set_fx("fx",vignette_fx);
fx_set_parameter(vignette_fx,"g_VignetteEdges",[vig,1.2]);
if vig >.4 vig -=.01;;
}
