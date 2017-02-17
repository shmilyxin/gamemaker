/**
将一段字符串转化为grid 格式为"<宽度><分隔符1><高度><分隔符1><内容1><分隔符2><内容2><分隔符2><内容3>"
argument0 数据主体
argument1 用来分隔grid宽度高度和数据的分隔符
argument2 用来分隔grid数据的分隔符
**/
var str = argument0;
var grid = null;
var splitOut = argument1;
var splitInside = argument2;
if(str!=""){
    var gridBody = scr_splitToList(str,splitOut);
    var width = real(gridBody[|0]);
    var height = real(gridBody[|1]);
    var valueList = scr_splitToList(gridBody[|2],splitInside);
    grid = ds_grid_create(width,height);
    for(var i = 0;i<height;i++){
        for(var j = 0;j<width;j++){
        var index = i*width+j;
            ds_grid_add(grid,j,i,valueList[|index]);
        }
    }
}
return grid;
