  class Point {
    num x, y;

    Point(num x, num y) {
      this.x = x;
      this.y = y;
    }
  }

  void main() {
    var p = Point(5, 1);
    print(p.x);

    assert(p.x == 10, "not same");
  }