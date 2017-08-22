/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 171E2DBE
/// @DnDArgument : "code" "/// @description say("text",x,y)$(13_10)textObj = instance_create_layer(argument1, argument2, "Accents", speech);$(13_10)textObj.msg = argument0;"
/// @description say("text",x,y)
textObj = instance_create_layer(argument1, argument2, "Accents", speech);
textObj.msg = argument0;