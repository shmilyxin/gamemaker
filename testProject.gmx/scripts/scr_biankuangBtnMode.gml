var biankuang = argument0;
var btnIdList = argument1;
var btnTypeList = argument2;
var select = global.instanceMap[? 'select'];
if(biankuang.mode == 0){
   biankuang.mode = 1;
   scr_initBtn(biankuang,btnIdList,btnTypeList);
   scr_stopSelect(select);
}
