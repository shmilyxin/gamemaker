scr_clearDebugStr();
var startTime = current_time;
var testCopyMap = ds_map_create();
var testList = ds_list_create();
for(var i = 0;i<10000;i++){
    var map = ds_map_create();
    var list = ds_list_create();
    var arrayList;
    arrayList[0]=real(i);
    arrayList[1] =real(i+1);
    var str = scr_arrayToStr(arrayList,2,";");
    ds_list_add(list,str);
    ds_map_add(map,"key",i);
    ds_map_add_list(map,"list",list);
    ds_list_add(testList,map);
}
var keyMap = testList[|5];
testCopyMap[?"key"]= keyMap[?"key"];

var returnList = ds_list_create();
var keyList = keyMap[? "list"];
var keyArray = keyList[|0];

//ds_list_copy(keyList,keyMap[? "list"]);
for(var i = 0;i<ds_list_size(keyList);i++){
    ds_list_add(returnList,keyList[|i]);
}
ds_map_add(testCopyMap,"list",returnList);

for(var i = 0;i<ds_list_size(testList);i++){
    var map = testList[|i];
    ds_map_destroy(map);
}
ds_list_destroy(testList);
var endTime = current_time;
var returnListTemp = testCopyMap[? "list"];
var returnArrayTemp = returnListTemp[|0];
scr_addDebugStr(string(endTime - startTime)+":"+string(testCopyMap[? "key"])+":"+string(returnArrayTemp),3);

