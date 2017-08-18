/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 24323FF1
/// @DnDArgument : "code" "/// @description Move cam$(13_10)x += (xTo - x)/10;$(13_10)if x > (room_width-64) {x = room_width-64;}$(13_10)if x < (64) {x = 64}$(13_10)$(13_10)y += (yTo - y)/10;$(13_10)if y > (room_height-64) {y = room_height-64;}$(13_10)if y < (64) {y = 64}$(13_10)$(13_10)$(13_10)if(follow != noone){$(13_10) xTo = follow.x;$(13_10) yTo = follow.y;$(13_10)}$(13_10)$(13_10)var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);$(13_10)camera_set_view_mat(camera,vm);"
/// @description Move cam
x += (xTo - x)/10;
if x > (room_width-64) {x = room_width-64;}
if x < (64) {x = 64}

y += (yTo - y)/10;
if y > (room_height-64) {y = room_height-64;}
if y < (64) {y = 64}


if(follow != noone){
 xTo = follow.x;
 yTo = follow.y;
}

var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
camera_set_view_mat(camera,vm);