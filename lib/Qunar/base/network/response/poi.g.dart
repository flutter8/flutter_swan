// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Poi _$PoiFromJson(Map<String, dynamic> json) {
  return Poi(
      json['id'] as int,
      json['type'] as int,
      json['originType'] as int,
      json['name'] as String,
      json['memo'] as String,
      (json['images'] as List)
          ?.map((e) =>
              e == null ? null : PoiImage.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$PoiToJson(Poi instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'originType': instance.originType,
      'name': instance.name,
      'memo': instance.memo,
      'images': instance.images
    };

PoiImage _$PoiImageFromJson(Map<String, dynamic> json) {
  return PoiImage(
      json['id'] as int,
      json['name'] as String,
      json['intro'] as String,
      json['url'] as String,
      json['width'] as int,
      json['height'] as int,
      json['userId'] as String,
      json['score'] as int,
      json['likeCount'] as int);
}

Map<String, dynamic> _$PoiImageToJson(PoiImage instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'intro': instance.intro,
      'url': instance.url,
      'width': instance.width,
      'height': instance.height,
      'userId': instance.userId,
      'score': instance.score,
      'likeCount': instance.likeCount
    };
