/**
初始化关卡 argument0 关卡编号
**/
var num = argument1;
var instanceMap = argument0;
var biankuang = instance_create(0,0,biankuang_obj);
ds_map_add(instanceMap,"biankuang",biankuang);

var map = scr_readMap(num);
var width = ds_map_find_value(map,"mapWidth");
var height = ds_map_find_value(map,"mapHeight");
var gridStr = ds_map_find_value(map,"map");
var grid = ds_grid_create(real(width),real(height));
ds_grid_read(grid,gridStr);


var buildStr = ds_map_find_value(map,"buildList");
var buildStrList = ds_list_create();
ds_list_read(buildStrList,buildStr);


var mapGrid = scr_createInstanceGrid(grid);
var buildList = scr_createBuildList(buildStrList);

ds_map_add(instanceMap,"mapGrid",mapGrid);
ds_map_add(instanceMap,"buildList",buildList);

view_xview[0]=0;
view_yview[0]=0;
ds_map_add(instanceMap,"viewX",0);
ds_map_add(instanceMap,"viewY",0);



instance_create(32,32,wangzi_obj);
instance_create(32,32,select_obj);
