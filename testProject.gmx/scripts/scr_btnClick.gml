var btn = argument0;
var type = btn.type;
var state = btn.state;
if(state ==2){
    switch(type){
        case 5: 
        var biankuang = ds_map_find_value(global.instanceMap,"biankuang");
        var select = ds_map_find_value(global.instanceMap,"select");
        var unit = select.actionUnit;
        scr_unitDecide(unit);
        scr_selectCancel(select);
        scr_biankuangSelectMode(biankuang);
        break;
    }
}

