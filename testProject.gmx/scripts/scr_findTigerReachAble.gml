var tiger = argument0;
tiger.selected = true;
var pointInfoMap = global.tigerGlobalMap[? "pointInfoMap"];
var key = tiger.pointKey;
var pointInfo = pointInfoMap[? key];
var moveAbleFlag = pointInfo[? "moveAbleFlag"];
var jumpAbleFlag = pointInfo[? "jumpAbleFlag"];

for(var i = 0;i<8;i++){
    var num = power(2,i);
    var moveAble = false;
    var jumpAble = false;
    
    if((num&&moveAbleFlag)==num){
        moveAble = true;
    }
    if((num&&jumpAbleFlag)==num){
        jumpAbleFlag = true;
    }
    if(moveAble){
    var moveKey = scr_getNewKeyByDirect(num,key);
    var newPointInfoMap = pointInfoMap[? moveKey];
    if(is_undefined(newPointInfoMap[? "instance"])){
       instance_create(newPointInfoMap[? "xPos"],newPointInfoMap[? "yPos"],yinying_obj);
    }
    }
        
    
}
