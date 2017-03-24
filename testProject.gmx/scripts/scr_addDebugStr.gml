var debugStr = argument0;
var maxSize = argument1;
var debug = global.instanceMap[? "debug"];
var size = ds_list_size(debug.strList);
if(size>0){
    var str = debug.strList[|size-1];
    var strList = scr_splitToList(str,";");
    if(ds_list_size(strList)<maxSize){
        str+=";"+debugStr;
        debug.strList[|size-1] = str;
    }else{
        ds_list_add(debug.strList,debugStr);
    }
}else{
    ds_list_add(debug.strList,debugStr);
}
