/**
根据建筑标识生成建筑实例
返回实例列表
**/
var buildList = argument0;
var size = ds_list_size(buildList);
var returnList = ds_list_create();
for(var i = 0;i<size;i=i+1){
    var buildStr = buildList[|i];
    buildData = scr_splitToList(buildStr,",");
    var obj = scr_getBuildObjByKey(real(buildData[|2]));
    var xPosition = scr_changeIndex(real(buildData[|0]),global.mapWidth,global.mapWidth);
    var yPosition = scr_changeIndex(real(buildData[|1]),global.mapWidth,global.mapWidth);
    var instance = instance_create(xPosition,yPosition,obj);
    ds_list_add(returnList,instance);
}
return returnList;
