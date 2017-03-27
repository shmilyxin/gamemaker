
var block = argument0;
var minRouteList =argument1;
var totalCost =argument2;
var endIndex = argument3;
var routeInfoMap = ds_map_create();
var routeList = ds_list_create();
for(var i = 0;i<ds_list_size(minRouteList);i++){
    ds_list_add(routeList,minRouteList[|i]);
}
var cost = totalCost+block.movePoint;
var blockIndex;
blockIndex[0]=block.xIndex;
blockIndex[1]=block.yIndex;
var blockStr = scr_arrayToStr(blockIndex,2,";")
if(!scr_checkTerListContant(routeList,blockStr)){
    ds_list_add(routeList,blockStr);
    ds_map_add_list(routeInfoMap,'routeList',routeList);
    ds_map_add(routeInfoMap,'totalCost',cost);
    var distance = abs(blockIndex[0]-endIndex[0])+abs(blockIndex[1]-endIndex[1]);
    ds_map_add(routeInfoMap,'distance',distance);
   // var nextBlockX = scr_changeIndex(blockIndex[0],global.mapWidth,global.mapWidth);
  //  var nextBlockY = scr_changeIndex(blockIndex[1],global.mapWidth,global.mapWidth);
  //  instance_create(nextBlockX,nextBlockY,yinying_obj);//测试代码 需删除
    
    return routeInfoMap;
}else{
    ds_list_destroy(routeList);
    ds_map_destroy(routeInfoMap);  
}

return undefined;


