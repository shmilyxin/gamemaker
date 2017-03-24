/**
    将当前单元格周围的单元格加入路线中 忽略已填加的单元格
**/
var allRouteMapList = argument0;
var minCostMap =argument1;
var mapGrid =argument2;
var maxCost =argument3;
var minRouteList = minCostMap[? 'routeList'];
var xMax = ds_grid_width(mapGrid);
var yMax = ds_grid_height(mapGrid);
var totalCost = minCostMap[? 'totalCost'];
var minRouteListSize = ds_list_size(minRouteList);
var lastPoint = minRouteList[|minRouteListSize-1];
var indexList = scr_splitToList(lastPoint,";");
var xIndex = real(indexList[|0]);
var yIndex = real(indexList[|1]);

if(yIndex>0){
    var newX = xIndex;
    var newY = yIndex-1;
    var blockUp = mapGrid[# newX,newY];
    var routeInfoMap = scr_insertNextBlock(blockUp,minRouteList,totalCost,maxCost);
    if(!is_undefined(routeInfoMap)){
        ds_list_add(allRouteMapList,routeInfoMap);
    }
}
if(yIndex<yMax-1){
    var newX = xIndex;
    var newY = yIndex+1;
    var blockDown = mapGrid[# newX,newY];
    var routeInfoMap = scr_insertNextBlock(blockDown,minRouteList,totalCost,maxCost);
    if(!is_undefined(routeInfoMap)){

        ds_list_add(allRouteMapList,routeInfoMap);
    }
}
if(xIndex>0){
    var newX = xIndex-1;
    var newY = yIndex;
    var blockLeft = mapGrid[# newX,newY];
    var routeInfoMap = scr_insertNextBlock(blockLeft,minRouteList,totalCost,maxCost);
    if(!is_undefined(routeInfoMap)){

        ds_list_add(allRouteMapList,routeInfoMap);
    }
}
if(xIndex<xMax-1){
    var newX = xIndex+1;
    var newY = yIndex;
    var blockRight = mapGrid[# newX,newY];
    var routeInfoMap = scr_insertNextBlock(blockRight,minRouteList,totalCost,maxCost);
    if(!is_undefined(routeInfoMap)){

        ds_list_add(allRouteMapList,routeInfoMap);
    }
}
ds_list_destroy(indexList);



