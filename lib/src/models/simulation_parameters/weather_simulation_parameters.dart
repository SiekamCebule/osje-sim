import 'package:json_annotation/json_annotation.dart';
import 'package:osje_sim/src/models/wind/wind_measurement.dart';

@JsonSerializable()
class WeatherSimulationParameters {
  const WeatherSimulationParameters({required this.windDuringJump});

  final WindMeasurement windDuringJump;
}
