import 'package:json_annotation/json_annotation.dart';

/// A set of parameters used by [OsjeJumpSimulator] to describe the jumper's skills.
@JsonSerializable()
class JumperSimulationParameters {
  const JumperSimulationParameters({
    required this.xSkill,
    required this.ySkill,
    required this.landingStyle,
    required this.jumpsConsistency,
    required this.form,
  });

  /// How good the jumper is on smaller hills It's multiplied by the [HillSimulationParameters.xFactor] at the stage of simulation.
  final double xSkill;

  /// How good the jumper is on larger hills. It's multiplied by the [HillSimulationParameters.xFactor] at the stage of simulation.
  final double ySkill;

  /// How graceful the jumper lands.
  final double landingStyle;

  /// How consistent the jumper's jumps are.
  final double jumpsConsistency;

  /// We can think of it as a kind of multiplier of xSkill and ySkill, which also gives a small bonus for other parameters.
  final double form;
}
