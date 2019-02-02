// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

City _$CityFromJson(Map<String, dynamic> json) {
  return City(
      json['id'] as int,
      json['name'] as String,
      json['distType'] as int,
      json['abroad'] as bool,
      (json['lat'] as num)?.toDouble(),
      (json['lng'] as num)?.toDouble(),
      json['hotelSeq'] as String,
      json['notice'] as String,
      json['noticeUrl'] as String,
      json['ctripId'] as int,
      json['ctripName'] as String,
      json['headImage'] as String,
      json['visaType'] as int,
      json['visaTypeName'] as String);
}

Map<String, dynamic> _$CityToJson(City instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'distType': instance.distType,
      'abroad': instance.abroad,
      'lat': instance.lat,
      'lng': instance.lng,
      'hotelSeq': instance.hotelSeq,
      'notice': instance.notice,
      'noticeUrl': instance.noticeUrl,
      'ctripId': instance.ctripId,
      'ctripName': instance.ctripName,
      'headImage': instance.headImage,
      'visaType': instance.visaType,
      'visaTypeName': instance.visaTypeName
    };

ChannelResponse _$ChannelResponseFromJson(Map<String, dynamic> json) {
  return ChannelResponse((json['list'] as List)
      ?.map(
          (e) => e == null ? null : Channel.fromJson(e as Map<String, dynamic>))
      ?.toList());
}

Map<String, dynamic> _$ChannelResponseToJson(ChannelResponse instance) =>
    <String, dynamic>{'list': instance.list};

Channel _$ChannelFromJson(Map<String, dynamic> json) {
  return Channel(
      json['jumpType'] as String,
      json['title'] as String,
      json['jumpUrl'] as String,
      json['iconUrl'] as String,
      json['beacon'] as String,
      json['andrVersion'] as String,
      json['iosVersion'] as String);
}

Map<String, dynamic> _$ChannelToJson(Channel instance) => <String, dynamic>{
      'jumpType': instance.jumpType,
      'title': instance.title,
      'jumpUrl': instance.jumpUrl,
      'iconUrl': instance.iconUrl,
      'beacon': instance.beacon,
      'andrVersion': instance.andrVersion,
      'iosVersion': instance.iosVersion
    };
