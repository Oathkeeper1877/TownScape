///Platform Physics
wkey = keyboard_check(ord('W')) || keyboard_check(vk_up);
akey = keyboard_check(ord('A')) || keyboard_check(vk_left);
skey = keyboard_check(ord('S')) || keyboard_check(vk_down);
dkey = keyboard_check(ord('D')) || keyboard_check(vk_right);
ekey = keyboard_check(ord('E'));
nokey = ( !wkey && !akey && !skey && !dkey && !ekey);



//Moving Up 
if (wkey) {
    dir = 0.5;
    vspd = -spd;
}

//Moving Left
if (akey) {
    dir = 1;
 hspd = -spd;
}

//Moving Down 
if (skey) {
    dir = 1.5;
    vspd = spd;
}

//Moving Right 
if (dkey) {
    dir = 0;
    hspd = spd;
}



//Check for not moving 
if ((!dkey && !akey) || (dkey && akey)) {
    hspd = 0;
}
if ((!wkey && !skey) || (wkey && skey)) {
    vspd = 0;
}



