import 'package:osje_sim/src/enums/landing_type.dart';
import 'package:osje_sim/src/models/jump_simulation_record.dart';
import 'package:osje_sim/src/models/simulation_parameters/hill_simulation_parameters.dart';
import 'package:osje_sim/src/models/simulation_parameters/jumper_simulation_parameters.dart';
import 'package:osje_sim/src/models/simulation_parameters/technical_simulation_parameters.dart';
import 'package:osje_sim/src/models/simulation_parameters/weather_simulation_parameters.dart';
import 'package:osje_sim/src/simulator/jump_simulator.dart';

class OsjeJumpSimulator implements JumpSimulator<JumpSimulationRecord> {
  const OsjeJumpSimulator({
    required this.jumperParameters,
    required this.hillParameters,
    required this.technicalParameters,
    required this.weatherParameters,
  });

  final JumperSimulationParameters jumperParameters;
  final HillSimulationParameters hillParameters;
  final TechnicalSimulationParameters technicalParameters;
  final WeatherSimulationParameters weatherParameters;

  @override
  JumpSimulationRecord simulate() {
    return JumpSimulationRecord(
      distance: 123,
      landingType: LandingType.fall,
    );
  }
}
