/// @description Draw text

//t is for modifiers
t++;

//Read in array length
message_end = array_length_1d(message);

var testString = "M";
draw_set_font(myFont);
charWidth = string_width(testString);
charHeight = string_height(testString) + 5;

//If there are messages
if (message_end > 0){
    //Draw chat box
    // draw_sprite(spr_chatbox, 0, view_wview[0]/2, view_hview[0]-65);
    var width = sprite_width - myPortrait.sprite_width;
    var height = sprite_get_height(sprite_height);
    var paddingX = 10;
    var paddingY = 8;
    var tY = y + paddingY;
    var tX = x + paddingX;
    var lineEnd = (width - (2 * paddingX)) div charWidth;
    
    // Detect preprocessor
    if(cutoff == 0 && timer == 0){
      curDelay = delay;
      scr_getProcessors(message, message_current, processors);
      
      for(var i = 0; i < ds_list_size(processors); i++){
        var processor = ds_list_find_value(processors, i);
        var preproc = processor[1];
        var preprocValue = processor[2];
        
        // ----------------------------------------------
        // You may add multiple preprocessors here
        // ----------------------------------------------
        // Execute preprocessors
        //if(preproc == "portrait"){ // portrait
        //  preprocValue = asset_get_index(preprocValue);
        //  if(sprite_exists(preprocValue)){ 
        //    portrait = preprocValue; 
        //  }else{ 
        //    portrait = noone;
        //  }
        //  ds_list_delete(processors, i);i--;
        //}
        if(preproc == "sound"){ // sound
          preprocValue = asset_get_index(preprocValue);
          if(audio_exists(preprocValue)){ audio_play_sound(preprocValue, 10, false); }
          ds_list_delete(processors, i);i--;
        }
      }
    }
    
    //Draw Portrait
    //if (portrait != noone){ 
    //  draw_sprite(portrait, 0, paddingX, view_hview[0] - (sprite_get_height(portrait) + (paddingY * 2)));
    //  lineEnd -= round(sprite_get_width(portrait) / charWidth); 
    //  tX += sprite_get_width(portrait) + paddingX;
    //}
    
    //Typewriter
    //This is so we print each character one at a time
    if (cutoff < string_length(message[message_current])){
      if (timer >= curDelay){
        if(!audio_is_playing(chatSound) && string_char_at(message[message_current],cutoff) != " "){
          audio_sound_pitch(chatSound, random_range(0.6, 1.5));
          audio_play_sound(chatSound, 10, false);
        }
        cutoff++;
        timer = 0;
      }
      else timer++;
    }
    
    //If we are done printing out the current message
    if (cutoff == string_length(message[message_current])){
      //draw blinking cursor
      timer++;
      if (timer < room_speed div 2) draw_sprite(spr_cursor, 0, view_wview[0]-15, view_hview[0]-15);
      if (timer > room_speed) timer = 0;
        
      //Check player input
      if (keyboard_check_pressed(ord("X")) || mouse_check_button_pressed(mb_left)){
        //If we still have messages left, go to next message
        if (message_current < message_end - 1){
          message_current++;
          cutoff = 0;
        }else { //If we dont, make done = true and destroy this object
          done = true;
        }
        timer = 0;
      }
    }
    
    //Variables for spacing characters
    var line = 0;
    var space = 0;
    var i = 1;
    
    //Text
    while(i <= string_length(message[message_current]) && i <= cutoff){
      var jumpChar = false;
      var txtX = 0;
      var txtY = 0;
      
      // Detect escaped characters
      if(string_char_at(message[message_current], i) == "\""){
        i++;
        if(string_char_at(message[message_current], i) == "#"){
          jumpChar = true;
          string_delete(message[message_current], i-1, 1);
        }else{
          i--;
        }
      }
      
      // Detect jumpline characters
      var jumpLine = (string_char_at(message[message_current], i) == "#" && jumpChar == false);
      if(jumpLine){ i++; }
      
      //Check if the current word fits inside the text box.
      var length = 0;
      while (string_char_at(message[message_current], i) != " " && i <= string_length(message[message_current])){
        i++;
        length++;
      }
      i -= length;
      
      // Jump to a new line
      if ((space + length > lineEnd) || jumpLine){
        space = 0;
        txtX = tX;
        line++;
      }
      
      // Reset variables
      draw_set_font(myFont);
      draw_set_colour(dropColor);
      if !fastForward{
        curDelay = delay;
      }
      txtX = tX + (space * charWidth);
      txtY = tY + (charHeight * line);
        
      // Get processors for current character
      //scr_getProcessorsAtIndex(processors, i, curProcessors);
      //for(var j = 0; j < ds_list_size(curProcessors); j++){
      //  var arrayCurProcessor = ds_list_find_value(curProcessors, j);
      //  var modifier = arrayCurProcessor[0];
      //  var modValue = arrayCurProcessor[1];
      //  // ----------------------------------------------
      //  // You may add multiple modifiers here
      //  // ----------------------------------------------
        
      //  if(modifier == ""){ // normal
      //  }

      //  if(modifier == "delay"){ // delay
      //    if !fastForward {
      //      curDelay = real(modValue);
      //    }
      //  }

      //  if(modifier == "font"){ // font
      //    var tmpFont = fnt_ChronoType12;
      //    if(modValue == "fnt_chat"){ tmpFont = fnt_chat; }
      //    if(modValue == "fnt_gui"){ tmpFont = fnt_gui; }
      //    if(modValue == "fnt_regular"){ tmpFont = fnt_regular; }
      //    draw_set_font(tmpFont);
      //  }

      //  if(modifier == "shaky"){ // shaky
      //    txtX += random_range(-1, 1);
      //    txtY += random_range(-1, 1);
      //  }

      //  if(modifier == "color"){ // color
      //    var tmpColor = c_black;
      //    if(modValue == "white"){ tmpColor = c_white; }
      //    if(modValue == "black"){ tmpColor = c_black; }
      //    if(modValue == "red"){ tmpColor = c_red; }
      //    if(modValue == "blue"){ tmpColor = make_color_rgb(110, 155, 180); }
      //    if(modValue == "green"){ tmpColor = make_color_rgb(130, 170, 75); }
      //    if(modValue == "pink"){ tmpColor = make_color_rgb(220, 70, 135); }
      //    if(modValue == "gradient"){ tmpColor = make_colour_hsv(t + i, 255, 255); }
      //    draw_set_colour(tmpColor);
      //  }

      //  if(modifier == "sine"){ // sine
      //    var so = t + i;
      //    var shift = sin(so * pi * freq / room_speed) * amplitude;
      //    txtY += shift;
      //  }
      //}
      
      var char = string_char_at(message[message_current], i);
      if(jumpChar){ char = "\"" + char; }
	  if (done) char = "";
      draw_text(txtX+2, txtY+2, char);
	  draw_set_color(titleColor);
	  if (done) char = "";
      draw_text(txtX, txtY, char); 
	    
      //Move to next character
      space++;
      i++;
    }
}

draw_set_color(c_white);
draw_set_font(fnt_CodersCrux12);