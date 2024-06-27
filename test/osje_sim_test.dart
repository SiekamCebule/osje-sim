import 'dart:math';

import 'package:osje_sim/src/enums/wind_general_direction.dart';
import 'package:osje_sim/src/models/wind/degrees.dart';
import 'package:test/test.dart';

void main() {
  group(Degrees, () {
    test('validation', () {
      final first = Degrees(412);
      expect(first.isValid, false);
      expect(first.remainder.isValid, true);
      expect(first.remainder.value, 52);

      final second = Degrees(222);
      expect(second.isValid, true);

      final third = Degrees(0);
      expect(third.isValid, true);

      final fourth = Degrees(360);
      expect(fourth.isValid, true);
    });

    test('toRadians()', () {
      expect(Degrees(180).toRadians(), pi);
    });
  });

  group(WindGeneralDirection, () {
    test('fromDegrees', () {
      final first = WindGeneralDirection.fromDegrees(Degrees(0));
      expect(first, WindGeneralDirection.headwind);

      final second = WindGeneralDirection.fromDegrees(Degrees(312));
      expect(second, WindGeneralDirection.westCrosswind);

      final third = WindGeneralDirection.fromDegrees(Degrees(360));
      expect(third, WindGeneralDirection.headwind);

      final fourth = WindGeneralDirection.fromDegrees(Degrees(185));
      expect(fourth, WindGeneralDirection.tailwind);

      expect(
        () => WindGeneralDirection.fromDegrees(Degrees(500)),
        throwsA(isA<ArgumentError>()),
      );
    });
  });
}
