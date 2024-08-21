import 'package:json_annotation/json_annotation.dart';
import 'package:osje_sim/src/models/wind/wind.dart';

@JsonSerializable()
class WindMeasurement {
  const WindMeasurement({
    required this.winds,
  });

  final Map<(double, double), Wind> winds;

  Wind windByDistance(double distance) {
    final appropriateRange = winds.keys.singleWhere((range) {
      return distance >= range.$1 && distance <= range.$2;
    });
    return winds[appropriateRange]!;
  }

  (double, double) rangeByIndex(int index) {
    if (index < 0 || index >= winds.keys.length) {
      throw ArgumentError("Index out of range");
    }
    return winds.keys.elementAt(index);
  }
}
