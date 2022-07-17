vignette = false;
zoom = false;
zoom_fx = fx_create("_filter_zoom_blur");
vignette_fx = fx_create("_filter_vignette");
vig = 1;
fx_set_parameter(vignette_fx,"g_VignetteEdges",[vig,1.5]);
up = 0;


