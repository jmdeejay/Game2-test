/// @description INHERIT AND INIT
event_inherited();

depth = 990;
titleColor = make_color_rgb(242,242,240);
dropColor = make_color_rgb(35,33,61);
myFont = fnt_Bank18;
charWidth = 0;
charHeight = 0;

message[0] = "Blank.";
message_current = 0;
timer = 0;
cutoff = 0;
processors = ds_list_create();
curProcessors = ds_list_create();
chatSound = sfx_Dia_Gruff1;
myPortrait = noone;
fastForward = false;
fastDelay = 1;
delay = 4;
curDelay = delay;

t = 0;
//Amplitude & Freq for Wavy Text
amplitude = 3;
freq = 2;

done = false;
isPushed = false;
hasButtons = true;


myButtons[0] = "Test";
ds_stack_push(G.stateStack, GameState.BuildingDialog);
show_debug_message("***State Stack Pushed***")