/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0D9E8830
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)keyjump=keyboard_check_pressed(vk_space);$(13_10)keyjumpheld=keyboard_check(vk_space);$(13_10)keyright=keyboard_check(vk_right);$(13_10)keyleft=keyboard_check(vk_left);$(13_10)keyrunheld=keyboard_check(vk_shift);$(13_10)$(13_10)//Horizontal movement$(13_10)if(damagetime < 0){$(13_10) if(keyrunheld) {$(13_10)  maxhspeed = 7;$(13_10) } else {$(13_10)  maxhspeed = 4;$(13_10) }$(13_10) if(keyright) {$(13_10)  hsp=min(hsp+2,maxhspeed); $(13_10)  if(!(vsp<0)) sprite_index=bibrun;$(13_10)  standingaround=0;$(13_10) }$(13_10) if(keyleft){$(13_10)  hsp=max(hsp-2,-maxhspeed);$(13_10)  if(!(vsp<0)) sprite_index=bibrun;$(13_10)  standingaround=0;$(13_10) }$(13_10) if((keyleft && keyright) || (!keyleft && !keyright)){$(13_10)  hsp = hsp/1.5;$(13_10)  if(sprite_index==bibrun) sprite_index=bibstand;$(13_10)  standingaround+=1;$(13_10)  if(standingaround==400) sprite_index=bibyawn;$(13_10)  if(standingaround==500) sprite_index=bibstand;$(13_10) }$(13_10)$(13_10) if sign(hsp) != 0 {$(13_10)  image_xscale = sign(hsp);$(13_10) }$(13_10)$(13_10)$(13_10) //jumpcode$(13_10) if(keyjump) && (jumps>0){$(13_10)  jumps-=1;$(13_10)  var jumpmod=1;$(13_10)  if(keyrunheld) jumpmod=1.2;$(13_10)  //possibly doublejump$(13_10)  if (jumped==1) {$(13_10)   vsp = -jumpspeeddouble*jumpmod;$(13_10)   jumped=0; //cant doublejump a doublejump$(13_10)  }else{$(13_10)   vsp = -jumpspeed*jumpmod;$(13_10)   jumped=1;$(13_10)  }$(13_10)  sprite_index = bibjump;$(13_10)  puff = instance_create_layer(x,y+15,layer_get_id("Instances"),bibpuff);$(13_10)  puff.image_xscale = sign(hsp);$(13_10) }$(13_10) //holdjumping$(13_10) if(vsp < 0) && (!keyjumpheld) && (letgo==0){$(13_10)  vsp = max(vsp,vsp/2);$(13_10)  letgo=1$(13_10) }$(13_10)} else {$(13_10) hsp = hsp/1.2;$(13_10) letgo=1;$(13_10) jumped=0;$(13_10) damagetime -= 1;$(13_10) sprite_index = bibhurt;$(13_10) if(abs(hsp) < 2){$(13_10)  hsp = 2*sign(hsp);$(13_10) }$(13_10) maxhspeed=12;$(13_10)}$(13_10)$(13_10)timeonground += 1;$(13_10)/// Hit wall vertically$(13_10)if(place_meeting(x,y+vsp,wall)){$(13_10) //If fell, move to ground$(13_10) while(!place_meeting(x,y+sign(vsp),wall)) y+=sign(vsp);$(13_10) sprite_index = bibstand;$(13_10) if(!(vsp < 0)){$(13_10)  letgo=0;$(13_10)  jumps=1;$(13_10)  vsp=0$(13_10) } else {$(13_10)  vsp=1$(13_10) }$(13_10)} else {$(13_10) if(!place_meeting(x,y+1,wall)){$(13_10)  vsp = min(vsp+grav,maxvspeed);$(13_10)  if(vsp > 0 && !jumped) {$(13_10)   sprite_index = bibfall;$(13_10)   timeonground = 0;$(13_10)  }$(13_10) }$(13_10)}$(13_10)$(13_10)/// Hit wall from side$(13_10)if(place_meeting(x+hsp,y-1,wall)){$(13_10) while(!place_meeting(x+sign(hsp),y-1,wall)) x+=sign(hsp);$(13_10) $(13_10) hsp=0;$(13_10)}$(13_10)$(13_10)//hit electric fence$(13_10)if(place_meeting(x+hsp,y+vsp,elecfence)){$(13_10) jumped=0;$(13_10) hsp = -3*hsp;$(13_10) if (sign(vsp)>0) vsp = -1.5*vsp; else vsp = -vsp;$(13_10) damagetime=30;$(13_10)}$(13_10)$(13_10)//Cannot doublejump after 60 frames on ground$(13_10)if(timeonground > 60){$(13_10) jumped = 0;$(13_10)}$(13_10)$(13_10)$(13_10)x+=hsp$(13_10)y+=vsp$(13_10)"
/// @description Execute Code
keyjump=keyboard_check_pressed(vk_space);
keyjumpheld=keyboard_check(vk_space);
keyright=keyboard_check(vk_right);
keyleft=keyboard_check(vk_left);
keyrunheld=keyboard_check(vk_shift);

//Horizontal movement
if(damagetime < 0){
 if(keyrunheld) {
  maxhspeed = 7;
 } else {
  maxhspeed = 4;
 }
 if(keyright) {
  hsp=min(hsp+2,maxhspeed); 
  if(!(vsp<0)) sprite_index=bibrun;
  standingaround=0;
 }
 if(keyleft){
  hsp=max(hsp-2,-maxhspeed);
  if(!(vsp<0)) sprite_index=bibrun;
  standingaround=0;
 }
 if((keyleft && keyright) || (!keyleft && !keyright)){
  hsp = hsp/1.5;
  if(sprite_index==bibrun) sprite_index=bibstand;
  standingaround+=1;
  if(standingaround==400) sprite_index=bibyawn;
  if(standingaround==500) sprite_index=bibstand;
 }

 if sign(hsp) != 0 {
  image_xscale = sign(hsp);
 }


 //jumpcode
 if(keyjump) && (jumps>0){
  jumps-=1;
  var jumpmod=1;
  if(keyrunheld) jumpmod=1.2;
  //possibly doublejump
  if (jumped==1) {
   vsp = -jumpspeeddouble*jumpmod;
   jumped=0; //cant doublejump a doublejump
  }else{
   vsp = -jumpspeed*jumpmod;
   jumped=1;
  }
  sprite_index = bibjump;
  puff = instance_create_layer(x,y+15,layer_get_id("Instances"),bibpuff);
  puff.image_xscale = sign(hsp);
 }
 //holdjumping
 if(vsp < 0) && (!keyjumpheld) && (letgo==0){
  vsp = max(vsp,vsp/2);
  letgo=1
 }
} else {
 hsp = hsp/1.2;
 letgo=1;
 jumped=0;
 damagetime -= 1;
 sprite_index = bibhurt;
 if(abs(hsp) < 2){
  hsp = 2*sign(hsp);
 }
 maxhspeed=12;
}

timeonground += 1;
/// Hit wall vertically
if(place_meeting(x,y+vsp,wall)){
 //If fell, move to ground
 while(!place_meeting(x,y+sign(vsp),wall)) y+=sign(vsp);
 sprite_index = bibstand;
 if(!(vsp < 0)){
  letgo=0;
  jumps=1;
  vsp=0
 } else {
  vsp=1
 }
} else {
 if(!place_meeting(x,y+1,wall)){
  vsp = min(vsp+grav,maxvspeed);
  if(vsp > 0 && !jumped) {
   sprite_index = bibfall;
   timeonground = 0;
  }
 }
}

/// Hit wall from side
if(place_meeting(x+hsp,y-1,wall)){
 while(!place_meeting(x+sign(hsp),y-1,wall)) x+=sign(hsp);
 
 hsp=0;
}

//hit electric fence
if(place_meeting(x+hsp,y+vsp,elecfence)){
 jumped=0;
 hsp = -3*hsp;
 if (sign(vsp)>0) vsp = -1.5*vsp; else vsp = -vsp;
 damagetime=30;
}

//Cannot doublejump after 60 frames on ground
if(timeonground > 60){
 jumped = 0;
}


x+=hsp
y+=vsp