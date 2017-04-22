switch (mpos) {
    case 0: { ///Resume
        audio_play_sound(snd_select, 0, false);
        instance_activate_all();
        instance_destroy();
        break;
    }
    case 1: { //Save
        audio_play_sound(snd_select, 0, false);
        instance_activate_all();
        instance_destroy();
        instance_create(x, y, obj_save);
        break;
    } 
    case 2: { //Load
        audio_play_sound(snd_select, 0, false);
        instance_activate_all();
        instance_destroy();
        game_load("save1.sav");
        break;
    }
    case 3: { //Options
        audio_play_sound(snd_select, 0, false);
        break;
    }
    case 4: { //Quit
        audio_play_sound(snd_select, 0, false);
        game_end();
        break;
    }
    
    default: break;

}
