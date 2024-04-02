

void settings() {
  width = 800;
  height = 600;
}

int res = 50; //This will also dertermine the length of the array
int cols = 800 / res;
int rows = 600 / res;

int[] visualize = new int[cols];

int[] mergetest1 = new int[] {1, 2, 5, 8};
int[] mt2 = new int[] {3, 4, 6, 7, 9};



void setup() {
  for (int i = 0; i < cols; i++) {
    visualize[i] = (int) random(cols);
  }
  
  
  println(Sort.quick(visualize, 0, visualize.length-1));
  drawArray(visualize);
  visualize = Sort.quick(visualize, 0, visualize.length-1);

}



void draw() {
  background(0);
  //drawArray(visualize);
  //visualize = Sort.quick(visualize, 0, visualize.length-1);
  drawArray(visualize);
}




void drawArray(int[] arr) {

  fill(255);
  for (int i = 0; i < arr.length; i++) {

    rect(i * res, height - ((arr[i]) * res), res, (arr[i]) * res);
  }
  
}
