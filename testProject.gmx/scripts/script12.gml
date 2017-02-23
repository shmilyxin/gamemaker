 var movingFlag = argument0;
 var directionFlag = argument1;
 var xDirection = argument2;
 var yDirection = argument3;
 if(movingFlag==1){
        if(directionFlag==0){
            x = x+global.mapWidth*xDirection;
        }else if(directionFlag==1){
            y = y+global.mapWidth*yDirection;
        }
    }
