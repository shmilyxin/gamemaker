var unit = argument0;
var routeList = unit.routeList;
if(!is_undefined(routeList)){
    var startBlock = routeList[|0];
    var startBlockList = scr_splitToList(startBlock,";");
    startBlockX = scr_changeIndex(real(startBlockList[|0]),global.mapWidth,global.mapWidth);;
    startBlockY = scr_changeIndex(real(startBlockList[|1]),global.mapWidth,global.mapWidth);;
    unit.x = startBlockX;
    unit.y = startBlockY;
    ds_list_destroy(unit.routeList);
    unit.routeList = undefined;
    ds_list_destroy(startBlockList);
}
