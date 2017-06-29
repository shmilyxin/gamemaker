/**
    选中单位
**/
var unit = argument0;
var select = argument1;
unit.selected = 1;
unit.image_index= 2;
unit.walkImgAlarm= 10;
select.mode = 1;
select.actionUnit = unit;
scr_initUnitRoute(unit,select);
scr_showDetail(unit);

var instanceX = 0;
var instanceY = 0;
var viewY =  view_yview[0];
var viewXRightMax =  view_xview[0]+global.viewXWidth;
if(viewXRightMax-unit.x>(global.mapWidth*7)){
    instanceX = unit.x+(2*global.mapWidth);
}else{
    instanceX = unit.x-(6*global.mapWidth);
}
instanceY = viewY+(global.mapWidth*2);
instance_create(instanceX,instanceY,alarmDetail_obj);
