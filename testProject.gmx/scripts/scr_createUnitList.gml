/**
根据单位标识生成单位实例
返回实例列表
**/
var unitList = argument0;
var size = ds_list_size(unitList);
var returnList = ds_list_create();
for(var i = 0;i<size;i=i+1){
    var unitStr = unitList[|i];
    unitData = scr_splitToList(unitStr,",");
    var obj = scr_getUnitObjByKey(real(unitData[|2]));
    var xPosition = scr_changeIndex(real(unitData[|0]),global.mapWidth,global.mapWidth);
    var yPosition = scr_changeIndex(real(unitData[|1]),global.mapWidth,global.mapWidth);
    var instance = instance_create(xPosition,yPosition,obj);
    ds_list_add(returnList,instance);
}
return returnList;
