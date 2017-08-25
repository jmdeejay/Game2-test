/// getProcessorsAtIndex(processors, index, curProcessors);
var processors = argument0;
var index = argument1;
var curProcessors = argument2;

if ds_exists(processors, ds_type_list) && ds_exists(curProcessors, ds_type_list){
  if(index == 1){ ds_list_clear(curProcessors); }
  
  for(var i = 0; i < ds_list_size(processors); i++){
    var processor = ds_list_find_value(processors, i);
    
    if(index == processor[0]){
      if(processor[1] == ""){
        if(ds_list_size(curProcessors) > 0){
          ds_list_delete(curProcessors, ds_list_size(curProcessors) - 1);
        }
      }else{      
        var myArray = 0;
        myArray[0] = processor[1]; // modifier
        myArray[1] = processor[2]; // modValue
        ds_list_add(curProcessors, myArray);
      }
    }
    
  }
}