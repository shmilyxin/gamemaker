var idArg = argument0;
if(idArg.state == 0){
    idArg.image_index = 1; 
    idArg.state = 1;
}else if (idArg.state == 1){
    var type = idArg.type;
    idArg.state = 2;
    idArg.selected = 0;
    switch(type){
    case 1:
      idArg.image_index = 2; 
      break;
    case 2:
      idArg.image_index = 4; 
      break;
    case 3:
      idArg.image_index = 6; 
      break;
    case 4:
      idArg.image_index = 8; 
      break;
    case 5:
      idArg.image_index = 10; 
      break;
    }
}else if(idArg.state == 2){
    idArg.image_index = 1; 
    idArg.state = 3;
}else if (idArg.state == 3){
    idArg.image_index = 0; 
    idArg.state = 0;
    
}
