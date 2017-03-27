var debug = global.instanceMap[? "debug"];
var size = ds_list_size(debug.strList);
var str ="";
if(size>0){
    for(var i=0;i<size;i++){
        str+=debug.strList[| i]+";";
    }
    show_message(str);
}
