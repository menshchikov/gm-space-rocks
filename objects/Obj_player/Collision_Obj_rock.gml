/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3E54F6EB
/// @DnDArgument : "var" "powerup_ghost"
/// @DnDArgument : "value" "true"
if(powerup_ghost == true)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 4475271C
	/// @DnDParent : 3E54F6EB
	exit;
}

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 2E56A5DF
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "type" "3"
/// @DnDArgument : "where" "1"
/// @DnDArgument : "size" "1"
effect_create_above(3, x + 0, y + 0, 1, $FFFFFF & $ffffff);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 192BBDB9
/// @DnDArgument : "soundid" "lose"
/// @DnDSaveInfo : "soundid" "lose"
audio_play_sound(lose, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 1A07F7C4
instance_destroy();

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 7848146C
/// @DnDApplyTo : {Obj_game}
/// @DnDArgument : "steps" "120"
with(Obj_game) {
alarm_set(0, 120);

}