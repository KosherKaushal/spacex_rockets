// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'second_stage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SecondStage _$SecondStageFromJson(Map<String, dynamic> json) => SecondStage(
      thrust: Thrust.fromJson(json['thrust'] as Map<String, dynamic>),
      payloads: Payloads.fromJson(json['payloads'] as Map<String, dynamic>),
      reusable: json['reusable'] as bool,
      engines: json['engines'] as int,
      fuelAmountTons: (json['fuel_amount_tons'] as num).toDouble(),
      burnTimeSec: json['burn_time_sec'] as int?,
    );

Map<String, dynamic> _$SecondStageToJson(SecondStage instance) =>
    <String, dynamic>{
      'thrust': instance.thrust,
      'payloads': instance.payloads,
      'reusable': instance.reusable,
      'engines': instance.engines,
      'fuel_amount_tons': instance.fuelAmountTons,
      'burn_time_sec': instance.burnTimeSec,
    };
