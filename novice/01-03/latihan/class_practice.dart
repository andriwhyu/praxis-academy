import 'dart:math';

void main() {
  var p = const Point(2,2);
  var poin = const Point(2, 2);
  print(p.y);

  num distance = p.distanceTo(Point(4,4));
  print(distance);

  print(identical(p, poin));
}