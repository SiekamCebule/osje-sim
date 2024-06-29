import 'package:json_annotation/json_annotation.dart';
import 'package:osje_sim/src/models/wind/degrees.dart';

@JsonSerializable()
class Wind {
  const Wind({
    required this.direction,
    required this.strength,
  });

  final Degrees direction;
  final double strength;
}
