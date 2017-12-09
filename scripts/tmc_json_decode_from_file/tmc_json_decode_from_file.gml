///tmc_json_decode_from_file(filename)
/*
  returns a ds_map from a json file or -1 if failed
    
*/
if(file_exists(argument0))
{
    //create a buffer from file, it's a fast read
    var buf = buffer_load(argument0);
    //read the string from the buffer
    var s = buffer_read(buf,buffer_string);
    var map =json_decode(s);
    buffer_delete(buf);
    
    return map;
}
//file not found
return -1;