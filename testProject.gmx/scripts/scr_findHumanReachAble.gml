var human = argument0;
var pointInfoMap = global.tigerGlobalMap[? "pointInfoMap"];
var key = human.pointKey;
var pointInfo = pointInfoMap[? key];
var moveAbleFlag = pointInfo[? "moveAbleFlag"];
var jumpAbleFlag = pointInfo[? "jumpAbleFlag"];

for(var i = 0;i<8;i++){
    var num = power(2,i);
    var moveAble = false;
    var jumpAble = false;
    
    if((num&moveAbleFlag)==num){
        moveAble = true;
    }
    if((num&jumpAbleFlag)==num){
        jumpAbleFlag = true;
    }
    if(moveAble){
    var moveKey = scr_getNewKeyByDirect(num,key,1);
    var newPointInfoMap = pointInfoMap[? moveKey];
    if(is_undefined(newPointInfoMap[? "instance"])){
       var yinying = instance_create(newPointInfoMap[? "xPos"],newPointInfoMap[? "yPos"],yinyingtiger_obj);
       yinying.pointKey = moveKey;
    }
    }
        
    
}



