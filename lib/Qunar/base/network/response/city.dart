import 'package:json_annotation/json_annotation.dart';

part 'city.g.dart';

@JsonSerializable()
class City {
  final int id;

  final String name;

  final int distType;

  final bool abroad;

  final double lat;

  final double lng;

  final String hotelSeq;

  final String notice;

  final String noticeUrl;

  final int ctripId;

  final String ctripName;

  final String headImage;

  final int visaType;

  final String visaTypeName;

  City(
    this.id,
    this.name,
    this.distType,
    this.abroad,
    this.lat,
    this.lng,
    this.hotelSeq,
    this.notice,
    this.noticeUrl,
    this.ctripId,
    this.ctripName,
    this.headImage,
    this.visaType,
    this.visaTypeName,
  );

  City.empty({
    this.id,
    this.name,
    this.distType,
    this.abroad,
    this.lat,
    this.lng,
    this.hotelSeq,
    this.notice,
    this.noticeUrl,
    this.ctripId,
    this.ctripName,
    this.headImage,
    this.visaType,
    this.visaTypeName,
  });

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);

  Map<String, dynamic> toJson() => _$CityToJson(this);
}
