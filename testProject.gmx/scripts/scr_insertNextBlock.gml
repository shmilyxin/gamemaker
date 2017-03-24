
var block = argument0;
var minRouteList =argument1;
var totalCost =argument2;
var maxCost = argument3;
var routeInfoMap = ds_map_create();
var routeList = ds_list_create();
ds_list_copy(routeList,minRouteList);
var cost = totalCost+block.movePoint;
ds_list_clear(minRouteList);
var blockIndex;
blockIndex[0]=block.xIndex;
blockIndex[1]=block.yIndex;
if(maxCost>=cost&&!scr_checkTerListContant(routeList,blockIndex)){
    ds_list_add(routeList,blockIndex);
    routeInfoMap[? 'routeList'] =routeList;
    routeInfoMap[? 'totalCost'] =cost;
    var nextBlockX = scr_changeIndex(blockIndex[0],global.mapWidth,global.mapWidth);
    var nextBlockY = scr_changeIndex(blockIndex[1],global.mapWidth,global.mapWidth);
    instance_create(nextBlockX,nextBlockY,yinying_obj);//测试代码 需删除
    
    return routeInfoMap;
}

return undefined;


