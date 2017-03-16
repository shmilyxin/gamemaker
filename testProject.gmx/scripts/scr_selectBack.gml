
var select = argument0;
var unit = select.actionUnit;
var routeList = select.actionMap[? "routeList"];
var startBlock = routeList[|0];
unit.x = startBlock.x;
unit.y = startBlock.y;
select.mode = 0;          
select.actionUnit = undefined;
select.actionMap = undefined;

scr_unitCancelSelect(unit,select);
