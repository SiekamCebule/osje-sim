import 'package:json_annotation/json_annotation.dart';
import 'package:osje_sim/src/enums/landing_type.dart';

@JsonSerializable()
class JumpSimulationRecord {
  const JumpSimulationRecord({
    required this.distance,
    required this.landingType,
  });

  final double distance;
  final LandingType landingType;
}
