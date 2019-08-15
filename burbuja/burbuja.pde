int[] array = new int[7];
   void setup() {
     size(800, 600);
     for (int i=0; i<array.length; i++) {
       array[i] = (int)random(3, 100);
     }
     frameRate(2);
     rectMode(CORNER);
   }
 int i=0;
 
   int temp;
   void draw() {
     background(random(0,255),random(0,255),random(0,255));
 for (int j=0; j<array.length; j++) { //<>//
       if (array[i]<array[j]) {
         temp = array[j];
         array[j] = array[i];
         array[i] = temp;
       }
 stroke(0);
       strokeWeight(2);
       fill(0, 255, 0);
       rect((100*j)+100, j+300, 50, array[j]*(-1));
       fill(0,0,0);
       text(array[j],100 + (100*j), 350+j);
     }
     i++;  
     if (i>array.length-1)
       noLoop();
   }
