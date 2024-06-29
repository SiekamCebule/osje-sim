import 'package:json_annotation/json_annotation.dart';

enum JumpsConsistency {
  @JsonValue(2)
  veryConsistent,

  @JsonValue(1)
  consistent,

  @JsonValue(0)
  moderatelyConsistent,

  @JsonValue(-1)
  inconsitent,

  @JsonValue(-2)
  veryInconsistent,
}
