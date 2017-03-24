/**选择取消**/
var select = argument0;
var unit = select.actionUnit;
var routeList = unit.routeList;
var startBlock = routeList[|0];
startBlockX = scr_changeIndex(startBlock[0],global.mapWidth,global.mapWidth);;
startBlockY = scr_changeIndex(startBlock[1],global.mapWidth,global.mapWidth);;
unit.x = startBlockX;
unit.y = startBlockY;
select.mode = 0;     
ds_map_destroy(select.actionMap);
ds_list_destroy(unit.routeList);
select.actionUnit = undefined;
select.actionMap = undefined;
scr_unitCancelSelect(unit,select);
with (yinying_obj)
{
    instance_destroy();
}
