import 'package:json_annotation/json_annotation.dart';

part 'thrust.g.dart';

@JsonSerializable()
class Thrust {
  final int kN;
  final int lbf;

  Thrust({
    required this.kN,
    required this.lbf,
  });

  factory Thrust.fromJson(Map<String, dynamic> json) => _$ThrustFromJson(json);
  Map<String, dynamic> toJson() => _$ThrustToJson(this);
}
