///Music Control

if (room == rm_valley && morning == true) {
    audio_stop_all();
    global.Music = snd_VenturingOut;
}
if (room == rm_valley && morning == false) {
    audio_stop_all();
    global.Music = snd_Roaming;
}





