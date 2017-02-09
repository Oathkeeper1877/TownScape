//Up Movement
if (wkey) {
    sprite_index = spr_Char_BackwardWalk;
    image_speed = 0.125;
}

//Left Movement
if (akey) {
    sprite_index = spr_Char_LeftWalk;
    image_speed = 0.125;
}

//Down Movement
if (skey) {
    sprite_index = spr_Char_ForwardWalk;
    image_speed = 0.125;
}

//Right Movement
if (dkey) {
    sprite_index = spr_Char_RightWalk;
    image_speed = 0.125;
}

//Still Up
 if (dir == 0.5 && nokey) {
    sprite_index = spr_Char_BackwardWalk;
    image_index = 0;
    image_speed = 0; 
}

//Still Left
 if (dir == 1 && nokey) {
    sprite_index = spr_Char_LeftIdleBlink;
    image_speed = 0.125; 
}

//Still Down
 if ( (dir == 1.5 && nokey) || ((dkey && akey) || (wkey && skey)) ) {
    sprite_index = spr_Char_ForwardIdleBlink;
    image_speed = 0.125; 
}

//Still Right
 if (dir == 0 && nokey) {
    sprite_index = spr_Char_RightIdleBlink;
    image_speed = 0.125; 
}


 

