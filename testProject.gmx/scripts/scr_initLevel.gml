/**
初始化关卡 argument0 关卡编号
**/
var num = argument0;
instance_create(0,0,biankuang_obj);
var map = scr_readMap(num);
var width = ds_map_find_value(map,"mapWidth");
var height = ds_map_find_value(map,"mapHeight");
var gridStr = ds_map_find_value(map,"map");
var grid = ds_grid_create(real(width),real(height));
ds_grid_read(grid,gridStr);
var mapGrid = scr_createInstanceGrid(grid);
instance_create(32,32,wangzi_obj);
