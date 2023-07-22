void main() {
  final solution = Solution();
  print(solution.isValid('{}[]()'));
}

class Solution {
  bool isValid(String s) {
    var stack = <String>[];
    var mapping = {')': '(', '}': '{', ']': '['};

    for (var char in s.split('')) {
      if (mapping.values.contains(char)) {
        stack.add(char);
      } else if (mapping.keys.contains(char)) {
        if (stack.isEmpty || stack.removeLast() != mapping[char]) {
          return false;
        }
      } else {
        // Ignore other characters if any
      }
    }

    return stack.isEmpty;
  }
}
