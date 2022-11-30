/// @description Zoon-in

// Zoon-in if Mouse-Wheel-UP

var CurrentX = camera_get_view_width(view_camera[0]);
var CurrentY = camera_get_view_height(view_camera[0]);

camera_set_view_size(view_camera[0],CurrentX*0.95,CurrentY*0.95);


