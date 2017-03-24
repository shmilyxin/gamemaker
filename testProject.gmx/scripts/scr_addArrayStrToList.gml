var list = argument0;
var array = argument1;
var count = argument2;
var splitRex = argument3;
var str ="";
for(var i =0;i<count;i++){
    if(i==0){
       str+=string(array[i]);
    }else{
       str+=splitRex+string(array[i]);
    }
}
ds_list_add(list,str);
return list;
