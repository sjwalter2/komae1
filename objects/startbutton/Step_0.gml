/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7626B777
/// @DnDArgument : "code" "/// @description Am I pressed?$(13_10)m1 = mouse_check_button(mb_left);$(13_10)if(m1){$(13_10) if(position_meeting(mouse_x,mouse_y,id)){$(13_10)  startgame();$(13_10) }$(13_10)}"
/// @description Am I pressed?
m1 = mouse_check_button(mb_left);
if(m1){
 if(position_meeting(mouse_x,mouse_y,id)){
  startgame();
 }
}