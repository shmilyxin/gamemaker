scr_clearDebugStr();
var startTime = current_time;

var testList = ds_list_create();
for(var i = 0;i<10000;i++){
    var map = ds_map_create();
    ds_map_add(map,"key",i);
    ds_list_add(testList,map);
}
for(var i = 0;i<ds_list_size(testList);i++){
    ds_map_destroy(testList[|i]);
}
ds_list_destroy(testList);
var endTime = current_time;
scr_addDebugStr(string(endTime - startTime),1);
