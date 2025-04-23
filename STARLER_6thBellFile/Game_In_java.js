//player stat levels
lv=1;
mhp_lv=1;
atk_lv=1;
def_lv=1;
ele_lv=1;
spd_lv=1;
int_lv=1;


//player quick status
STATE="[normal]";
HP=100;
Mc=0;

//Main Settings
bg_color=250;
size=20;
started="no"

//switches
title=true;
set_up=false;
overworld=false;
menu=false;
hp_display=false;
hub_display=false;


//battle switches
out_battle=true;
in_battle=false;
attacking=false;
enemy_attacking=false;
healing=false;
card_usage=false;

//Energy Cards that are collected
E01=false;
E02=false;
E03=false;
E04=false;
E05=false;
E06=false;
E07=false;
E08=false;
E09=false;
E10=false;
E11=false;
E12=false;
E13=false;
E14=false;
E15=false;

function clearing() {
   started="yes"
   if (started == "yes") clear();
}

function setup() {
  createCanvas(350, 285);
}

function draw() {
    background(bg_color);
    textSize(size);
    if (title == true){text("STAR-SWITCH-HEROES",70,100)};
    if (title == true){start_button = createButton('Press Start')
    if (title == true) start_button.position(150,200)
    if (title == true) KeyCode
    };
    
    
    
    
    
};