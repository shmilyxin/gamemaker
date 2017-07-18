var tiger = argument0;

var pointInfoMap = global.tigerGlobalMap[? "pointInfoMap"];
var key = tiger.pointKey;
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
        jumpAble = true;
    }
    if(moveAble){
        var moveKey = scr_getNewKeyByDirect(num,key,1);
        var newPointInfoMap = pointInfoMap[? moveKey];
        if(ds_list_empty(newPointInfoMap[? "instanceList"])){
            var yinying = instance_create(newPointInfoMap[? "xPos"],newPointInfoMap[? "yPos"],yinyingtiger_obj);
            yinying.pointKey = moveKey;
        }
    }
    if(jumpAble){
        var moveKey = scr_getNewKeyByDirect(num,key,1);
        var movePointInfoMap = pointInfoMap[? moveKey];
        var moveInstance = movePointInfoMap[? "instanceList"];
        if(!ds_list_empty(moveInstance)&&moveInstance[|0].type == 2){
            var jumpKey = scr_getNewKeyByDirect(num,key,2);
            var jumpPointInfoMap = pointInfoMap[? jumpKey];
            if(ds_list_empty(jumpPointInfoMap[? "instanceList"])){
                var yinying = instance_create(jumpPointInfoMap[? "xPos"],jumpPointInfoMap[? "yPos"],yinyingtiger_obj);
                yinying.pointKey = jumpKey;
                yinying.clearPiece = moveKey;
            }
        }
        
    }
        
    
}



