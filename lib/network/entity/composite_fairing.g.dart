// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'composite_fairing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompositeFairing _$CompositeFairingFromJson(Map<String, dynamic> json) =>
    CompositeFairing(
      height: Diameter.fromJson(json['height'] as Map<String, dynamic>),
      diameter: Diameter.fromJson(json['diameter'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CompositeFairingToJson(CompositeFairing instance) =>
    <String, dynamic>{
      'height': instance.height,
      'diameter': instance.diameter,
    };
