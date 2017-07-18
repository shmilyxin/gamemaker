var key = argument0;
var pointInfoMap = global.tigerGlobalMap[? "pointInfoMap"];
var tigerInitPoint = pointInfoMap[? key];
var tiger = instance_create(tigerInitPoint[? "xPos"],tigerInitPoint[? "yPos"],tiger_obj);
tiger.pointKey = key;
var instanceList = tigerInitPoint[? "instanceList"];
ds_list_add(instanceList,tiger);
