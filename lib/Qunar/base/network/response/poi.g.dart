// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PoiResponse _$PoiResponseFromJson(Map<String, dynamic> json) {
  return PoiResponse(
      (json['topFeelingTag'] as List)
          ?.map((e) =>
              e == null ? null : PoiTag.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      (json['list'] as List)
          ?.map(
              (e) => e == null ? null : Poi.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$PoiResponseToJson(PoiResponse instance) =>
    <String, dynamic>{'list': instance.list, 'topFeelingTag': instance.tags};

Poi _$PoiFromJson(Map<String, dynamic> json) {
  return Poi(
      addr: json['addr'] as String,
      blat: (json['blat'] as num)?.toDouble(),
      blng: (json['blng'] as num)?.toDouble(),
      commentCount: json['commentCount'] as int,
      distId: json['distId'] as int,
      distName: json['distName'] as String,
      glat: (json['glat'] as num)?.toDouble(),
      glng: (json['glng'] as num)?.toDouble(),
      id: json['id'] as int,
      image: json['image'] as String,
      intro: json['intro'] as String,
      isAbroad: json['isAbroad'] as bool,
      newTag: json['newTag'] as String,
      payTypes: json['payTypes'],
      priceNumber: (json['priceNumber'] as num)?.toDouble(),
      ratingScore: (json['ratingScore'] as num)?.toDouble(),
      sightAreaName: json['sightAreaName'] as String,
      sightLevel: json['sightLevel'] as String,
      smartReferCount: json['smartReferCount'] as int,
      style: json['style'] as String,
      subType: json['subType'] as int,
      tag: json['tag'] as String,
      type: json['type'] as int,
      originType: json['originType'] as int,
      name: json['name'] as String,
      memo: json['memo'] as String,
      images: (json['images'] as List)
          ?.map((e) =>
              e == null ? null : PoiImage.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$PoiToJson(Poi instance) => <String, dynamic>{
      'addr': instance.addr,
      'blat': instance.blat,
      'blng': instance.blng,
      'commentCount': instance.commentCount,
      'distId': instance.distId,
      'distName': instance.distName,
      'glat': instance.glat,
      'glng': instance.glng,
      'id': instance.id,
      'image': instance.image,
      'intro': instance.intro,
      'isAbroad': instance.isAbroad,
      'newTag': instance.newTag,
      'payTypes': instance.payTypes,
      'priceNumber': instance.priceNumber,
      'ratingScore': instance.ratingScore,
      'sightAreaName': instance.sightAreaName,
      'sightLevel': instance.sightLevel,
      'smartReferCount': instance.smartReferCount,
      'style': instance.style,
      'subType': instance.subType,
      'tag': instance.tag,
      'type': instance.type,
      'originType': instance.originType,
      'name': instance.name,
      'memo': instance.memo,
      'images': instance.images
    };

PoiImage _$PoiImageFromJson(Map<String, dynamic> json) {
  return PoiImage(
      id: json['id'] as int,
      name: json['name'] as String,
      intro: json['intro'] as String,
      url: json['url'] as String,
      width: json['width'] as int,
      height: json['height'] as int,
      userId: json['userId'] as String,
      score: json['score'] as int,
      likeCount: json['likeCount'] as int);
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

PoiTag _$PoiTagFromJson(Map<String, dynamic> json) {
  return PoiTag(
      image: json['image'] as String,
      intro: json['intro'] as String,
      pv: json['pv'] as int,
      tagId: json['tagId'] as int,
      tagName: json['tagName'] as String);
}

Map<String, dynamic> _$PoiTagToJson(PoiTag instance) => <String, dynamic>{
      'image': instance.image,
      'intro': instance.intro,
      'pv': instance.pv,
      'tagId': instance.tagId,
      'tagName': instance.tagName
    };
