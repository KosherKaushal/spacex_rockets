import 'package:json_annotation/json_annotation.dart';

part 'landing_legs.g.dart';

@JsonSerializable()
class LandingLegs {
  final int number;
  final String? material;

  LandingLegs({
    required this.number,
    this.material,
  });

  factory LandingLegs.fromJson(Map<String, dynamic> json) =>
      _$LandingLegsFromJson(json);
  Map<String, dynamic> toJson() => _$LandingLegsToJson(this);
}
