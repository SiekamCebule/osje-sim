import 'package:osje_sim/src/models/wind/degrees.dart';

class Wind {
  const Wind({
    required this.direction,
    required this.strength,
  });

  final Degrees direction;
  final double strength;
}
