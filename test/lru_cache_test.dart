import 'package:dart_leetcode_problems/src/lru_cache.dart';
import 'package:test/test.dart';

void main() {
  test('lru cache', () {
    final LRUCache cache = LRUCache(2);

    cache.put(1, 1);
    cache.put(2, 2);
    expect(cache.get(1), 1);
    cache.put(3, 3);
    expect(cache.get(2), -1);
    cache.put(4, 4);
    expect(cache.get(1), -1);
    expect(cache.get(3), 3);
    expect(cache.get(4), 4);
  });
}
