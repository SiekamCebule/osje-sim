import 'package:osje_sim/src/models/wind/degrees.dart';
import 'package:json_annotation/json_annotation.dart';

enum WindGeneralDirection {
  @JsonValue('head')
  headwind,

  @JsonValue('tail')
  tailwind,

  @JsonValue('westCross')
  westCrosswind, // zachodni

  @JsonValue('eastCross')
  eastCrosswind;

  static WindGeneralDirection fromDegrees(Degrees degrees) {
    double deg = degrees.value;

    if ((deg >= 315 && deg <= 360) || (deg >= 0 && deg < 45)) {
      return WindGeneralDirection.headwind;
    } else if (deg >= 45 && deg < 135) {
      return WindGeneralDirection.eastCrosswind;
    } else if (deg >= 135 && deg < 225) {
      return WindGeneralDirection.tailwind;
    } else if (deg >= 225 && deg < 315) {
      return WindGeneralDirection.westCrosswind;
    } else {
      throw ArgumentError('Invalid degree value');
    }
  }

  Degrees toDegrees() {
    double degrees = switch (this) {
      WindGeneralDirection.headwind => 0,
      WindGeneralDirection.tailwind => 180,
      WindGeneralDirection.westCrosswind => 270,
      WindGeneralDirection.eastCrosswind => 90,
    };
    return Degrees(degrees);
  }
}
