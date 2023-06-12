// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'engines.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Engines _$EnginesFromJson(Map<String, dynamic> json) => Engines(
      isp: Isp.fromJson(json['isp'] as Map<String, dynamic>),
      thrustSeaLevel:
          Thrust.fromJson(json['thrust_sea_level'] as Map<String, dynamic>),
      thrustVacuum:
          Thrust.fromJson(json['thrust_vacuum'] as Map<String, dynamic>),
      number: json['number'] as int,
      type: json['type'] as String,
      version: json['version'] as String,
      layout: json['layout'] as String?,
      engineLossMax: json['engine_loss_max'] as int?,
      propellant1: json['propellant_1'] as String,
      propellant2: json['propellant_2'] as String,
      thrustToWeight: (json['thrust_to_weight'] as num).toDouble(),
    );

Map<String, dynamic> _$EnginesToJson(Engines instance) => <String, dynamic>{
      'isp': instance.isp,
      'thrust_sea_level': instance.thrustSeaLevel,
      'thrust_vacuum': instance.thrustVacuum,
      'number': instance.number,
      'type': instance.type,
      'version': instance.version,
      'layout': instance.layout,
      'engine_loss_max': instance.engineLossMax,
      'propellant_1': instance.propellant1,
      'propellant_2': instance.propellant2,
      'thrust_to_weight': instance.thrustToWeight,
    };
