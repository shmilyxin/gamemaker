globalvar tigerGlobalMap;
tigerGlobalMap = ds_map_create();
pointInfoMap = ds_map_create();
var sportKeyStr = ""+
"0_2"+","+"52"+","+"4"+","+"206"+","+"26"+";"+
"1_1"+","+"81"+","+"16"+","+"170"+","+"62"+";"+
"1_3"+","+"162"+","+"32"+","+"242"+","+"62"+";"+
"2_0"+","+"21"+","+"21"+","+"66"+","+"96"+";"+
"2_1"+","+"7"+","+"5"+","+"136"+","+"96"+";"+
"2_2"+","+"255"+","+"55"+","+"206"+","+"96"+";"+
"2_3"+","+"7"+","+"6"+","+"276"+","+"96"+";"+
"2_4"+","+"38"+","+"38"+","+"346"+","+"96"+";"+
"3_0"+","+"13"+","+"5"+","+"66"+","+"184"+";"+
"3_1"+","+"255"+","+"85"+","+"136"+","+"184"+";"+
"3_2"+","+"15"+","+"15"+","+"206"+","+"184"+";"+
"3_3"+","+"255"+","+"166"+","+"276"+","+"184"+";"+
"3_4"+","+"14"+","+"6"+","+"346"+","+"184"+";"+
"4_0"+","+"93"+","+"93"+","+"66"+","+"272"+";"+
"4_1"+","+"15"+","+"13"+","+"136"+","+"272"+";"+
"4_2"+","+"255"+","+"255"+","+"206"+","+"272"+";"+
"4_3"+","+"15"+","+"14"+","+"276"+","+"272"+";"+
"4_4"+","+"174"+","+"174"+","+"346"+","+"272"+";"+
"5_0"+","+"13"+","+"9"+","+"66"+","+"360"+";"+
"5_1"+","+"255"+","+"89"+","+"136"+","+"360"+";"+
"5_2"+","+"15"+","+"15"+","+"206"+","+"360"+";"+
"5_3"+","+"255"+","+"154"+","+"276"+","+"360"+";"+
"5_4"+","+"14"+","+"10"+","+"346"+","+"360"+";"+
"6_0"+","+"73"+","+"73"+","+"66"+","+"448"+";"+
"6_1"+","+"11"+","+"9"+","+"136"+","+"448"+";"+
"6_2"+","+"255"+","+"203"+","+"206"+","+"448"+";"+
"6_3"+","+"11"+","+"10"+","+"276"+","+"448"+";"+
"6_4"+","+"138"+","+"138"+","+"346"+","+"448"+";"+
"7_1"+","+"81"+","+"64"+","+"170"+","+"486"+";"+
"7_3"+","+"162"+","+"128"+","+"242"+","+"486"+";"+
"8_2"+","+"200"+","+"8"+","+"206"+","+"522"+";";
var keyList = scr_splitToList(sportKeyStr,";");
for(var i = 0;i<ds_list_size(keyList);i++){
    var valueList= scr_splitToList(keyList[|i],",");
    var blockMap = ds_map_create();
    var key = valueList[|0];
    var moveAbleFlag = valueList[|1];
    var jumpAbleFlag = valueList[|2];
    var xPos = valueList[|3];
    var yPos = valueList[|4];
    blockMap[? "moveAbleFlag"] =real(moveAbleFlag);
    blockMap[? "jumpAbleFlag"] =real(jumpAbleFlag);
    blockMap[? "xPos"] =real(xPos);
    blockMap[? "yPos"] =real(yPos);
    blockMap[? "instance"] = undefined;
    ds_map_add_map(pointInfoMap,key,blockMap);
    ds_list_destroy(valueList);
}
ds_map_add_map(global.tigerGlobalMap,"pointInfoMap",pointInfoMap);
ds_map_add(global.tigerGlobalMap,"turn",1);
ds_list_destroy(keyList);
scr_createTiger("0_2");
scr_createTiger("8_2");
scr_createHuman("4_1");
scr_createHuman("4_2");
scr_createHuman("4_3");
scr_createHuman("4_4");
scr_createHuman("5_1");
scr_createHuman("5_2");
scr_createHuman("5_3");
scr_createHuman("5_4");
scr_createHuman("4_0");
scr_createHuman("5_0");
scr_createHuman("3_0");
scr_createHuman("3_1");
scr_createHuman("3_2");
scr_createHuman("3_3");
scr_createHuman("3_4");

var tigerPlayer = instance_create(32,32,tiger_player_obj);
tigerPlayer.isPlayer1 = true;
var humanPlayer = instance_create(32,480,human_player_obj);
humanPlayer.isPlayer2 = true;
ds_map_add(global.tigerGlobalMap,"tigerPlayer",tigerPlayer);
ds_map_add(global.tigerGlobalMap,"humanPlayer",humanPlayer);


