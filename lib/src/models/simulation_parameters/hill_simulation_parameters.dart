import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class HillSimulationParameters {
  const HillSimulationParameters({
    required this.xFactor,
    required this.yFactor,
    required this.k,
    required this.realHs,
    required this.profileFactor,
    required this.variabilityFactor,
  });

  final double xFactor;

  final double yFactor;

  final double k;

  /// It's a realHs, like 245 for Vikersund HS225
  final double realHs;

  /// Negative values favor weaker in-flight and positive values favor better in-flight
  ///
  /// For instance, value of 1.02 multiplies jumper's x by 0.98 and y by 1.02
  final double profileFactor;

  /// For instance, value of 1.27 increases the random's range to 12.7 from 10.0 meters
  final double variabilityFactor;
}
