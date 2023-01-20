import 'dart:math';

// Description:
// Given n points on a 2D plane, find if there is such a line parallel to y-axis that reflect the given points.
class LineReflection {
  static bool isReflected(List<List<int>> points) {
    if (points.length < 2) return true;

    int minX = points[0][0];
    int maxX = points[0][0];
    Map<int, Set<int>> yMap = {};

    for (List<int> point in points) {
      minX = min(minX, point[0]);
      maxX = max(maxX, point[0]);

      if (!yMap.containsKey(point[0])) {
        yMap[point[0]] = {};
      }

      yMap[point[0]]?.add(point[1]);
    }

    int doublebar = minX + maxX;

    for (List<int> point in points) {
      int x = doublebar - point[0];

      if (!yMap.containsKey(x) || !yMap[x]!.contains(point[1])) {
        return false;
      }
    }

    return true;
  }
}
