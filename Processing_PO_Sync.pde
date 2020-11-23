import processing.sound.*;

//creates a sound object called Click, because we'll be using it as a click track
Sound click;

//Creates a pulse oscillator
Pulse clickPulse;

void setup() {
  click = new Sound(this);
  clickPulse = new Pulse(this);
  
  //Running this will list all of the sound output devices that are available to use
  //click.list();
  
  //I use output device number 2, which is the default output for my laptop. You can use any of the other outputs that you have available
  click.outputDevice(2);
  
  //This is how you set your tempo. As of now, I believe a value of 4 will get you to about 120 bpm on your PO
  clickPulse.freq(4);
  
  //This sets the width of the pulse. In my experimentation, I get the sense that a smaller value here keeps the click consistent
  clickPulse.width(.0001);
  
  //This sets the amplitude of your click. You may need to adjust it for your PO to recognize the click. Start low and adjust up. This value interacts with the value of your output device
  clickPulse.amp(.8);
  
  //This starts the click
  clickPulse.play();  
}

void draw() {
  
}
