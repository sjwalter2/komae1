/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 072FF613
/// @DnDArgument : "code" "/// @description wallcheck(objecttype)$(13_10)/// Hit object vertically$(13_10)if(place_meeting(x,y+vsp,argument0)){$(13_10) while(!place_meeting(x,y+sign(vsp),argument0)) y+=sign(vsp);$(13_10) if(!(vsp < 0)){$(13_10)  sprite_index = bibstand;$(13_10)  letgo=0;$(13_10)  jumps=1;$(13_10)  vsp=0$(13_10) } else {$(13_10)  vsp = 1;$(13_10) }$(13_10)} else {$(13_10) if(!place_meeting(x,y+1,argument0)){$(13_10)  vsp = min(vsp+grav,maxvspeed);$(13_10)  jumps=0;$(13_10)  if(vsp > 0) {$(13_10)   if (damagetime < 1) sprite_index = bibfall;$(13_10)   timeonground = 0;$(13_10)  }$(13_10) }$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)/// Hit object from side$(13_10)if(place_meeting(x+hsp,y-1+vsp,argument0)){$(13_10) while(!place_meeting(x+(2*sign(hsp)),y-1+vsp,argument0)) x+=sign(hsp);$(13_10) $(13_10) hsp=0;$(13_10)}$(13_10)"
/// @description wallcheck(objecttype)
/// Hit object vertically
if(place_meeting(x,y+vsp,argument0)){
 while(!place_meeting(x,y+sign(vsp),argument0)) y+=sign(vsp);
 if(!(vsp < 0)){
  sprite_index = bibstand;
  letgo=0;
  jumps=1;
  vsp=0
 } else {
  vsp = 1;
 }
} else {
 if(!place_meeting(x,y+1,argument0)){
  vsp = min(vsp+grav,maxvspeed);
  jumps=0;
  if(vsp > 0) {
   if (damagetime < 1) sprite_index = bibfall;
   timeonground = 0;
  }
 }
}



/// Hit object from side
if(place_meeting(x+hsp,y-1+vsp,argument0)){
 while(!place_meeting(x+(2*sign(hsp)),y-1+vsp,argument0)) x+=sign(hsp);
 
 hsp=0;
}