import "dart:io";

// My Solution

void main() {
  int result = solution(15);
  stdout.write("Max binary gap is: $result");
}

int solution(int N) {
  String binary = N.toRadixString(2);
  stdout.write("Binary of $N is: $binary");
  int count = 0;
  int maxGap = 0;
  for (int i = 0; i <= binary.length - 1; i++) {
    String? num = binary.split("").elementAt(i);
    if (num == "0") {
      count++;
    }
    if (num == "1") {
      maxGap = maxGap > count ? maxGap : count;

      count = 0;
    }
  }
  return maxGap;
}

// ChatGpt Solution

// class Solution {
//   int solution(int N) {
//     // Convert the integer to its binary representation
//     String binaryRepresentation = N.toRadixString(2);
//
//     int maxGap = 0;
//     int currentGap = 0;
//     bool counting = false;
//
//     for (int i = 0; i < binaryRepresentation.length; i++) {
//       if (binaryRepresentation[i] == '1') {
//         if (counting) {
//           maxGap = currentGap > maxGap ? currentGap : maxGap;
//           currentGap = 0;
//         } else {
//           counting = true;
//         }
//       } else if (counting) {
//         currentGap++;
//       }
//     }
//
//     return maxGap;
//   }
// }
//
// void main() {
//   Solution solution = Solution();
//
//   int N = 1041;
//   print(solution.solution(N)); // Output: 5
//
//   N = 32;
//   print(solution.solution(N)); // Output: 0
// }
