/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 631E9366
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)sleeptimer = 20;$(13_10)hsp = irandom(1);$(13_10)if(hsp == 0){$(13_10) hsp = 2;$(13_10) image_xscale = -sign(hsp);$(13_10)} else {$(13_10) hsp = -2;$(13_10)}"
/// @description Execute Code
sleeptimer = 20;
hsp = irandom(1);
if(hsp == 0){
 hsp = 2;
 image_xscale = -sign(hsp);
} else {
 hsp = -2;
}