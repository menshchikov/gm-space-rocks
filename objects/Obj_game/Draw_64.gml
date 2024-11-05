/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 53E6ADCF
/// @DnDArgument : "x" "10"
/// @DnDArgument : "y" "10"
/// @DnDArgument : "caption" "points"
draw_text(10, 10, string(points) + "");

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 43DD138E
/// @DnDArgument : "obj" "Obj_player"
/// @DnDSaveInfo : "obj" "Obj_player"
var l43DD138E_0 = false;
l43DD138E_0 = instance_exists(Obj_player);
if(l43DD138E_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4AF7062D
	/// @DnDParent : 43DD138E
	/// @DnDArgument : "var" "Obj_player.powerup_spread"
	/// @DnDArgument : "value" "true"
	if(Obj_player.powerup_spread == true)
	{
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 481A22A5
		/// @DnDParent : 4AF7062D
		/// @DnDArgument : "color" "$FF07FFFA"
		draw_set_colour($FF07FFFA & $ffffff);
		var l481A22A5_0=($FF07FFFA >> 24);
		draw_set_alpha(l481A22A5_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 0DDCBE91
		/// @DnDParent : 4AF7062D
		/// @DnDArgument : "x" "10"
		/// @DnDArgument : "y" "30"
		/// @DnDArgument : "caption" "Obj_player.alarm[0]"
		draw_text(10, 30, string(Obj_player.alarm[0]) + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 62685109
		/// @DnDParent : 4AF7062D
		draw_set_colour($FFFFFFFF & $ffffff);
		var l62685109_0=($FFFFFFFF >> 24);
		draw_set_alpha(l62685109_0 / $ff);
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5F048DD4
	/// @DnDParent : 43DD138E
	/// @DnDArgument : "var" "Obj_player.powerup_ghost"
	/// @DnDArgument : "value" "true"
	if(Obj_player.powerup_ghost == true)
	{
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 06F65107
		/// @DnDParent : 5F048DD4
		/// @DnDArgument : "color" "$FFFF8D02"
		draw_set_colour($FFFF8D02 & $ffffff);
		var l06F65107_0=($FFFF8D02 >> 24);
		draw_set_alpha(l06F65107_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 32D06947
		/// @DnDParent : 5F048DD4
		/// @DnDArgument : "x" "10"
		/// @DnDArgument : "y" "50"
		/// @DnDArgument : "caption" "Obj_player.alarm[1]"
		draw_text(10, 50, string(Obj_player.alarm[1]) + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 6756156D
		/// @DnDParent : 5F048DD4
		draw_set_colour($FFFFFFFF & $ffffff);
		var l6756156D_0=($FFFFFFFF >> 24);
		draw_set_alpha(l6756156D_0 / $ff);
	}
}