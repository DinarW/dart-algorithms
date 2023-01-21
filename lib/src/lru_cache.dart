class LRUCache {
  late Map<int, int> cache;
  late int capacity;

  LRUCache(this.capacity) {
    cache = {};
  }

  int get(int key) {
    if (!cache.containsKey(key)) return -1;

    int value = cache[key]!;
    cache.remove(key);
    cache[key] = value;
    return cache[key]!;
  }

  void put(int key, int value) {
    if (cache.containsKey(key)) {
      cache.remove(key);
    }

    cache[key] = value;
    if (cache.length > capacity) {
      cache.remove(cache.keys.first);
    }
  }
}

void main(List<String> args) {
  LRUCache cache = LRUCache(2);
  cache.put(1, 1);
  cache.put(2, 2);
  print(cache.get(1)); // 1
  cache.put(3, 3);
  print(cache.get(2)); // -1
  cache.put(4, 4);
  print(cache.get(1)); // -1
  print(cache.get(3)); // 3
  print(cache.get(4)); // 4
}
