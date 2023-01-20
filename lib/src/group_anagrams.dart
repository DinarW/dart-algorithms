// Description: Given an array of strings, group anagrams together.
// Time Complexity: O(n * mlogm) where n is the number of strings and m is the length of the longest string.
class GroupAnagrams {
  static List<List<String>> groupAnagrams(List<String> strs) {
    Map<String, List<String>> map = {};
    for (String str in strs) {
      List<String> letters = str.split('');
      letters.sort();
      String key = letters.join();
      if (map.containsKey(key)) {
        map[key]?.add(str);
      } else {
        map[key] = [str];
      }
    }
    return map.values.toList();
  }
}

void main() {
  print(
      GroupAnagrams.groupAnagrams(['eat', 'tea', 'tan', 'ate', 'nat', 'bat']));
}
