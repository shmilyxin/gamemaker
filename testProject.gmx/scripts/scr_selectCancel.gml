/**选择取消**/
var select = argument0;
select.mode = 0;
ds_map_destroy(select.actionMap);

select.actionUnit = undefined;
select.actionMap = undefined;

with (yinying_obj)
{
    instance_destroy();
}
