/// @description Insert description here

//if(rotateYLeft) {
//    yrot += 90/20
//    if(yrot >= 90) {
//        yrot = 90;
//        rotateYLeft = false;
//    }
//} else 

if(rotateYRight){
    yrot -= 90/20
    if(yrot <= 0) {
        yrot = 0;
        rotateYRight = false
		isDropShadow = true;
    }
}
