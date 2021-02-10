import '../math/range.dart';

int array667(List<int> arr) {
  int count = 0;
  for (int i in range(0, arr.length)) {
    if (i != 0) {
      if (arr[i] == 6 || arr[i] == 7) {
        if (arr[i - 1] == 6) {
          count = count + 1;
        }
      }
    }    
  }
  return count;
}

