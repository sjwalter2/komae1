/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 689DCEB1
/// @DnDArgument : "code" "/// @description Room Creation parent$(13_10)$(13_10)var i;$(13_10)for (i = 0; i < 10; i += 1){$(13_10) instance_create_layer(i*64,640,"Instances",wallred);$(13_10) instance_create_layer(i*64,0,"Instances",wallred);$(13_10) instance_create_layer(0,i*64,"Instances",wallred);$(13_10) instance_create_layer(640,i*64,"Instances",wallred);$(13_10)}$(13_10)$(13_10)instance_create_layer(128,435,"Instances",wallred);"
/// @description Room Creation parent

var i;
for (i = 0; i < 10; i += 1){
 instance_create_layer(i*64,640,"Instances",wallred);
 instance_create_layer(i*64,0,"Instances",wallred);
 instance_create_layer(0,i*64,"Instances",wallred);
 instance_create_layer(640,i*64,"Instances",wallred);
}

instance_create_layer(128,435,"Instances",wallred);