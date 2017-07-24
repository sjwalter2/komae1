/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 24323FF1
/// @DnDArgument : "code" "/// @description Move bug$(13_10)x += (xTo - x)/40;$(13_10)y += (yTo - y)/40;$(13_10)$(13_10)if(follow != noone){$(13_10) xTo = follow.x + cycle;$(13_10) yTo = follow.y - 58;$(13_10)}$(13_10)$(13_10)if(abs(cycle)==64){$(13_10) cycledir = -cycledir;$(13_10)}$(13_10)cycle += cycledir;"
/// @description Move bug
x += (xTo - x)/40;
y += (yTo - y)/40;

if(follow != noone){
 xTo = follow.x + cycle;
 yTo = follow.y - 58;
}

if(abs(cycle)==64){
 cycledir = -cycledir;
}
cycle += cycledir;