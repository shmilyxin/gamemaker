/**
读取地图 
argument0 关卡编号 num类型 例 1 2 3 
读取关卡内容 例如level1.map
读成一个ds map
其中 地图key        “map”       值为grid
     mapGrid宽度key “mapWidth”  值为数字
     mapGrid高度key “mapHeight” 值为数字
**/
var stateLevel = argument0;
var path = working_directory + "/Level"+"/level"+string(stateLevel)+".map";
var file = file_text_open_read(path);
var str = "";
while(!file_text_eof(file)){
   str+=file_text_read_string(file);
}
var map = ds_map_create();
ds_map_read(map,str);
return map;


