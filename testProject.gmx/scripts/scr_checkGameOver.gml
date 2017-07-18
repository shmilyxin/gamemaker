var turn = global.tigerGlobalMap[? "turn"];
if(turn%2==1){
    var tigerOver = true;
    for (var i = 0;i<instance_number(tiger_obj);i++){
        if(scr_checkTigerMoJAble(instance_find(tiger_obj,i))){
            tigerOver = false;
            break;
        }
    }
    if(tigerOver == true){
        show_message("game over human win");   
    }
}else{
   var humanNum = instance_number(human_obj);
   if(humanNum == 0 ){
        show_message("game over tiger win");   
   }
}
