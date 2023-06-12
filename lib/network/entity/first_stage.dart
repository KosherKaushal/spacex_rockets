import 'package:json_annotation/json_annotation.dart';
import 'package:spacex_rockets/network/entity/thrust.dart';

part 'first_stage.g.dart';

@JsonSerializable()
class FirstStage {
  @JsonKey(name: 'thrust_sea_level')
  final Thrust thrustSeaLevel;
  @JsonKey(name: 'thrust_vacuum')
  final Thrust thrustVacuum;
  final bool reusable;
  final int engines;
  @JsonKey(name: 'fuel_amount_tons')
  final double fuelAmountTons;
  @JsonKey(name: 'burn_time_sec')
  final int? burnTimeSec;

  FirstStage({
    required this.thrustSeaLevel,
    required this.thrustVacuum,
    required this.reusable,
    required this.engines,
    required this.fuelAmountTons,
    this.burnTimeSec,
  });

  factory FirstStage.fromJson(Map<String, dynamic> json) =>
      _$FirstStageFromJson(json);
  Map<String, dynamic> toJson() => _$FirstStageToJson(this);
}
