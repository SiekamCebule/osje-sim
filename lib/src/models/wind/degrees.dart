import 'dart:math';

extension type Degrees(int value) {
  bool get isValid => value >= 0 && value <= 360;
  Degrees get remainder => Degrees(value % 360);
  double toRadians() => 2 * (value / 360) * pi;
}
