// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'first_stage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FirstStage _$FirstStageFromJson(Map<String, dynamic> json) => FirstStage(
      thrustSeaLevel:
          Thrust.fromJson(json['thrust_sea_level'] as Map<String, dynamic>),
      thrustVacuum:
          Thrust.fromJson(json['thrust_vacuum'] as Map<String, dynamic>),
      reusable: json['reusable'] as bool,
      engines: json['engines'] as int,
      fuelAmountTons: (json['fuel_amount_tons'] as num).toDouble(),
      burnTimeSec: json['burn_time_sec'] as int?,
    );

Map<String, dynamic> _$FirstStageToJson(FirstStage instance) =>
    <String, dynamic>{
      'thrust_sea_level': instance.thrustSeaLevel,
      'thrust_vacuum': instance.thrustVacuum,
      'reusable': instance.reusable,
      'engines': instance.engines,
      'fuel_amount_tons': instance.fuelAmountTons,
      'burn_time_sec': instance.burnTimeSec,
    };
