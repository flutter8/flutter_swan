import 'package:flutter_swan/Qunar/base/network/response/base.dart';
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

@JsonSerializable()
class ChannelResponse extends BaseListResponse<Channel> {
  ChannelResponse(List<Channel> list) : super(0, list);

  factory ChannelResponse.fromJson(Map<String, dynamic> json) => _$ChannelResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ChannelResponseToJson(this);
}

@JsonSerializable()
class Channel {
  final String jumpType;

  final String title;

  final String jumpUrl;

  final String iconUrl;

  final String beacon;

  final String andrVersion;

  final String iosVersion;

  Channel(
    this.jumpType,
    this.title,
    this.jumpUrl,
    this.iconUrl,
    this.beacon,
    this.andrVersion,
    this.iosVersion,
  );

  factory Channel.fromJson(Map<String, dynamic> json) => _$ChannelFromJson(json);

  Map<String, dynamic> toJson() => _$ChannelToJson(this);
}
