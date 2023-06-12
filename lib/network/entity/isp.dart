import 'package:json_annotation/json_annotation.dart';

part 'isp.g.dart';

@JsonSerializable()
class Isp {
  @JsonKey(name: 'sea_level')
  final int seaLevel;
  final int vacuum;

  Isp({
    required this.seaLevel,
    required this.vacuum,
  });

  factory Isp.fromJson(Map<String, dynamic> json) => _$IspFromJson(json);
  Map<String, dynamic> toJson() => _$IspToJson(this);
}
