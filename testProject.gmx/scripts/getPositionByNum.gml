/**
根据编号获得格子的坐标
**/
var xIndex = argument0;
var yIndex = argument1;
var xLength = argument2;
var yLength = argument3;
var xOffset = argument4;
var yOffset = argument5;
var returnArray;
returnArray[0]=xOffset+xIndex*xLength;
returnArray[1]=yOffset+yIndex*yLength;
return returnArray;

