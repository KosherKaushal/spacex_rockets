import 'package:json_annotation/json_annotation.dart';

import 'composite_fairing.dart';

part 'payloads.g.dart';

@JsonSerializable()
class Payloads {
  @JsonKey(name: 'composite_fairing')
  final CompositeFairing compositeFairing;
  @JsonKey(name: 'option_1')
  final String option1;

  Payloads({
    required this.compositeFairing,
    required this.option1,
  });

  factory Payloads.fromJson(Map<String, dynamic> json) =>
      _$PayloadsFromJson(json);
  Map<String, dynamic> toJson() => _$PayloadsToJson(this);
}
