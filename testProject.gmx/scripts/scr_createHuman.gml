var key = argument0;
var pointInfoMap = global.tigerGlobalMap[? "pointInfoMap"];
var humanInitPoint = pointInfoMap[? key];
var human = instance_create(humanInitPoint[? "xPos"],humanInitPoint[? "yPos"],human_obj);
human.pointKey = key;
humanInitPoint[? "instance"] = human;
