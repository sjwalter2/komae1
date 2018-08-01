/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5FA1409A
/// @DnDArgument : "code" "/// @description Camera create$(13_10)camera = camera_create();$(13_10)$(13_10)var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);$(13_10)var pm = matrix_build_projection_ortho(1024,800,1,1000);$(13_10)$(13_10)camera_set_view_mat(camera,vm);$(13_10)camera_set_proj_mat(camera,pm);$(13_10)$(13_10)view_camera[0] = camera;$(13_10)$(13_10)follow = bibobj;$(13_10)$(13_10)xTo = x;$(13_10)yTo = y;"
/// @description Camera create
camera = camera_create();

var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
var pm = matrix_build_projection_ortho(1024,800,1,1000);

camera_set_view_mat(camera,vm);
camera_set_proj_mat(camera,pm);

view_camera[0] = camera;

follow = bibobj;

xTo = x;
yTo = y;