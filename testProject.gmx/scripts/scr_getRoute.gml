/**获得到坐标点的最短路径 
argument0 地图栅格
argument1 起始坐标 数组
argument2 中止坐标 数组
argument3 最大行动力
返回 Map 
key routeList 坐标列表
key totalCost 总消耗行动力

**/

var mapGrid = argument0;
var startIndex = argument1;
var endIndex = argument2;
var maxCost = argument3;



var startX = startIndex[0];
var startY = startIndex[1];



/**初始化**/
var allRouteMapList = ds_list_create();
var routeInfoMap = ds_map_create();
var routeList = ds_list_create();
ds_list_add(mapGrid[# startX,startY]);
routeInfoMap[? 'routeList'] =routeList;
routeInfoMap[? 'totalCost'] =0;
ds_list_add(allRouteMapList);

while(true){
    var minCostMap = scr_getMinCostMap(allRouteMapList);
    if(minCostMap[? 'totalCost']>maxCost){
        return undefined;
    }
    var routeInfoMap = scr_insertAroundBlock(allRouteMapList,minCostMap,mapGrid,endIndex);
    if(!is_undefined(routeInfoMap)){
        return routeInfoMap;
    }
}

