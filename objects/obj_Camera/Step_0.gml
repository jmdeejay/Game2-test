/// @description MOVE THE CAMERA

var thisCam = view_camera[view_number];

if(init == false){
  show_debug_message("Camera #" + string(view_number) + " is initialized.");
  x = camera_get_view_x(thisCam);
  y = camera_get_view_y(thisCam);
  destX = x;
  destY = y;
  initWidth = round(camera_get_view_width(thisCam));
  initHeight = round(camera_get_view_height(thisCam));
  init = true;
}

//If we've been told to shake the screen by any amount
if(screenshakeAmount > 0) {
  //View position should wobble away from normal position by screneshake amount
  //If it's zero, this will be perfectly stable
  var ShakeX = random_range(-screenshakeAmount, screenshakeAmount);
  var ShakeY = random_range(-screenshakeAmount, screenshakeAmount);
  camera_set_view_size(thisCam,initWidth - abs(ShakeX), initHeight - abs(ShakeY));
  camera_set_view_angle(thisCam, ShakeX / 10);
  camera_set_view_pos(thisCam, x + ShakeX, y + ShakeY);
 
  //Make sure that amount is being reduced each frame, so we stabilise eventually
  screenshakeAmount -= 1;

} else {
  //If we've stabilised or never had any screenshake
  screenshakeAmount = 0;
  initWidth = round(camera_get_view_width(thisCam));
  initHeight = round(camera_get_view_height(thisCam));
  camera_set_view_angle(thisCam, 0);
  //Note the position the view 'should' be in
  x = round(lerp(x, camera_get_view_x(thisCam), lerp_cam));
  y = round(lerp(y, camera_get_view_y(thisCam), lerp_cam)); 
  
  // Move to a new destination 
  if(destX != x or destY != y){
    x = round(lerp(x, destX, lerp_cam));
    y = round(lerp(y, destY, lerp_cam));

  }
}
