/**
边框按钮初始化
argument0 边框实例
argument1 需要初始化的按钮
argument2 初始化类型
**/
var biankuang = argument0;
var btnIdList = argument1;
var btnTypeList = argument2;
var idSize = ds_list_size(btnIdList);
biankuang.activeBtnList = ds_list_create();
for(var i = 0 ;i<idSize;i++){
    var index = btnIdList[|i];
    var type = btnTypeList[|i];
    var btn = biankuang.allBtnList[|index];
    btn.type = type;
    btn.selected = 0;
    btn.isChanging = 0;
    ds_list_add(biankuang.activeBtnList,btn);
}
biankuang.alarm[0]=5;
