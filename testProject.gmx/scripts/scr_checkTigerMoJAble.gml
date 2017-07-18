var tiger = argument0;

var pointInfoMap = global.tigerGlobalMap[? "pointInfoMap"];
var key = tiger.pointKey;
var pointInfo = pointInfoMap[? key];
var moveAbleFlag = pointInfo[? "moveAbleFlag"];
var jumpAbleFlag = pointInfo[? "jumpAbleFlag"];
var finalMoveFlag = false;
for(var i = 0;i<8;i++){
    var num = power(2,i);
    var moveAble = false;
    var jumpAble = false;
    
    if((num&moveAbleFlag)==num){
        moveAble = true;
    }
    if((num&jumpAbleFlag)==num){
        jumpAble = true;
    }
    if(moveAble){
        var moveKey = scr_getNewKeyByDirect(num,key,1);
        var newPointInfoMap = pointInfoMap[? moveKey];
        if(is_undefined(newPointInfoMap[? "instance"])){
            finalMoveFlag= true;
            break;
        }
    }
    if(jumpAble){
        var moveKey = scr_getNewKeyByDirect(num,key,1);
        var movePointInfoMap = pointInfoMap[? moveKey];
        var moveInstance = movePointInfoMap[? "instance"];
        if(!is_undefined(moveInstance)&&moveInstance.type == 2){
            var jumpKey = scr_getNewKeyByDirect(num,key,2);
            var jumpPointInfoMap = pointInfoMap[? jumpKey];
            if(is_undefined(jumpPointInfoMap[? "instance"])){
                finalMoveFlag= true;
                break;
            }
        }
        
    }
}
return finalMoveFlag;

