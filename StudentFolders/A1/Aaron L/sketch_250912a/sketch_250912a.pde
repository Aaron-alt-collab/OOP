float[] nums = new float[5];



void setup() {
  size(800, 600);


  for (int i = 10; i < width; i=i+50) {

    rect(i, 10, 40, 40);
  }
  for(int i = 10; i<height; i=i +50)
  rect(10, i , 40, 40);
}
