/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0E84DB88
/// @DnDArgument : "code" "/// @description bounceonguy(objecttype)$(13_10)if(place_meeting(x+hsp,y+vsp+2,argument0)){$(13_10)  vsp = -8-(8*keyjumpheld);$(13_10)}"
/// @description bounceonguy(objecttype)
if(place_meeting(x+hsp,y+vsp+2,argument0)){
  vsp = -8-(8*keyjumpheld);
}