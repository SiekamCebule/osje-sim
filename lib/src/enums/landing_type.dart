import 'package:json_annotation/json_annotation.dart';

/// [touchdown] - When jumper touches the surface with any part of the body.
///
/// [twoFooted] - When jumper lands without telemark, using two legs.
enum LandingType {
  @JsonValue(0)
  fall,

  @JsonValue(1)
  touchdown,

  @JsonValue(2)
  twoFooted,

  @JsonValue(3)
  telemark,
}
