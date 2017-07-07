/**
* 根据序号获得具体obj的定义
* 定义地形序号 
0：海洋 1：浅滩 2：河流
3：瀑布 4：森林 5：山野
6：悬崖 7：悬崖右 8：悬崖左
*/
var unitObjArray; ;
unitObjArray[0]= sea_obj;
unitObjArray[1]= qiantan_obj;
unitObjArray[2]= heliu_obj;
unitObjArray[3]= pubu_obj;
unitObjArray[4]= senlin_obj;
unitObjArray[5]= shanye_obj;
unitObjArray[6]= xuanya_obj;
unitObjArray[7]= xuanya_r_obj;
unitObjArray[8]= xuanya_l_obj;
return unitObjArray[argument0];

