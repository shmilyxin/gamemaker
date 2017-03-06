/**
argument0 鎸夐挳瀹炰緥
argument1 鏄惁鍙樹负閫変腑 true 鍙橀€変腑 false鍙樹笉閫変腑
**/
var btn = argument0;
var flag = argument1;
if(flag){
    btn.selected =1;
    btn.image_index+=1;
}else{
    btn.selected =0;
    btn.image_index-=1;
}