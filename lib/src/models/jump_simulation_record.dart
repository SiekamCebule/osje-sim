import 'package:osje_sim/src/enums/landing_type.dart';

class JumpSimulationRecord {
  const JumpSimulationRecord({
    required this.distance,
    required this.landingType,
  });

  final double distance;
  final LandingType landingType;
}
