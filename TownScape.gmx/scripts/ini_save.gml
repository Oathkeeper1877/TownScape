ini_open("save.ini");
//Player Save
with (obj_player) {
ini_write_real("Stats","Player HP",  playerHp);
ini_write_real("Stats","Player Max HP",  maxPlayerHp);
ini_write_real("Stats","Player Stamina",  playerSt);
ini_write_real("Stats","Player Max Stamina",  maxPlayerSt);
ini_write_real("Stats","Player Nourishment",  playerNm);
ini_write_real("Stats","Player Max Nourishment",  maxPlayerNm);
ini_write_real("Resources","Wood Collected", global.woodCol);
ini_write_real("Resources","Rocks Collected", global.rockCol);
}
ini_close();
ini_open("save.ini");
//World Save
inst_num=instance_number(obj_collision)
n0=0;
n1=0;
while inst_num > 0 {
inst=instance_find(obj_collision,inst_num-1)
ini_write_real ("World",string(n0)+string(n1),inst.object_index);
n1+=1;
ini_write_real ("World",string(n0)+string(n1),inst.x);
n1+=1;
ini_write_real ("World",string(n0)+string(n1),inst.y);
n1+=1;
ini_write_real ("World",string(n0)+string(n1),inst.creator);
inst_num-=1
n0+=1;
n1=0;
}
ini_close();
