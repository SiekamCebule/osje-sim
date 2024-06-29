import 'package:json_annotation/json_annotation.dart';

enum LandingSafety {
  @JsonValue(2)
  verySafely,

  @JsonValue(1)
  safely,

  @JsonValue(0)
  moderatelySafely,

  @JsonValue(-1)
  unsafely,

  @JsonValue(-2)
  veryUnsafely,
}
