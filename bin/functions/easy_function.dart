void main() {
  print(isEven(2));
  List<int> nums = [1, 2, 3, 4, 5, 6, 7];
  print(sumList(nums));
  print(reverseString('Manisha'));
  print(maxOfTwo(10, 23));
  print(countVowels('NarendEr'));
  print(fibonacci(5));
  print(isPalindrome('Manisha'));
  print(
    mapStringsToLengths([
      'Manisha',
      'Thakur',
      'Narender',
      'Singh',
      'Love',
      'Each',
      'Other',
    ]),
  );

  print(swap());

  print(generateRange(2, 20));
}

// to check number is even or not
bool isEven(int number) {
  return number % 2 == 0;
}

// get sum of all integer number from list
int sumList(List<int> nums) {
  var sum = 0;
  for (var i = 0; i < nums.length; i++) {
    sum = sum + nums[i];
  }
  return sum;
}

// print string in reverse
String reverseString(String s) {
  String reverse = '';

  for (var i = s.length - 1; i >= 0; i--) {
    reverse = reverse + s[i];
  }
  return reverse;
}

// find larger
int maxOfTwo(int a, int b) {
  if (a > b) {
    return a;
  } else {
    return b;
  }
}

// count the total number of vowels in string
int countVowels(String s) {
  var vowels = {'a', 'e', 'i', 'o', 'u'};
  var totalCount = 0;
  for (var i = 0; i < s.length; i++) {
    if (vowels.contains(s[i].toLowerCase())) {
      totalCount = totalCount + 1;
    }
  }
  return totalCount;
}

// fibonacci series
int fibonacci(int n) {
  if (n == 0) return 0;
  if (n == 1) return 1;
  var previousNumber = 0;
  var currentNumber = 1;

  for (var i = 2; i <= n; i++) {
    var nextNumber = previousNumber + currentNumber;
    previousNumber = currentNumber;
    currentNumber = nextNumber;
  }
  return currentNumber;
}

// is String palindrome or not
bool isPalindrome(String s) {
  var palinString = '';
  for (var i = s.length - 1; i >= 0; i--) {
    palinString = palinString + s[i];
  }
  if (palinString == s) {
    return true;
  } else {
    return false;
  }
}

// lengths of each string
List<int> mapStringsToLengths(List<String> arr) {
  List<int> eachLength = [];
  for (var i = 0; i < arr.length; i++) {
    eachLength.add(arr[i].length);
  }
  return eachLength;
}

List<int> swap() {
  List<int> nums = [10, 20, 30, 40];

  int i = 1;
  int j = 3;

  // Swap without a swap function
  int temp = nums[i];
  nums[i] = nums[j];
  nums[j] = temp;

  print(nums);

  return nums;
}

List<int> generateRange(int start, int end) {
  List<int> rangeList = [];

  for (var i = start; i <= end; i++) {
    rangeList.add(i);
  }
  return rangeList;
}
