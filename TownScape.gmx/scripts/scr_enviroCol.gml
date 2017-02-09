if (place_free(obj_player.x,obj_player.y)) {
    depth = -1;
    mask_index = sprite_index;
}
//Tree Collision

if (place_meeting(x, y+vspd, obj_tree)) {
    depth = -999;
    mask_index = spr_newMask;
}


