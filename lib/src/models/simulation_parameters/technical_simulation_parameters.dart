import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class TechnicalSimulationParameters {
  const TechnicalSimulationParameters({
    required this.gate,
  });

  final int gate;
}
