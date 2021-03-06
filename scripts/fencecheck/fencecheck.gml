/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 072FF613
/// @DnDArgument : "code" "/// @description fencecheck(objecttype)$(13_10)var returnval = 1; // we return 1 if there's something below us$(13_10)/// Hit object vertically$(13_10)$(13_10)if(place_meeting(x,y+vsp,argument0)){$(13_10) tempobject=instance_place(x,y+vsp,argument0);$(13_10)$(13_10) if(!tempobject.isactive){$(13_10)  while(!place_meeting(x,y+sign(vsp),tempobject)) y+=sign(vsp);$(13_10)  if(vsp >= 0){$(13_10)   sprite_index = bibstand;$(13_10)   letgo=0;$(13_10)   jumps=1;$(13_10)   vsp=0;$(13_10)  } else {$(13_10)   vsp = 1;$(13_10)  }$(13_10) } else {$(13_10)  returnval = 0;$(13_10) }$(13_10)} else if(place_meeting(x,y+1,argument0)) {$(13_10) if(instance_place(x,y+1,argument0).isactive){$(13_10)  returnval = 0;$(13_10) }$(13_10)} else {$(13_10) if(!place_meeting(x,y,argument0)){$(13_10)  returnval = 0;$(13_10) }$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)/// Hit object from side$(13_10)if(place_meeting(x+hsp,y+vsp-1,argument0)){$(13_10) tempobject=instance_place(x+hsp,y+vsp-1,argument0);$(13_10) if(!tempobject.isactive){$(13_10)  while(!place_meeting(x+(sign(hsp)),y+vsp-1,argument0)) x+=sign(hsp);$(13_10) $(13_10)  hsp=0;$(13_10) }$(13_10)}$(13_10)$(13_10)return returnval;"
/// @description fencecheck(objecttype)
var returnval = 1; // we return 1 if there's something below us
/// Hit object vertically

if(place_meeting(x,y+vsp,argument0)){
 tempobject=instance_place(x,y+vsp,argument0);

 if(!tempobject.isactive){
  while(!place_meeting(x,y+sign(vsp),tempobject)) y+=sign(vsp);
  if(vsp >= 0){
   sprite_index = bibstand;
   letgo=0;
   jumps=1;
   vsp=0;
  } else {
   vsp = 1;
  }
 } else {
  returnval = 0;
 }
} else if(place_meeting(x,y+1,argument0)) {
 if(instance_place(x,y+1,argument0).isactive){
  returnval = 0;
 }
} else {
 if(!place_meeting(x,y,argument0)){
  returnval = 0;
 }
}



/// Hit object from side
if(place_meeting(x+hsp,y+vsp-1,argument0)){
 tempobject=instance_place(x+hsp,y+vsp-1,argument0);
 if(!tempobject.isactive){
  while(!place_meeting(x+(sign(hsp)),y+vsp-1,argument0)) x+=sign(hsp);
 
  hsp=0;
 }
}

return returnval;