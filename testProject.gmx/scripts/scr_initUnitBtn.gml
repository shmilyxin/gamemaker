var biankuang = global.instanceMap[? 'biankuang'];
var unit = argument0;

var btnIdList = ds_list_create() ;
btnIdList[|0] = 0;

var btnTypeList = ds_list_create() ;
btnTypeList[|0] = 5;
biankuang.mode = bkActionMode.btnChangeMode;
biankuang.btnChangeNextMode = bkActionMode.unitActiveMode;
scr_initBtn(biankuang,btnIdList,btnTypeList);
