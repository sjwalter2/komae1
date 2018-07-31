/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5A8AECA8
/// @DnDArgument : "code" "/// @description Step$(13_10)/// Hit wall$(13_10)if(place_meeting(x,y+vsp,structure)){$(13_10) while(!place_meeting(x,y+sign(vsp),structure)) y+=sign(vsp);$(13_10) y= y -sign(vsp);$(13_10) vsp=-vsp;$(13_10) sleeptimer = 20;$(13_10)} else {$(13_10) if(sleeptimer > 0) {$(13_10)  sleeptimer -= 1;$(13_10)  exit;$(13_10) }$(13_10) y += vsp;$(13_10)}"
/// @description Step
/// Hit wall
if(place_meeting(x,y+vsp,structure)){
 while(!place_meeting(x,y+sign(vsp),structure)) y+=sign(vsp);
 y= y -sign(vsp);
 vsp=-vsp;
 sleeptimer = 20;
} else {
 if(sleeptimer > 0) {
  sleeptimer -= 1;
  exit;
 }
 y += vsp;
}