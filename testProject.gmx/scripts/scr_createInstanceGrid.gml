/**
根据地图栅格生成地图实例 
返回实例栅格
**/
var grid = argument0;
var width = ds_grid_width(grid);
var height = ds_grid_height(grid);
var returnGrid = ds_grid_create(width,height);
for(var i = 0;i<height;i=i+1){
    for(var j = 0;j<width;j=j+1){
    var key = ds_grid_get(grid,j,i);
    var obj = scr_getTerObjByKey(key);
    var instance = instance_create(32+j*32,32+i*32,obj);
    ds_grid_add(returnGrid,j,i,instance);
    }
}
return returnGrid;
