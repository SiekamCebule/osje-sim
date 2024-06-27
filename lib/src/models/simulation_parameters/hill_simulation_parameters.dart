import 'package:osje_sim/src/enums/landing_safety.dart';

class HillSimulationParameters {
  const HillSimulationParameters({
    required this.xFactor,
    required this.yFactor,
    required this.k,
    required this.hs,
    required this.safetyAtHs,
  });

  /// Calculates distance by multiplying [JumperSimulationParmeters.xSkill] by [xFactor].
  final double xFactor;

  /// Calculates distance by multiplying [JumperSimulationParmeters.ySkill] by [yFactor].
  final double yFactor;

  final double k;
  final double hs;

  /// How safely are jumps at the distance of hill size. It's used to find a point, where jumps become unsafe.
  final LandingSafety safetyAtHs;
}
