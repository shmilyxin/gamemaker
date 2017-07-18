var turn = global.tigerGlobalMap[? "turn"];
turn += 1;
global.tigerGlobalMap[? "turn"] = turn;
with(player_ring_obj){
    instance_destroy();
}
scr_checkGameOver();
if(turn%2==1){
   var tigerPlayer = global.tigerGlobalMap[? "tigerPlayer"];
   instance_create(tigerPlayer.x,tigerPlayer.y,player_ring_obj);

}else{
   var humanPlayer = global.tigerGlobalMap[? "humanPlayer"];
   instance_create(humanPlayer.x,humanPlayer.y,player_ring_obj);
}
