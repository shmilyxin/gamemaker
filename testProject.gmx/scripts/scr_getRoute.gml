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

var startStr = scr_arrayToStr(startIndex,2,";");
var endStr = scr_arrayToStr(endIndex,2,";");

/**初始化**/
var allRouteMapList = ds_list_create();
var routeInfoMap = ds_map_create();
var routeList = ds_list_create();
ds_list_add(routeList,startStr);
ds_map_add_list(routeInfoMap,'routeList',routeList);
ds_map_add(routeInfoMap,'totalCost',0);
ds_list_add(allRouteMapList,routeInfoMap);

var count = 0;
var returnMap = undefined;
var startTime = current_time;
while(true){
    count+=1;
    
    var minCostMap = scr_getMinCostMap(allRouteMapList);
    if(is_undefined(minCostMap)||minCostMap[? 'totalCost']>maxCost){
       returnMap = undefined;
       break;
    }
    var minRouteList = minCostMap[? 'routeList'];
    var minRouteListSize = ds_list_size(minRouteList);
    var lastPoint = minRouteList[|minRouteListSize-1];
    if(lastPoint==endStr){
        returnMap = minCostMap;
        break;
    }
    scr_insertAroundBlock(allRouteMapList,minCostMap,mapGrid,maxCost);
    ds_list_destroy(minRouteList);
    ds_map_destroy(minCostMap);
}
//释放内存
for(var i = 0;i<ds_list_size(allRouteMapList);i++){
    var tempRouteMap = allRouteMapList[|i];
    ds_map_destroy(tempRouteMap);
}
ds_list_destroy(allRouteMapList);
var endTime = current_time;
scr_addDebugStr(string(endIndex[0])+"_"+string(endIndex[1])+":"+string(count)+":"+string(endTime - startTime),3); 
return returnMap;
