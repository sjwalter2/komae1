/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0E84DB88
/// @DnDArgument : "code" "/// @description damage(objecttype)$(13_10)if(damagetime < 0){$(13_10) if(place_meeting(x+hsp,y+vsp,argument0)){$(13_10)  jumpboost=0;$(13_10)  damagetime=35;$(13_10)  global.Health -= 1; $(13_10)  hsp = -2*hsp;$(13_10)  vsp = 10*(-sign(vsp));$(13_10) } else if(place_meeting(x+hsp,y+3,argument0)){$(13_10)  jumpboost=0;$(13_10)  damagetime=35;$(13_10)  global.Health -= 1;$(13_10)  vsp = -10;$(13_10) }$(13_10) if(global.Health == 0){$(13_10)  game_restart();$(13_10) }$(13_10)}"
/// @description damage(objecttype)
if(damagetime < 0){
 if(place_meeting(x+hsp,y+vsp,argument0)){
  jumpboost=0;
  damagetime=35;
  global.Health -= 1; 
  hsp = -2*hsp;
  vsp = 10*(-sign(vsp));
 } else if(place_meeting(x+hsp,y+3,argument0)){
  jumpboost=0;
  damagetime=35;
  global.Health -= 1;
  vsp = -10;
 }
 if(global.Health == 0){
  game_restart();
 }
}