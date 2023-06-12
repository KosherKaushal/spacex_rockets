import 'package:json_annotation/json_annotation.dart';
import 'package:spacex_rockets/network/entity/payloads.dart';
import 'package:spacex_rockets/network/entity/thrust.dart';

part 'second_stage.g.dart';

@JsonSerializable()
class SecondStage {
  final Thrust thrust;
  final Payloads payloads;
  final bool reusable;
  final int engines;
  @JsonKey(name: 'fuel_amount_tons')
  final double fuelAmountTons;
  @JsonKey(name: 'burn_time_sec')
  final int? burnTimeSec;

  SecondStage({
    required this.thrust,
    required this.payloads,
    required this.reusable,
    required this.engines,
    required this.fuelAmountTons,
    this.burnTimeSec,
  });

  factory SecondStage.fromJson(Map<String, dynamic> json) =>
      _$SecondStageFromJson(json);
  Map<String, dynamic> toJson() => _$SecondStageToJson(this);
}
