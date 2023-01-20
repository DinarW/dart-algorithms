import 'package:dart_leetcode_problems/src/group_anagrams.dart';
import 'package:test/test.dart';

void main() {
  test('group anagrams', () {
    const params = [
      ['eat', 'tea', 'tan', 'ate', 'nat', 'bat'],
      [''],
      ['a']
    ];
    const answers = [
      [
        ['eat', 'tea', 'ate'],
        ['tan', 'nat'],
        ['bat']
      ],
      [
        [""]
      ],
      [
        ['a']
      ]
    ];
    for (var i = 0; i < params.length; i++) {
      expect(GroupAnagrams.groupAnagrams(params[i]), answers[i]);
    }
  });
}
