/// scr_getProcessors(messageArray, index, processors)
var messageArray = argument0;
var indexArray = argument1;
var listProc = argument2;
var current_message = messageArray[indexArray];
var i = 1;
var j = 1;

if(ds_exists(listProc, ds_type_list)){
  ds_list_clear(listProc);
  while(i <= string_length(current_message)){
    if (string_char_at(current_message, i) == "["){
      j = i;
      i++;
      
      var isValue = false;
      var preproc = "";
      var preprocValue = "";
      
      while(string_char_at(current_message, i) != "]" && string_char_at(current_message, i) != "[" && i <= string_length(current_message)){
        if(!isValue){ // modifier
          if(string_char_at(current_message, i) == "="){ 
            i++;
            isValue = true; 
          }else{
            preproc += string_char_at(current_message, i++);
          }
        }else{ // value
          preprocValue += string_char_at(current_message, i++);
        }
      }
    
      // Found processor start & end = valid processor
      if (string_char_at(current_message, i) == "]"){
        i++;
        current_message = string_delete(current_message, j, i - j);
        i = j;
        
        var tmpArray = 0;
        tmpArray[0] = i;   
        tmpArray[1] = string_replace_all(string_lower(preproc), " ", "");
        tmpArray[2] = string_replace_all(string_lower(preprocValue), " ", "");
        ds_list_add(listProc, tmpArray);
      }
    }else{
      i++;   
    }   
  }
}

messageArray[@ indexArray] = current_message;