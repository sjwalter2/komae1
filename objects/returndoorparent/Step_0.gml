/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 367341EB
/// @DnDArgument : "code" "/// @description$(13_10)if open == 1 {$(13_10) timer += 1;$(13_10) if timer == 15 {$(13_10)  if image_index == 2 {$(13_10)   global.Sleep = 0;$(13_10)   room_goto(destination);$(13_10)  } else {$(13_10)   image_index += 1;$(13_10)   timer = 0;$(13_10)  }$(13_10) }$(13_10)}"
/// @description
if open == 1 {
 timer += 1;
 if timer == 15 {
  if image_index == 2 {
   global.Sleep = 0;
   room_goto(destination);
  } else {
   image_index += 1;
   timer = 0;
  }
 }
}