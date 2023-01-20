import 'package:dart_leetcode_problems/src/climbing_stairs.dart';
import 'package:test/test.dart';

void main() {
  test('climbing stairs', () {
    const params = [2, 3, 5, 1];
    const answers = [2, 3, 8, 1];

    for (var i = 0; i < params.length; i++) {
      expect(ClimbingStairs.climbStairs(params[i]), answers[i]);
    }
  });
}
