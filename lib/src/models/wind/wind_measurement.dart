import 'package:json_annotation/json_annotation.dart';
import 'package:osje_sim/src/models/wind/wind.dart';

@JsonSerializable()
class WindMeasurement {
  const WindMeasurement({
    required this.winds,
    required this.weights,
  });

  final Map<(double, double), Wind> winds;
  final List<double> weights;

  Wind windByDistance(double distance) {
    final appropriateRange = winds.keys.singleWhere((range) {
      return distance >= range.$1 && distance <= range.$2;
    });
    return winds[appropriateRange]!;
  }

  double weightByDistance(double distance) {
    int index = 0;
    for (var range in winds.keys) {
      final withinRange = distance >= range.$1 && distance <= range.$2;
      if (withinRange) {
        index = winds.keys.toList().indexOf(range);
      }
    }
    return weights[index];
  }

  (double, double) rangeByIndex(int index) {
    if (index < 0 || index >= winds.keys.length) {
      throw ArgumentError("Index out of range");
    }
    return winds.keys.elementAt(index);
  }
}
