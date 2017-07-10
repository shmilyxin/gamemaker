/**
    根据方向获取可移动的下一个点的key值
*/
var direct = argument0;
var key = argument1;
var distance = argument2;
var keyArray = scr_splitToArray(key,"_");
var newKey = "";
switch(direct){
    case 1:
    newKey = scr_getIndexKey(real(keyArray[0])-distance,real(keyArray[1])-distance);
    break;
    case 2:
    newKey = scr_getIndexKey(real(keyArray[0])+distance,real(keyArray[1])-distance);
    break;
    case 4:
    newKey = scr_getIndexKey(real(keyArray[0])-distance,real(keyArray[1])+distance);
    break;
    case 8:
    newKey = scr_getIndexKey(real(keyArray[0])+distance,real(keyArray[1])+distance);
    break;
    case 16:
    newKey = scr_getIndexKey(real(keyArray[0]),real(keyArray[1])-distance);
    break;
    case 32:
    newKey = scr_getIndexKey(real(keyArray[0]),real(keyArray[1])+distance);
    break;
    case 64:
    newKey = scr_getIndexKey(real(keyArray[0])-distance,real(keyArray[1]));
    break;
    case 128:
    newKey = scr_getIndexKey(real(keyArray[0])+distance,real(keyArray[1]));
    break;
}
return newKey;
