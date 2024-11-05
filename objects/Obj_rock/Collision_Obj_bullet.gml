/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 6C31B860
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 67B2A401
/// @DnDArgument : "soundid" "rockdestroy"
/// @DnDArgument : "pitch" "random_range(0.6, 1.4)"
/// @DnDSaveInfo : "soundid" "rockdestroy"
audio_play_sound(rockdestroy, 0, 0, 1.0, undefined, random_range(0.6, 1.4));

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2B6EDFB7
/// @DnDArgument : "expr" "50"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "Obj_game.points"
Obj_game.points += 50;

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 28D60052
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "where" "1"
/// @DnDArgument : "size" "1"
effect_create_above(0, x + 0, y + 0, 1, $FFFFFF & $ffffff);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 04C0568B
/// @DnDArgument : "var" "direction"
/// @DnDArgument : "max" "360"
direction = (random_range(0, 360));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0D48F102
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "value" "spr_rock_big"
if(sprite_index == spr_rock_big)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 5EE089D3
	/// @DnDParent : 0D48F102
	/// @DnDArgument : "spriteind" "spr_rock_small"
	/// @DnDSaveInfo : "spriteind" "spr_rock_small"
	sprite_index = spr_rock_small;
	image_index = 0;

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 50548695
	/// @DnDParent : 0D48F102
	/// @DnDArgument : "function" "instance_copy"
	/// @DnDArgument : "arg" "true"
	instance_copy(true);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 6DD8909C
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5FC8AD80
	/// @DnDParent : 6DD8909C
	/// @DnDArgument : "var" "instance_number(Obj_rock)"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "12"
	if(instance_number(Obj_rock) < 12)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 1E771A0C
		/// @DnDParent : 5FC8AD80
		/// @DnDArgument : "spriteind" "spr_rock_big"
		/// @DnDSaveInfo : "spriteind" "spr_rock_big"
		sprite_index = spr_rock_big;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1DB8A8BF
		/// @DnDParent : 5FC8AD80
		/// @DnDArgument : "expr" "-100"
		/// @DnDArgument : "var" "x"
		x = -100;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 3EFB41E5
	/// @DnDParent : 6DD8909C
	else
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 347E522C
		/// @DnDParent : 3EFB41E5
		instance_destroy();
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6993670D
/// @DnDArgument : "var" "Obj_game.is_powerup_delay"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "true"
if(!(Obj_game.is_powerup_delay == true))
{
	/// @DnDAction : YoYo Games.Random.Randomize
	/// @DnDVersion : 1
	/// @DnDHash : 57443215
	/// @DnDParent : 6993670D
	randomize();

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 26322C7D
	/// @DnDParent : 6993670D
	/// @DnDArgument : "var" "powerup"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "max" "100"
	var powerup = (random_range(0, 100));

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6BD5C960
	/// @DnDParent : 6993670D
	/// @DnDArgument : "var" "powerup"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "50"
	if(powerup > 50)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 08DDC80F
		/// @DnDParent : 6BD5C960
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_powerup_spread"
		/// @DnDSaveInfo : "objectid" "obj_powerup_spread"
		instance_create_layer(x + 0, y + 0, "Instances", obj_powerup_spread);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 13492C53
	/// @DnDParent : 6993670D
	else
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 39B2AD4C
		/// @DnDParent : 13492C53
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_powerup_ghost"
		/// @DnDSaveInfo : "objectid" "obj_powerup_ghost"
		instance_create_layer(x + 0, y + 0, "Instances", obj_powerup_ghost);
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 476BA79B
	/// @DnDApplyTo : {Obj_game}
	/// @DnDParent : 6993670D
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "is_powerup_delay"
	with(Obj_game) {
	is_powerup_delay = true;
	
	}

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 021E2146
	/// @DnDApplyTo : {Obj_game}
	/// @DnDParent : 6993670D
	/// @DnDArgument : "steps" "300"
	/// @DnDArgument : "alarm" "1"
	with(Obj_game) {
	alarm_set(1, 300);
	
	}
}