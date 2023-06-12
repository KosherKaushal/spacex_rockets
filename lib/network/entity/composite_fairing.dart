import 'package:json_annotation/json_annotation.dart';

import 'diameter.dart';

part 'composite_fairing.g.dart';

@JsonSerializable()
class CompositeFairing {
  final Diameter height;
  final Diameter diameter;

  CompositeFairing({
    required this.height,
    required this.diameter,
  });

  factory CompositeFairing.fromJson(Map<String, dynamic> json) =>
      _$CompositeFairingFromJson(json);
  Map<String, dynamic> toJson() => _$CompositeFairingToJson(this);
}
