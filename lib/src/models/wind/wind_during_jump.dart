import 'package:json_annotation/json_annotation.dart';
import 'package:osje_sim/src/models/wind/wind.dart';

@JsonSerializable()
class WindDuringJump {
  WindDuringJump() : winds = {};

  final Map<(int, int), Wind> winds;

  Wind forDistance(int distance) {
    final appropiateRange = winds.keys.singleWhere((range) {
      return distance >= range.$1 && distance <= range.$2;
    });
    return winds[appropiateRange]!;
  }
}
