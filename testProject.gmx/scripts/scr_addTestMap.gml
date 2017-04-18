var allMap = argument0;
for(var i = 0;i<10;i++){
  for(var j = 0;j<10;j++){
         var map = ds_map_create();
         var key = string(i)+"_"+string(j)+"_Test"
         ds_map_add(map,"key",key);
         ds_map_add_map(allMap,key,map);
    }
}
