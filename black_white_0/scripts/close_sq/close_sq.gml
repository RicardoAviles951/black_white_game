function close_sq(){
var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);
var myseq = sequence_get(sq_fadeOut);
var lay = layer_create(-9999,"transitions");
var seq = layer_sequence_create(lay,cam_x,cam_y,myseq);
layer_sequence_play(seq);


/*//Debug only
show_debug_message(layer_sequence_get_x(seq));
show_debug_message(layer_sequence_get_y(seq));
show_debug_message("cam y = "+string(cam_y));
show_debug_message("cam x = "+string(cam_x));
*/
}