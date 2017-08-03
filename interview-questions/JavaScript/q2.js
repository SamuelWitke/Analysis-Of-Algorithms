//1.2 Being told that an unsorted array contains (n - 1) of n consecutive numbers (where the bounds are defined), find the missing number in O(n) time

// The output of the function should be 8
var array_of_integers = [1,3,2,5,6,7,8,9,];
var upper_bound = 9;
var lower_bound = 1;

console.log(findMissingNumber(array_of_integers, upper_bound, lower_bound)); //8

function findMissingNumber(array_of_integers, upper_bound, lower_bound) {

  // Iterate through array to find the sum of the numbers
  var sum_of_integers = 0;
  for (var i = 0; i < array_of_integers.length; i++) {
    sum_of_integers += array_of_integers[i];
  }

  // Find theoretical sum of the consecutive numbers using a variation of Gauss Sum.
  // Formula: [(N * (N + 1)) / 2] - [(M * (M - 1)) / 2];
  // N is the upper bound and M is the lower bound

  upper_limit_sum = (upper_bound * (upper_bound + 1)) / 2;
  lower_limit_sum = (lower_bound * (lower_bound - 1)) / 2;

  theoretical_sum = upper_limit_sum - lower_limit_sum;

  //
  return (theoretical_sum - sum_of_integers)
}
