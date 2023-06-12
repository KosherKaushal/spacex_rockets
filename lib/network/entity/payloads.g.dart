// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payloads.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Payloads _$PayloadsFromJson(Map<String, dynamic> json) => Payloads(
      compositeFairing: CompositeFairing.fromJson(
          json['composite_fairing'] as Map<String, dynamic>),
      option1: json['option_1'] as String,
    );

Map<String, dynamic> _$PayloadsToJson(Payloads instance) => <String, dynamic>{
      'composite_fairing': instance.compositeFairing,
      'option_1': instance.option1,
    };
