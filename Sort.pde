

static class Sort {
  
  
  static void swap(int[] arr, int i, int j) {
    int temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
  }



  static int[] bubble(int[] arr) {





    return arr;
  }


  static int[] insertion(int[] arr) {



    return null;
  }



  static int[] selection(int[] arr) {

    return null;
  }


  static int[] quick(int[] arr, int low, int high) {
    
    if (high > low) {
      
      int p = partition(arr, low, high);
      
      quick(arr, low, p-1);
      quick(arr, p+1, high);
      
    }
    return arr;
    
  }
  
  static int partition(int[] arr, int low, int high) {
    
    int pivot = arr[high];
    int temp = high;
    
    while (low <= high) {
      if (arr[low] > pivot) {
        swap(arr, low, high);
        high--;
      }
      else if (arr[high] < pivot) {
        swap(arr, low, high);
        low++;
      }
      else {
        low++;
        high--;
      }
    }
   swap(arr, low, temp);
   return low;
    
  }


  static int[] merge(int[] arr, int beg, int end) {
    if (beg == end) {
      return new int[]{arr[beg]};
    }
    int[] left = merge(arr, beg, (end + beg) / 2);
    int[] right = merge(arr, ((end + beg) / 2) + 1, end);
    return combine(left, right);
  }

  static int[] combine(int[] a, int[] b) {
    int l = 0;
    int r = 0;
    int k = 0;
    int[] out = new int[a.length + b.length];
    while (l < a.length && r < b.length) {
      if (a[l] > b[r]) {
        out[k++] = b[r++];
      } else {
        out[k++] = a[l++];
      }
    }
    if (l < a.length) {
      while (k < out.length) {
        out[k++] = a[l++];
      }
    } else if (r < b.length) {
      while (k < out.length) {
        out[k++] = b[r++];
      }
    }

    return out;
  }
}
