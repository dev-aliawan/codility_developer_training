import "dart:io";

// My Solution
void main() {
  List<int> A = [1, 2, 3, 4, 5, 6, 7];
  int K = 2;
  stdout.write(solution(A, K));
}

List<int> solution(List<int> A, int K) {
  if (A.isNotEmpty && A.length > 1) {
    for (int i = 1; i <= K; i++) {
      int lastElement = A.last;
      Iterable<int> replacement = [A.elementAt(A.length - 2)];
      A.replaceRange((A.length - 1), (A.length), replacement);
      A.removeAt(A.length - 2);
      A.insert(0, lastElement);
    }
  }
  return A;
}

// ChatGpt Solution
// void main() {
//   List<int> A = [3, 8, 9, 7, 6];
//   int K = 3;
//
//   List<int> rotated = solution(A, K);
//   stdout.write(rotated); // Output: [9, 7, 6, 3, 8]
// }
//
// List<int> solution(List<int> A, int K) {
//   int N = A.length;
//
//   if (N == 0) {
//     return [];
//   }
//
//   K = K % N; // Handle cases where K is larger than array length
//
//   if (K == 0) {
//     return A; // No need to rotate
//   }
//
//   List<int> rotatedArray = List<int>.filled(N, 0);
//
//   for (int i = 0; i < N; i++) {
//     int newIndex = (i + K) % N;
//     rotatedArray[newIndex] = A[i];
//   }
//
//   return rotatedArray;
// }
