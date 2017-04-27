/**
    取消选中单位
**/
var select = argument0;
var unit = select.actionUnit;
scr_replaceUnit(unit);
unit.image_index= 1;
unit.selected = 0;
unit.walkImgAlarm = 20;

