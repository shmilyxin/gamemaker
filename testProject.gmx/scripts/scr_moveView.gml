/**
根据坐标移动视野
argument0 当前光标坐标可能是X或Y
argument1 标志是X坐标变化还是Y坐标变化 1 为X 2为Y
**/
var pos = argument0;
var type = argument1;
var biankuang = argument2;
if(type == 1){
    var xView = view_xview[0];
    var xMaxView = global.viewXWidth-mapWidth;
    if(pos-xView>=xMaxView){
        view_xview[0] = xView+mapWidth;
        biankuang.x += mapWidth;
    }else if(pos-xView<=mapWidth&xView>0){
        view_xview[0] = xView-mapWidth;
         biankuang.x -= mapWidth;
    }
}else if(type == 2){
    var yView = view_yview[0];
    var yMaxView = global.viewYWidth-(mapWidth*5);
    if(pos-yView>=yMaxView){
        view_yview[0] = yView+mapWidth;
        biankuang.y += mapWidth;
    }else if(pos-yView<=mapWidth&yView>0){
        view_yview[0] = yView-mapWidth;
        biankuang.y -= mapWidth;
    }
}

