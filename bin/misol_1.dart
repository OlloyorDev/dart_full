import 'for_matrix/classes.dart';

void main() {
  Solution.gcdOfStrings('abc', 'bc');
}

class Solution {
  static String gcdOfStrings(String str1, String str2) {
    if (str1 + str2 != str2 + str1) {
      print('return empty string');
      return "";
    }
    int gcdLength = _gcd(str1.length, str2.length);
    print("gcdLength $gcdLength");
    return str1.substring(0, gcdLength);
  }

  static int _gcd(int a, int b) {
    while (b != 0) {
      int temp = b;
      b = a % b;
      a = temp;
    }
    return a;
  }
}
