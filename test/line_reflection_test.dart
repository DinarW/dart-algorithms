import 'package:dart_leetcode_problems/src/line_reflection.dart';
import 'package:test/test.dart';

void main() {
  test('line reflection', () {
    const params = [
      [
        [1, 1],
        [-1, 1]
      ],
      [
        [1, 1],
        [-1, -1]
      ],
    ];

    const answers = [true, false];

    for (var i = 0; i < params.length; i++) {
      expect(LineReflection.isReflected(params[i]), answers[i]);
    }
  });
}
