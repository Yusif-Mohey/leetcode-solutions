void rotate(List<int> nums, int k) {
  k = k % nums.length;
  nums = nums.reversed.toList();
  nums.setRange(0, k, nums.sublist(0, k).reversed);
  nums.setRange(k, nums.length, nums.sublist(k).reversed);
  print('New Nums: $nums');
}

void main() {
  rotate([1, 2, 3, 4, 5, 6, 7], 3); //Ouput : [5,6,7,1,2,3,4]
  rotate([-1, -100, 3, 99], 2); //Ouput : [3,99,-1,-100]
  rotate([1, 2, 3, 4, 5, 6, 7], 3); //Ouput : [5,6,7,1,2,3,4]
}
