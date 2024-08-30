import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:osje_sim/src/enums/wind_general_direction.dart';
import 'package:osje_sim/src/models/wind/degrees.dart';

@JsonSerializable()
class Wind with EquatableMixin {
  const Wind({
    required this.direction,
    required this.strength,
  });

  final Degrees direction;
  final double strength;

  double mapStrengthByDirection() {
    final generalDirection = WindGeneralDirection.fromDegrees(direction);
    if (generalDirection == WindGeneralDirection.headwind) {
      return strength;
    } else if (generalDirection == WindGeneralDirection.tailwind) {
      return -strength;
    } else {
      throw TypeError();
    }
  }

  @override
  List<Object?> get props => [
        direction,
        strength,
      ];

  @override
  String toString() {
    return 'Wind(direction: $direction, strength: $strength)';
  }
}
