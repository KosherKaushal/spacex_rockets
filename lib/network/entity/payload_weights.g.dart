// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payload_weights.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PayloadWeight _$PayloadWeightFromJson(Map<String, dynamic> json) =>
    PayloadWeight(
      id: json['id'] as String,
      name: json['name'] as String,
      kg: json['kg'] as int,
      lb: json['lb'] as int,
    );

Map<String, dynamic> _$PayloadWeightToJson(PayloadWeight instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'kg': instance.kg,
      'lb': instance.lb,
    };
