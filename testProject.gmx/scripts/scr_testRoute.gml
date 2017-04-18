//var mapGrid = global.instanceMap[? "mapGrid"];
with(yinying_obj){
    instance_destroy();
}
scr_clearDebugStr();
var startPos;
var endPos;
startPos[0] = 5;
startPos[1] = 5;
var mapGrid = global.instanceMap[? "mapGrid"];
var allMap = ds_map_create();
//var startTime = current_time;
//var str = "";
//for(var i = 0;i<100;i++){
 //   for(var j = 0;j<100;j++){
 //        var map = ds_map_create();
 //        var key = string(i)+"_"+string(j)
 //        ds_map_add(map,"key",key);
  //       ds_map_add_map(allMap,key,map);
 //   }
//}
//var endTime = current_time;
//scr_addDebugStr(string(endTime - startTime),3);



//ds_map_clear(allMap);
    endPos[0]=1;
     endPos[1]=9;
        var movePoint = 7;
        var routeMap = scr_getRoute(mapGrid,startPos,endPos,movePoint);
        if(!is_undefined(routeMap)){
           ds_map_destroy(routeMap);
        }
        scr_addDebugStr(string(endPos[0])+"_"+string(endPos[1]),1);
        //scr_testScript(1,1);

//scr_addDebugStr(string(string_length(ds_map_write(routeMap))),3);
//var insStart =undefined;
//    with (yinying_obj) {
//        if(x==scr_changeIndexToPos(startPos[0])&&y==scr_changeIndexToPos(startPos[1])){
//            insStart = id;
//        }
//    };
//    if(is_undefined(insStart)){
//          insStart =instance_create(scr_changeIndexToPos(startPos[0]), scr_changeIndexToPos(startPos[1]), yinying_obj);
//    }
//with (insStart) {image_index=1};

//var insEnd =undefined;
//    with (yinying_obj) {
//        if(x==scr_changeIndexToPos(endPos[0])&&y==scr_changeIndexToPos(endPos[1])){
//            insEnd = id;
//        }
//   };
//    if(is_undefined(insEnd)){
//          insEnd =instance_create(scr_changeIndexToPos(endPos[0]), scr_changeIndexToPos(endPos[1]), yinying_obj);
//    }
//with (insEnd) {image_index=2};
