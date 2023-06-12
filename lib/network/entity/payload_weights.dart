import 'package:json_annotation/json_annotation.dart';

part 'payload_weights.g.dart';

@JsonSerializable()
class PayloadWeight {
  final String id;
  final String name;
  final int kg;
  final int lb;

  PayloadWeight({
    required this.id,
    required this.name,
    required this.kg,
    required this.lb,
  });

  factory PayloadWeight.fromJson(Map<String, dynamic> json) =>
      _$PayloadWeightFromJson(json);
  Map<String, dynamic> toJson() => _$PayloadWeightToJson(this);
}
