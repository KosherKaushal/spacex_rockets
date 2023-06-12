import 'package:json_annotation/json_annotation.dart';
import 'package:spacex_rockets/network/entity/thrust.dart';

import 'isp.dart';

part 'engines.g.dart';

@JsonSerializable()
class Engines {
  final Isp isp;
  @JsonKey(name: 'thrust_sea_level')
  final Thrust thrustSeaLevel;
  @JsonKey(name: 'thrust_vacuum')
  final Thrust thrustVacuum;
  final int number;
  final String type;
  final String version;
  final String? layout;
  @JsonKey(name: 'engine_loss_max')
  final int? engineLossMax;
  @JsonKey(name: 'propellant_1')
  final String propellant1;
  @JsonKey(name: 'propellant_2')
  final String propellant2;
  @JsonKey(name: 'thrust_to_weight')
  final double thrustToWeight;

  Engines({
    required this.isp,
    required this.thrustSeaLevel,
    required this.thrustVacuum,
    required this.number,
    required this.type,
    required this.version,
    this.layout,
    this.engineLossMax,
    required this.propellant1,
    required this.propellant2,
    required this.thrustToWeight,
  });

  factory Engines.fromJson(Map<String, dynamic> json) =>
      _$EnginesFromJson(json);
  Map<String, dynamic> toJson() => _$EnginesToJson(this);
}
