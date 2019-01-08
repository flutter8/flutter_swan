// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SuggestList _$SuggestListFromJson(Map<String, dynamic> json) {
  return SuggestList(
      json['totalCount'] as int,
      (json['list'] as List)
          ?.map((e) =>
              e == null ? null : Suggest.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['newOffset'] as int,
      json['hotOffset'] as int);
}

Map<String, dynamic> _$SuggestListToJson(SuggestList instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'list': instance.list,
      'newOffset': instance.newOffset,
      'hotOffset': instance.hotOffset
    };

Suggest _$SuggestFromJson(Map<String, dynamic> json) {
  return Suggest(
      json['name'] as String,
      json['subTitle'] as String,
      json['id'] as int,
      json['type'] as int,
      json['subType'] as int,
      json['url'] as String,
      json['useHybrid'] as bool,
      (json['lat'] as num)?.toDouble(),
      (json['lng'] as num)?.toDouble(),
      json['isAbroad'] as bool,
      json['urlType'] as int,
      json['cityId'] as int,
      json['cityName'] as String,
      json['queryName'] as String,
      json['destCityName'] as String,
      json['order'] as bool,
      json['count'] as int,
      (json['extraList'] as List)
          ?.map((e) =>
              e == null ? null : Suggest.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$SuggestToJson(Suggest instance) => <String, dynamic>{
      'name': instance.name,
      'subTitle': instance.subTitle,
      'id': instance.id,
      'type': instance.type,
      'subType': instance.subType,
      'url': instance.url,
      'useHybrid': instance.useHybrid,
      'lat': instance.lat,
      'lng': instance.lng,
      'isAbroad': instance.isAbroad,
      'urlType': instance.urlType,
      'cityId': instance.cityId,
      'cityName': instance.cityName,
      'queryName': instance.queryName,
      'destCityName': instance.destCityName,
      'order': instance.order,
      'count': instance.count,
      'extraList': instance.extraList
    };
