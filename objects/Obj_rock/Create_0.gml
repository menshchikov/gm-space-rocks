/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 27BB39E5
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "speed"
speed = 1;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 01BEA49D
/// @DnDArgument : "var" "direction"
/// @DnDArgument : "max" "360"
direction = (random_range(0, 360));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 61DE554B
/// @DnDArgument : "var" "image_angle"
/// @DnDArgument : "max" "360"
image_angle = (random_range(0, 360));