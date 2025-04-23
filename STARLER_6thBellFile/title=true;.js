title=true;
bgc=240;
word=0;

function setup() {
  createCanvas(500, 500);
};

function draw() {
  background(bgc);
  if (title == true) bgc == 240;
  fill(word);
  textSize(25);
 if (title == true){text("==RUNNER==",80,100)};
 textSize(19);
 if (title == true){text("  Press 'Y' to start...",80,200)};
 if (title == true && keyIsPressed && key == "y") title=false;
 if (title == false) cls;
};