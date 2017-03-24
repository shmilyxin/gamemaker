var teriList = argument0;
var obj = argument1;
for(var i=0;i<ds_list_size(teriList);i++){
    var thisObj = teriList[|i];
    if(thisObj[0]==obj[0]&&thisObj[1]==obj[1]){
        return true;
    }
}
return false;
