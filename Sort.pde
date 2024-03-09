

static class Sort {
  
  
  
  static int[] bubble(int[] arr) {
    
    
    
    

    return arr;
    
  }
  
  
  static int[] insertion(int[] arr) {
    
    
    
    return null;
  }
  
  
  
  static int[] selection(int[] arr) {
    
    return null;
    
  }
  
  
  static int[] quick(int[] arr, int pivot) {
    
    return null;
  }
  
  
  static int[] mergeSort(int[] arr, int beg, int end) {
    if (beg == end) {
      return new int[]{arr[beg]};
    }
    int[] left = mergeSort(arr, beg, (end + beg) / 2);
    int[] right = mergeSort(arr, ((end + beg) / 2) + 1, end);
    return merge(left, right);
   
    
  }
  
  static int[] merge(int[] a, int[] b) {
    int l = 0;
    int r = 0;
    int k = 0;
    int[] out = new int[a.length + b.length];
    while (l < a.length && r < b.length) {
      if (a[l] > b[r]) {
         out[k++] = b[r++];
    }
    else {
        out[k++] = a[l++];
    } 
  }
  if (l < a.length) {
    while (k < out.length) {
      out[k++] = a[l++];
    }
  }
  else if (r < b.length) {
    while (k < out.length) {
      out[k++] = b[r++];
    }
  }
  
  return out;
}
}
  
  
  
  
  
  
  
  
