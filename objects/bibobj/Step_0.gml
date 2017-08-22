/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4AEBE902
/// @DnDArgument : "code" "/// @description Check inputs$(13_10)$(13_10)if(global.Sleep == 0){$(13_10)$(13_10)keyjump=keyboard_check_pressed(vk_space);$(13_10)keyjumpheld=keyboard_check(vk_space);$(13_10)keyright=keyboard_check(vk_right);$(13_10)keyleft=keyboard_check(vk_left);$(13_10)keyrunheld=keyboard_check(vk_shift);$(13_10)keyup=keyboard_check(vk_up);$(13_10)} else {$(13_10)$(13_10)keyjump=0;$(13_10)keyjumpheld=0;$(13_10)keyright=0;$(13_10)keyleft=0;$(13_10)keyrunheld=0;$(13_10)}"
/// @description Check inputs

if(global.Sleep == 0){

keyjump=keyboard_check_pressed(vk_space);
keyjumpheld=keyboard_check(vk_space);
keyright=keyboard_check(vk_right);
keyleft=keyboard_check(vk_left);
keyrunheld=keyboard_check(vk_shift);
keyup=keyboard_check(vk_up);
} else {

keyjump=0;
keyjumpheld=0;
keyright=0;
keyleft=0;
keyrunheld=0;
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0D9E8830
/// @DnDArgument : "code" "/// @description Base movement calculation$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)//Horizontal movement$(13_10)if(damagetime < 0){$(13_10) if(keyrunheld) {$(13_10)  maxhspeed = 7;$(13_10) } else {$(13_10)  maxhspeed = 4;$(13_10) }$(13_10) if(keyright) {$(13_10)  hsp=min(hsp+2,maxhspeed); $(13_10)  if(!(vsp<0)) sprite_index=bibrun;$(13_10)  standingaround=0;$(13_10) }$(13_10) if(keyleft){$(13_10)  hsp=max(hsp-2,-maxhspeed);$(13_10)  if(!(vsp<0)) sprite_index=bibrun;$(13_10)  standingaround=0;$(13_10) }$(13_10) if((keyleft && keyright) || (!keyleft && !keyright)){$(13_10)  hsp = hsp/1.5;$(13_10)  if(sprite_index==bibrun) sprite_index=bibstand;$(13_10)  standingaround+=1;$(13_10)  if(standingaround==400) sprite_index=bibyawn;$(13_10)  if(standingaround==500) sprite_index=bibstand;$(13_10) }$(13_10)$(13_10) if sign(hsp) != 0 {$(13_10)  image_xscale = sign(hsp);$(13_10) }$(13_10)$(13_10) //add boostsprite to bib's feet?$(13_10) if(jumps > 0) && jumpboost==1{$(13_10)  boost.x = x;$(13_10)  boost.y = y;$(13_10)  image_blend = make_color_rgb(255,150,100);$(13_10) } else {$(13_10)  image_blend = -1;$(13_10)  boost.x = -1000;$(13_10)  boost.y = -1000;$(13_10) }$(13_10)$(13_10) //jumpcode$(13_10) if(keyjump) && (jumps>0){$(13_10)  jumps-=1;$(13_10)  timeonground=0;$(13_10)  var jumpmod=1;$(13_10)  if(keyrunheld) jumpmod=1.2;$(13_10)  //possibly doublejump$(13_10)  if (jumpboost==1) {$(13_10)   vsp = -jumpspeeddouble*jumpmod;$(13_10)  }else{$(13_10)   vsp = -jumpspeed*jumpmod;$(13_10)   jumpboost=1;$(13_10)  }$(13_10)  sprite_index = bibjump;$(13_10)  puff = instance_create_layer(x,y+15,layer_get_id("Instances"),bibpuff);$(13_10)  if(!(hsp==0)) puff.image_xscale = sign(hsp);$(13_10) }$(13_10) //holdjumping$(13_10) if(vsp < 0) && (!keyjumpheld) && (letgo==0){$(13_10)  vsp = max(vsp,vsp/2);$(13_10)  letgo=1$(13_10) }$(13_10)} else {$(13_10) hsp = hsp/1.2;$(13_10) letgo=1;$(13_10) jumpboost=0;$(13_10) damagetime -= 1;$(13_10) if(damagetime == 0) {invincibletime = 90};$(13_10) sprite_index = bibhurt;$(13_10) if(abs(hsp) < 2){$(13_10)  hsp = 2*sign(hsp);$(13_10) }$(13_10) maxhspeed=10;$(13_10)}"
/// @description Base movement calculation




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

 //add boostsprite to bib's feet?
 if(jumps > 0) && jumpboost==1{
  boost.x = x;
  boost.y = y;
  image_blend = make_color_rgb(255,150,100);
 } else {
  image_blend = -1;
  boost.x = -1000;
  boost.y = -1000;
 }

 //jumpcode
 if(keyjump) && (jumps>0){
  jumps-=1;
  timeonground=0;
  var jumpmod=1;
  if(keyrunheld) jumpmod=1.2;
  //possibly doublejump
  if (jumpboost==1) {
   vsp = -jumpspeeddouble*jumpmod;
  }else{
   vsp = -jumpspeed*jumpmod;
   jumpboost=1;
  }
  sprite_index = bibjump;
  puff = instance_create_layer(x,y+15,layer_get_id("Instances"),bibpuff);
  if(!(hsp==0)) puff.image_xscale = sign(hsp);
 }
 //holdjumping
 if(vsp < 0) && (!keyjumpheld) && (letgo==0){
  vsp = max(vsp,vsp/2);
  letgo=1
 }
} else {
 hsp = hsp/1.2;
 letgo=1;
 jumpboost=0;
 damagetime -= 1;
 if(damagetime == 0) {invincibletime = 90};
 sprite_index = bibhurt;
 if(abs(hsp) < 2){
  hsp = 2*sign(hsp);
 }
 maxhspeed=10;
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5E17182D
/// @DnDArgument : "code" "/// @description damage-dealer collisions$(13_10)$(13_10)//hit electric fence$(13_10)show_debug_message(string(invincibletime));$(13_10)if(invincibletime <= 0){$(13_10) image_alpha = 1.0;$(13_10) damage(elecfence);$(13_10) damage(robotservant);$(13_10)} else {$(13_10) invincibletime -= 1;$(13_10) image_alpha = 0.6;$(13_10)}"
/// @description damage-dealer collisions

//hit electric fence
show_debug_message(string(invincibletime));
if(invincibletime <= 0){
 image_alpha = 1.0;
 damage(elecfence);
 damage(robotservant);
} else {
 invincibletime -= 1;
 image_alpha = 0.6;
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 23485095
/// @DnDArgument : "code" "/// @description Handle Wall, Door Collisions$(13_10)$(13_10)$(13_10)$(13_10)timeonground += 1;$(13_10)$(13_10)wallcheck(structure);$(13_10)$(13_10)if(place_meeting(x+hsp, y+vsp, door) && keyup){$(13_10)  $(13_10)  with(instance_nearest(x,y,door)) dooropen();$(13_10)}$(13_10)$(13_10)"
/// @description Handle Wall, Door Collisions



timeonground += 1;

wallcheck(structure);

if(place_meeting(x+hsp, y+vsp, door) && keyup){
  
  with(instance_nearest(x,y,door)) dooropen();
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 639C7033
/// @DnDArgument : "code" "/// @description Check if doublejump$(13_10)$(13_10)//Cannot doublejump after 60 frames on ground$(13_10)if(timeonground > 60){$(13_10) jumpboost = 0;$(13_10)}$(13_10)$(13_10)$(13_10)"
/// @description Check if doublejump

//Cannot doublejump after 60 frames on ground
if(timeonground > 60){
 jumpboost = 0;
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3CD90113
/// @DnDArgument : "code" "/// @description move$(13_10)x+=hsp;$(13_10)y+=vsp;$(13_10)"
/// @description move
x+=hsp;
y+=vsp;