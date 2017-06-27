
var block = argument0;
var minCostMap =argument1;
var endIndex = argument2;
var unit = argument3;
var minRouteList = minCostMap[? 'routeList'];
var totalCost = minCostMap[? 'totalCost'];

var routeInfoMap = ds_map_create();
var routeList = ds_list_create();
for(var i = 0;i<ds_list_size(minRouteList);i++){
    ds_list_add(routeList,minRouteList[|i]);
}
var movePoint = scr_getMovePointByBlock(block,unit);
var cost = totalCost+movePoint;
var blockIndex;
blockIndex[0]=block.xIndex;
blockIndex[1]=block.yIndex;
var blockStr = scr_arrayToStr(blockIndex,2,";");
if(!scr_checkTerListContant(routeList,blockStr)){
    ds_list_add(routeList,blockStr);
    ds_map_add_list(routeInfoMap,'routeList',routeList);
    ds_map_add(routeInfoMap,'totalCost',cost);
    var distance = abs(blockIndex[0]-endIndex[0])+abs(blockIndex[1]-endIndex[1]);
    ds_map_add(routeInfoMap,'distance',distance);
    return routeInfoMap;
}else{
    ds_list_destroy(routeList);
    ds_map_destroy(routeInfoMap);  
}

return undefined;


