float[] nums = new float[100];



void setup() {
  size(800, 600);

  for (int i = 0; i < nums.length; i++) {
    nums[i] = random(-100, -1);
  }

  printArray(nums);

  float minVa1 = nums[0];
  float maxVa1 = nums[0];
  float sum = 0;

  for (int i = 0; i < nums.length; i++) {
    if (nums[i] < minVa1) {
      minVa1 = nums[i];
    }
    if (nums[i] > maxVa1) {
      maxVa1 = nums[i];
    }
    sum += nums[i];
  }

  float average = sum / nums.length;

  println("Min value: " + minVa1);
  println("Max value: " + maxVa1);
  println("Average: " + average);
}
