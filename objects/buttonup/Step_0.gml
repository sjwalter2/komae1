/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 042F15DD
/// @DnDArgument : "code" "/// @description check if pressed$(13_10)if(place_meeting(x,y+5,actor)){$(13_10)  pressed = 1;$(13_10)  sprite_index = buttonupgreen;$(13_10)} else {$(13_10)  pressed = 0;$(13_10)  sprite_index = buttonupred;$(13_10)}"
/// @description check if pressed
if(place_meeting(x,y+5,actor)){
  pressed = 1;
  sprite_index = buttonupgreen;
} else {
  pressed = 0;
  sprite_index = buttonupred;
}