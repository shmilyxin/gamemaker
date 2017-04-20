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
