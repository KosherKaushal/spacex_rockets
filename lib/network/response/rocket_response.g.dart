// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rocket_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RocketResponse _$RocketResponseFromJson(Map<String, dynamic> json) =>
    RocketResponse(
      height: Diameter.fromJson(json['height'] as Map<String, dynamic>),
      diameter: Diameter.fromJson(json['diameter'] as Map<String, dynamic>),
      mass: Mass.fromJson(json['mass'] as Map<String, dynamic>),
      firstStage:
          FirstStage.fromJson(json['first_stage'] as Map<String, dynamic>),
      secondStage:
          SecondStage.fromJson(json['second_stage'] as Map<String, dynamic>),
      engines: Engines.fromJson(json['engines'] as Map<String, dynamic>),
      landingLegs:
          LandingLegs.fromJson(json['landing_legs'] as Map<String, dynamic>),
      payloadWeights: (json['payload_weights'] as List<dynamic>)
          .map((e) => PayloadWeight.fromJson(e as Map<String, dynamic>))
          .toList(),
      flickrImages: (json['flickr_images'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      name: json['name'] as String,
      type: json['type'] as String,
      active: json['active'] as bool,
      stages: json['stages'] as int,
      boosters: json['boosters'] as int,
      costPerLaunch: json['cost_per_launch'] as int,
      successRatePct: json['success_rate_pct'] as int,
      firstFlight: DateTime.parse(json['first_flight'] as String),
      country: json['country'] as String,
      company: json['company'] as String,
      wikipedia: json['wikipedia'] as String,
      description: json['description'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$RocketResponseToJson(RocketResponse instance) =>
    <String, dynamic>{
      'height': instance.height,
      'diameter': instance.diameter,
      'mass': instance.mass,
      'first_stage': instance.firstStage,
      'second_stage': instance.secondStage,
      'engines': instance.engines,
      'landing_legs': instance.landingLegs,
      'payload_weights': instance.payloadWeights,
      'flickr_images': instance.flickrImages,
      'name': instance.name,
      'type': instance.type,
      'active': instance.active,
      'stages': instance.stages,
      'boosters': instance.boosters,
      'cost_per_launch': instance.costPerLaunch,
      'success_rate_pct': instance.successRatePct,
      'first_flight': instance.firstFlight.toIso8601String(),
      'country': instance.country,
      'company': instance.company,
      'wikipedia': instance.wikipedia,
      'description': instance.description,
      'id': instance.id,
    };
