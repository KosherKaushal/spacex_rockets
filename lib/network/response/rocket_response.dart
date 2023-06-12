import 'package:json_annotation/json_annotation.dart';

import '../entity/diameter.dart';
import '../entity/engines.dart';
import '../entity/first_stage.dart';
import '../entity/landing_legs.dart';
import '../entity/mass.dart';
import '../entity/payload_weights.dart';
import '../entity/second_stage.dart';

part 'rocket_response.g.dart';

@JsonSerializable()
class RocketResponse {
  final Diameter height;
  final Diameter diameter;
  final Mass mass;
  @JsonKey(name: 'first_stage')
  final FirstStage firstStage;
  @JsonKey(name: 'second_stage')
  final SecondStage secondStage;
  final Engines engines;
  @JsonKey(name: 'landing_legs')
  final LandingLegs landingLegs;
  @JsonKey(name: 'payload_weights')
  final List<PayloadWeight> payloadWeights;
  @JsonKey(name: 'flickr_images')
  final List<String> flickrImages;
  final String name;
  final String type;
  final bool active;
  final int stages;
  final int boosters;
  @JsonKey(name: 'cost_per_launch')
  final int costPerLaunch;
  @JsonKey(name: 'success_rate_pct')
  final int successRatePct;
  @JsonKey(name: 'first_flight')
  final DateTime firstFlight;
  final String country;
  final String company;
  final String wikipedia;
  final String description;
  final String id;

  RocketResponse({
    required this.height,
    required this.diameter,
    required this.mass,
    required this.firstStage,
    required this.secondStage,
    required this.engines,
    required this.landingLegs,
    required this.payloadWeights,
    required this.flickrImages,
    required this.name,
    required this.type,
    required this.active,
    required this.stages,
    required this.boosters,
    required this.costPerLaunch,
    required this.successRatePct,
    required this.firstFlight,
    required this.country,
    required this.company,
    required this.wikipedia,
    required this.description,
    required this.id,
  });

  factory RocketResponse.fromJson(Map<String, dynamic> json) =>
      _$RocketResponseFromJson(json);
  Map<String, dynamic> toJson() => _$RocketResponseToJson(this);
}
