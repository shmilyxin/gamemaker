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
var distance = abs(startIndex[0]-endIndex[0])+abs(startIndex[1]-endIndex[1]);
ds_list_add(routeList,startStr);
ds_map_add_list(routeInfoMap,'routeList',routeList);
ds_map_add(routeInfoMap,'totalCost',0);
ds_map_add(routeInfoMap,'distance',distance);
ds_list_add(allRouteMapList,routeInfoMap);

var count = 0;
var returnMap = undefined;
while(true){
    
    var minCostMap = scr_getMinCostMap(allRouteMapList);
    
    if(is_undefined(minCostMap)||minCostMap[? 'totalCost']>maxCost){
       ds_map_destroy(minCostMap);
       returnMap = undefined;
       break;
    }
    if(minCostMap[? 'distance']==0){
        returnMap = minCostMap;
        break;
    }
    var endRouteMap = scr_insertAroundBlock(allRouteMapList,minCostMap,mapGrid,endIndex);
   
    ds_map_destroy(minCostMap);
    
    if(!is_undefined(endRouteMap)){
        if(endRouteMap[? 'totalCost']<=maxCost){
            returnMap = endRouteMap;
            break;
        }else{
            ds_map_destroy(endRouteMap);
        }
       
    }
   
}

//释放内存
for(var i = 0;i<ds_list_size(allRouteMapList);i++){
    var tempRouteMap = allRouteMapList[|i];
    ds_map_destroy(tempRouteMap);
}
ds_list_destroy(allRouteMapList);


return returnMap;
