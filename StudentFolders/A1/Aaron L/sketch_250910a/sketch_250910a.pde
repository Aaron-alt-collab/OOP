color[] cols;
void setup(){
 
  cols = new color[]{
  color(#ECF027),
  color(#42E317),
  color(#16EDDD),
  color(#ED1668),
  color(#AF16ED)
  };

  
  
  fullScreen();
  noStroke();
  size(800,600);
  int n = 0;
  int currentColor = 0;
  while(n < width){
    int r = (int)random(1,30);
    fill(cols[currentColor]);
    rect(n, 0 , r, height);
    n += r;
   currentColor = (currentColor + 1) % cols.length;
    }
  }
  
