/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1895CC88
/// @DnDArgument : "code" "/// @description step$(13_10)if movetime == 10 {$(13_10) movetime = 0;$(13_10) if dir == 1{$(13_10)  y += 2;$(13_10)  if (y==maxY){$(13_10)   dir = 0;$(13_10)  }$(13_10) } else {$(13_10)  y -= 2;$(13_10)  if (y==minY){$(13_10)   dir = 1;$(13_10)  }$(13_10) }$(13_10)} else {$(13_10) movetime += 1;$(13_10)}$(13_10)"
/// @description step
if movetime == 10 {
 movetime = 0;
 if dir == 1{
  y += 2;
  if (y==maxY){
   dir = 0;
  }
 } else {
  y -= 2;
  if (y==minY){
   dir = 1;
  }
 }
} else {
 movetime += 1;
}