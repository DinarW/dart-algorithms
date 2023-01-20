// Description:
// You are climbing a stair case. It takes n steps to reach to the top.
// Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?
class ClimbingStairs {
  static int climbStairs(int n) {
    List<int> base = [1, 1];

    for (int i = 0; i < n - 1; i++) {
      int tmp = base[1];
      base[1] += base[0];
      base[0] = tmp;
    }

    return base[1];
  }
}
