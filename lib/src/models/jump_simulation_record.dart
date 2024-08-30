import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:osje_sim/src/enums/landing_type.dart';

@JsonSerializable()
class JumpSimulationRecord with EquatableMixin {
  const JumpSimulationRecord({
    required this.distance,
    required this.landingType,
  });

  final double distance;
  final LandingType landingType;

  @override
  List<Object?> get props => [
        distance,
        landingType,
      ];
}
