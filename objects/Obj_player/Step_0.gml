/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 5157DEE4
/// @DnDArgument : "key" "vk_up"
var l5157DEE4_0;
l5157DEE4_0 = keyboard_check(vk_up);
if (l5157DEE4_0)
{
	/// @DnDAction : YoYo Games.Movement.Add_Motion
	/// @DnDVersion : 1
	/// @DnDHash : 5E6ED513
	/// @DnDParent : 5157DEE4
	/// @DnDArgument : "dir" "image_angle"
	/// @DnDArgument : "speed" "0.1"
	motion_add(image_angle, 0.1);
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 33A9515E
/// @DnDArgument : "key" "vk_left"
var l33A9515E_0;
l33A9515E_0 = keyboard_check(vk_left);
if (l33A9515E_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 406DB9A5
	/// @DnDParent : 33A9515E
	/// @DnDArgument : "expr" "4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "image_angle"
	image_angle += 4;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 7A69DFAE
/// @DnDArgument : "key" "vk_right"
var l7A69DFAE_0;
l7A69DFAE_0 = keyboard_check(vk_right);
if (l7A69DFAE_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 76E6C59E
	/// @DnDParent : 7A69DFAE
	/// @DnDArgument : "expr" "-4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "image_angle"
	image_angle += -4;
}

/// @DnDAction : YoYo Games.Movement.Wrap_Room
/// @DnDVersion : 1
/// @DnDHash : 5DABC041
move_wrap(1, 1, 0);

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Released
/// @DnDVersion : 1
/// @DnDHash : 5639248C
var l5639248C_0;
l5639248C_0 = keyboard_check_released(vk_space);
if (l5639248C_0)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 59F6B8A5
	/// @DnDParent : 5639248C
	/// @DnDArgument : "soundid" "shoot"
	/// @DnDArgument : "pitch" "random_range(0.8, 1.2)"
	/// @DnDSaveInfo : "soundid" "shoot"
	audio_play_sound(shoot, 0, 0, 1.0, undefined, random_range(0.8, 1.2));

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5235E814
	/// @DnDParent : 5639248C
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "Obj_bullet"
	/// @DnDSaveInfo : "objectid" "Obj_bullet"
	instance_create_layer(x + 0, y + 0, "Instances", Obj_bullet);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 545404B0
	/// @DnDParent : 5639248C
	/// @DnDArgument : "var" "powerup_spread"
	/// @DnDArgument : "value" "true"
	if(powerup_spread == true)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 6426A046
		/// @DnDParent : 545404B0
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "bullet"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "objectid" "Obj_bullet"
		/// @DnDSaveInfo : "objectid" "Obj_bullet"
		var bullet = instance_create_layer(x + 0, y + 0, "Instances", Obj_bullet);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6182BE50
		/// @DnDParent : 545404B0
		/// @DnDArgument : "expr" "10"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "bullet.direction"
		bullet.direction += 10;
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 0CA95A2A
		/// @DnDParent : 545404B0
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "bullet"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "objectid" "Obj_bullet"
		/// @DnDSaveInfo : "objectid" "Obj_bullet"
		var bullet = instance_create_layer(x + 0, y + 0, "Instances", Obj_bullet);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6FE029B6
		/// @DnDParent : 545404B0
		/// @DnDArgument : "expr" "-10"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "bullet.direction"
		bullet.direction += -10;
	}
}