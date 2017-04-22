switch (mpos) {
    case 0: { ///New Game
        audio_play_sound(snd_select, 0, false);
        instance_create(x, y, obj_fade);
        break;
    }
    case 1: { //Continue
        audio_play_sound(snd_select, 0, false);
        game_load("save1.sav");
        ini_open('control.ini');
        global.Morning = ini_read_string('Time', 'Morning', 'true');
        ini_close();
        break;
    }
    case 2: { //Options
        audio_play_sound(snd_select, 0, false);
        break;
    }
    case 3: { //Quit
        audio_play_sound(snd_select, 0, false);
        game_end();
        break;
    }
    
    default: break;

}
