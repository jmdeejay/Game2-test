if(isTriggered && !isEnded){
	if (animationAxis == "x"){
		animX = script_execute(animationMode, myTimer, xstart, (animationDir * xOffset), animationTotal);
	}else{
		animY = script_execute(animationMode, myTimer, ystart, (animationDir * yOffset), animationTotal);
	}
	myTimer += myTimerSpeed;
	
	if(myTimer >= animationTotal){
		isTriggered = false;
		isEnded = true;
	}
}
