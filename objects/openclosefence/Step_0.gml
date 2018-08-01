/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 64459C49
/// @DnDArgument : "code" "isactive=false;$(13_10)with(activator){$(13_10)  	if(pressed and channel==other.channel){$(13_10)		other.isactive+=true;$(13_10)	}$(13_10)}$(13_10)if(isactive){$(13_10)    image_alpha=0.1;$(13_10)} else {$(13_10)	image_alpha=1;$(13_10)}"
isactive=false;
with(activator){
  	if(pressed and channel==other.channel){
		other.isactive+=true;
	}
}
if(isactive){
    image_alpha=0.1;
} else {
	image_alpha=1;
}