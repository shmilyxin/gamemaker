var unit = argument0;
unit.selected = 0;
unit.image_index= 0;
var routeList = unit.routeList;
if(!is_undefined(routeList)){
    ds_list_destroy(routeList);
}
unit.routeList = undefined;
var pos = scr_getIndex(unit.x,unit.y);
var key = scr_getIndexKey(pos[0],pos[1]);
var unitMap = ds_map_find_value(global.instanceMap,"unitMap");
ds_map_delete(unitMap,unit.key);
unit.key = key;
ds_map_add(unitMap,key,unit)

