/// @description CLEAR DS
if ds_exists(processors, ds_type_list){ ds_list_destroy(processors); }
if ds_exists(curProcessors, ds_type_list){ ds_list_destroy(curProcessors); }
