/// @description EASE IN
// Invoked by: obj_Tracer Left Pressed Event

visible = true;

if(!isTriggered){
  mySpeed = 6;
  path_start(myPath, mySpeed, path_action_stop, false);
  isTriggered = true;
}
