import 'range.dart';

bool prime(int number) {
  /* returns true if number is 'prime' */
  bool result = true; 

  for (int i in range(2, number)) {
    if (number % i == 0) {
      result = false; 
      break; 
    }
  }

  return result; 
}

void main() {
  print(prime(97)); 
}
