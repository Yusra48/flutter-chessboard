import 'dart:io';

// void main() {
//   for (int num = 1; num <= 100; num++) {
//     if (num % 3 == 0 && num % 5 == 0) {
//       print("FizzBuzz");
//     } else if (num % 3 == 0) {
//       print("Fizz");
//     } else if (num % 5 == 0) {
//       print("Buzz");
//     } else {
//       print(num);
//     }
//   }
//   print("Enter a String:");
//   String inputString = stdin.readLineSync()!;
//   String reversedString = reverseString(inputString);
//   print("Reversed String = $reversedString");
// }
//   String reverseString(String str) {
//     List<String> myList = str.split('');
//     myList = myList.reversed.toList();
//     return myList.join('');
//   }
// void main() {
//   for (int number = 2; number <= 100; number++) {
//     if (isPrime(number)) {
//       print(number);
//     }
//   }
// }

// bool isPrime(int num) {
//   if (num < 2) {
//     return false;
//   }
//   for (int i = 2; i <= num ~/ 2; i++) {
//     if (num % i == 0) {
//       return false;
//     }
//   }
//   return true;
// }
String longestCommonSubstring(String str1, String str2) {
  int m = str1.length;
  int n = str2.length;
  List<List<int>> dp =
      List.generate(m + 1, (i) => List<int>.filled(n + 1, 0), growable: false);

  int maxLength = 0;
  int endIndex = 0;

  for (int i = 1; i <= m; i++) {
    for (int j = 1; j <= n; j++) {
      if (str1[i - 1] == str2[j - 1]) {
        dp[i][j] = dp[i - 1][j - 1] + 1;
        if (dp[i][j] > maxLength) {
          maxLength = dp[i][j];
          endIndex = i - 1;
        }
      } else {
        dp[i][j] = 0;
      }
    }
  }

  return str1.substring(endIndex - maxLength + 1, endIndex + 1);
}

void main() {
  String str1 = "987098";
  String str2 = "009876543";

  String result = longestCommonSubstring(str1, str2);

  if (result.isNotEmpty) {
    print("Longest Common Substring: $result");
  } else {
    print("No common substring found.");
  }
}
