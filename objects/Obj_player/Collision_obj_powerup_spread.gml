/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 199668F0
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 50BA1461
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "powerup_spread"
powerup_spread = true;

/// @DnDAction : YoYo Games.Instances.Get_Alarm
/// @DnDVersion : 1
/// @DnDHash : 6A3F884E
/// @DnDArgument : "var" "timer_value"
/// @DnDArgument : "var_temp" "1"
var timer_value = alarm_get(0);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 2BF5A366
/// @DnDArgument : "steps" "timer_value + 600"
alarm_set(0, timer_value + 600);

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 612EAEE7
/// @DnDArgument : "value" "c_yellow"
/// @DnDArgument : "instvar" "14"
image_blend = c_yellow;