ini_open("save.ini");
//Load World
n0=0
n1=0
inst=0
xx=0
yy=0
ccc=0
while ini_key_exists ("World",string(n0)+string(n1)){
    inst=ini_read_real("World",string(n0)+string(n1),0)
    n1+=1
    xx=ini_read_real("World",string(n0)+string(n1),0)
    n1+=1
    yy=ini_read_real("World",string(n0)+string(n1),0)
    n1+=1
    ccc=ini_read_real("World",string(n0)+string(n1),0)
    with instance_create (xx,yy,inst){
    creator=ccc
    }
    n0+=1
    n1=0
}
ini_close();
ini_open("save.ini");
//Load Player + Stats
with(obj_player) {
 playerHp = ini_read_real("Stats","Player HP",  playerHp);
 maxPlayerHp = ini_read_real("Stats","Player Max HP",  maxPlayerHp);
 playerSt = ini_read_real("Stats","Player Stamina",  playerSt);
 maxPlayerSt = ini_read_real("Stats","Player Max Stamina",  maxPlayerSt);
 playerNm = ini_read_real("Stats","Player Nourishment",  playerNm);
 maxPlayerNm = ini_read_real("Stats","Player Max Nourishment",  maxPlayerNm);
global.woodCol = ini_read_real("Resources","Wood Collected", global.woodCol);
global.woodCol = ini_read_real("Resources","Rocks Collected", global.rockCol);
}
ini_close();
