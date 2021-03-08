void two2(List<int> nums) {
  List<int> result = [];

  for (int i = -1; i < nums.length;) {
    i++;
    if ((nums[i] * 2).toString().endsWith("2")) {
      continue;
    } else {
      result.add(nums[i] * 2);
    }
  }

  print(result);
}

void main() {
  two2([1]);
}
