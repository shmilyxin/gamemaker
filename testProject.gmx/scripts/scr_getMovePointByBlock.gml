var block = argument0;
var unit = argument1;
var movePoint = block.movePoint;
var unitMap = global.instanceMap[? "unitMap"];
var blockIndex;
blockIndex[0]=block.xIndex;
blockIndex[1]=block.yIndex;
var indexStr = scr_arrayToStr(blockIndex,2,"_");
var unit = unitMap[? indexStr];
if(!is_undefined(unit)){
    movePoint+=99;
}

return movePoint;
