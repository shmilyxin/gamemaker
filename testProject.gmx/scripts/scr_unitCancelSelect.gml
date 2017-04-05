/**
    取消选中单位
**/
var select = argument0;
var unit = select.actionUnit;
var routeList = unit.routeList;
if(!is_undefined(routeList)){
    var startBlock = routeList[|0];
    var startBlockList = scr_splitToList(startBlock,";");
    startBlockX = scr_changeIndex(real(startBlockList[|0]),global.mapWidth,global.mapWidth);;
    startBlockY = scr_changeIndex(real(startBlockList[|1]),global.mapWidth,global.mapWidth);;
    unit.x = startBlockX;
    unit.y = startBlockY;
    ds_list_destroy(unit.routeList);
    ds_list_destroy(startBlockList);
}
unit.image_index= 1;
unit.moving = 0;
unit.routeList = undefined;
unit.selected = 0;

