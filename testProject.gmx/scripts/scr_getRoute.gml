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

ds_list_add(routeList,startIndex);
routeInfoMap[? 'routeList'] =routeList;
routeInfoMap[? 'totalCost'] =0;
ds_list_add(allRouteMapList,routeInfoMap);

var count = 0;
var returnMap = undefined;
var startTime = current_time;
while(true){
    count+=1;
    
    var minCostMap = scr_getMinCostMap(allRouteMapList);
    if(is_undefined(minCostMap)||minCostMap[? 'totalCost']>maxCost){
       ds_list_destroy(allRouteMapList);
       returnMap = undefined;
       break;
    }
    var minRouteList = minCostMap[? 'routeList'];
    var minRouteListSize = ds_list_size(minRouteList);
    var lastPoint = minRouteList[|minRouteListSize-1];
    var xIndex = lastPoint[0];
    var yIndex = lastPoint[1];
    var endX = endIndex[0];
    var endY = endIndex[1];
    if(xIndex==endX&&yIndex==endY){
        ds_list_destroy(allRouteMapList);
        returnMap = minCostMap;
        break;
    }
    var returnInfoMap = scr_insertAroundBlock(allRouteMapList,minCostMap,mapGrid,maxCost);
    
    
}
var endTime = current_time;
scr_addDebugStr(string(endIndex[0])+"_"+string(endIndex[1])+":"+string(count)+":"+string(endTime - startTime),3); 
return returnMap;
