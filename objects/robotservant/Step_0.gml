/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 52518F02
/// @DnDArgument : "code" "/// @description Step$(13_10)/// Hit wall from side$(13_10)if(place_meeting(x+hsp,y-1,structure)){$(13_10) while(!place_meeting(x+sign(hsp),y-1,structure)) x+=sign(hsp);$(13_10) x= x -4*sign(hsp);$(13_10) image_xscale = sign(hsp);$(13_10) hsp=-hsp;$(13_10)} else {$(13_10) x += hsp;$(13_10)}"
/// @description Step
/// Hit wall from side
if(place_meeting(x+hsp,y-1,structure)){
 while(!place_meeting(x+sign(hsp),y-1,structure)) x+=sign(hsp);
 x= x -4*sign(hsp);
 image_xscale = sign(hsp);
 hsp=-hsp;
} else {
 x += hsp;
}