/* 
Free use code. Be sure to use this if you want. 
It will make coding a visual novel game much faster. 
You can change the default messages to what ever, in lines
180-191.
*/




//Main variables
function readLine(){
    
}
bg_color=0;
title="Generic Quest"
stepcount=0;
encounter_rate=15;
var player_name=readLine("");


function preload(){
    //put images/sprites here
}



//Ingame varibles
currentItem="None Currently";
ITEM1="Potion";
ITEM2="Candle";

//player stats
HP=500;
LV=1;
ATK=50;
DEF=25;
SPD=30;
MAXHP=500;
EXP=0;
NEEDED_EXP=10;

//switches
titlescreen=true;
naming=false;
menu=false;
saving=false;
OpeningCutscene=false;
movement=false;
isPaused=false;
event_cutscene=false;
menu_load=false;
message="";
item_menu=false;

//Areas
Home=false;
overworld=false;

//textbox Variables
TB_color=225;
textbox=false;
textbox_X=0;
textbox_Y=190;
textbox_Z=400;
message_code=1;
textTest=0;


//Message booleans
/*OpeningCutscene*/
message1=false;
message2=false;
message3=false;
message4=false;
message5=false;
/*HomeNPCs*/
message6=false;


//battle-switches
out_battle=true;
in_battle=false;


//cutscene switches
OpeningCutscene=false;
cutscene_1=false;
cutscene_2=false;



function setup() {
  createCanvas(400, 400);
}

function pause() {
    message="";
    
}

function keyPressed()
{
    /*
    set to the max message code for each scene.
    Or just set the max code to the main amount of 
    messages there are, as it will make creating this alot 
    easier.
    */
    if (event_cutscene == true) message_code += 1;
    if (event_cutscene == true && message_code > 10) message_code = 0;
    if (menu_load == true && message_code > 15) message_code = 11;
}



function draw() {
  background(bg_color);
  textSize(15)
  fill(0)
  if (textbox == true) movement=false;
  if (textbox == true){textbox_X=0}
  if (textbox == true){textbox_Y=300}
  if (textbox == true){textbox_Z=400}
  if (textbox == false){textbox_X=0}
  if (textbox == false){textbox_Y=0}
  if (textbox == false){textbox_Z=0}
  if (textbox == true) fill(TB_color)
  if (textbox == true) square(textbox_X,textbox_Y,textbox_Z);


  //titlescreen 
  fill(100,0,0)
  textSize(50)
  if (titlescreen == true) text(title, 50, 140);
  textSize(20)
  if (titlescreen == true) text("Press space...", 160,300 );
  if (titlescreen == true && keyIsPressed && key == " ") clear();
  if (titlescreen == true && keyIsPressed && key == " ") titlescreen=false;
  if (titlescreen == true) player_name="John";
  if (titlescreen == true) message_code=0;
  if (titlescreen == false) OpeningCutscene=true;
  //menu
  if (keyIsPressed && key == "e") menu_load=true;
  if (keyIsPressed && key == "e") textbox=true;
  if (menu_load == true) message_code=11;
  //Items
  if (message_code == 11) message="ITEM(w) -- EQUIP(a) -- SAVE(s) -- EXIT MENU(d)";
  if (keyIsPressed && key == "w" && menu_load == true) item_menu=true;
  if (keyIsPressed && key == "w" && menu_load == true) item_menu=true;
  if (item_menu == true) menu_load == false;
  if (keyIsPressed && key == "w" && menu_load == true) item_menu=true;
  if (item_menu == true) menu_load == false;
  if (keyIsPressed && key == "s" && item_menu == true) menu_load=true;
  if (keyIsPressed && key == "s" && item_menu == true) item_menu=false;
  if (keyIsPressed && key == "q" && item_menu == true) HP=HP+500
  if (item_menu == true && HP > MAXHP) HP=MAXHP;
  if (keyIsPressed && key == "w" && menu_load == true) message=currentItem;
  //leaving menu
  if (keyIsPressed && key == "d" && menu_load == true) textbox=false;
  if (keyIsPressed && key == "d" && menu_load == true) message="";
  if (keyIsPressed && key == "d" && menu_load == true) clear();
  if (keyIsPressed && key == "d" && menu_load == true) menu_load=false;
 

 

  
  //Encounter system
  if (stepcount == encounter_rate) out_battle=false;
  if (out_battle == false) in_battle=true;
  //OpeningCutscene
    fill(0)
    textSize(15)
  //closing the menu
  if (keyIsPressed && key == "d" && menu_load == true) clear();
  if (keyIsPressed && key == "d" && menu_load == true) OpeningCutscene == false;
  if (keyIsPressed && key == "d" && menu_load == true) menu_load=false;
  if (OpeningCutscene == true) event_cutscene=true;
  if (OpeningCutscene == true) textbox=true;
  if (OpeningCutscene == true) message1=true;
  if (message_code == 1) message="Welcome...";
  if (message_code == 2) message="To the world of... ";
  if (message_code == 3) message="GENERIC QUEST";
  if (message_code == 4) message="In this world, everything is generic.";
  if (message_code == 5) message="Well, except for you. Your goal....";
  if (message_code == 6) message="Is to save the world from the generic Demon King.";
  if (message_code == 7) message="What is your name?";
  if (message_code == 8) message="Hello, " + player_name + "....";
  //code for naming the player is not included.
  if (message_code == 9) message="Now go...";
  if (message_code == 10) message="";
  if (message_code == 10) textbox=false;
  if (message_code == 10) event_cutscene=false;
  if (message1 == true) text(message, 25, 325);
  if (message1 == true && message == 10) message1=false && clear();
  if (message1 == false && message == 10) Home=true;
  //Chapter 1 
  if (Home == true) message_code=12;
  if (message_code == 12) message="What the sigma...";


}
