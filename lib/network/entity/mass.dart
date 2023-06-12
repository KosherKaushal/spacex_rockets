import 'package:json_annotation/json_annotation.dart';

part 'mass.g.dart';

@JsonSerializable()
class Mass {
  final int kg;
  final int lb;

  Mass({
    required this.kg,
    required this.lb,
  });

  factory Mass.fromJson(Map<String, dynamic> json) => _$MassFromJson(json);
  Map<String, dynamic> toJson() => _$MassToJson(this);
}
