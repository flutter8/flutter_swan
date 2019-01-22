// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SuggestResponse _$SuggestListFromJson(Map<String, dynamic> json) {
  return SuggestResponse(
      json['totalCount'] as int,
      (json['list'] as List)
          ?.map((e) =>
              e == null ? null : Suggest.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['newOffset'] as int,
      json['hotOffset'] as int);
}

Map<String, dynamic> _$SuggestListToJson(SuggestResponse instance) =>
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
      (json['extra'] as List)
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
      'extra': instance.extra
    };

SearchRecommendProductList _$SearchRecommendProductListFromJson(
    Map<String, dynamic> json) {
  return SearchRecommendProductList(
      json['totalCount'] as int,
      (json['list'] as List)
          ?.map((e) => e == null
              ? null
              : SearchRecommendProduct.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$SearchRecommendProductListToJson(
        SearchRecommendProductList instance) =>
    <String, dynamic>{'totalCount': instance.totalCount, 'list': instance.list};

SearchRecommendProduct _$SearchRecommendProductFromJson(
    Map<String, dynamic> json) {
  return SearchRecommendProduct(json['type'] as String, json['name'] as String,
      json['price'] as String, json['url'] as String, json['urlType'] as int);
}

Map<String, dynamic> _$SearchRecommendProductToJson(
        SearchRecommendProduct instance) =>
    <String, dynamic>{
      'type': instance.type,
      'name': instance.name,
      'price': instance.price,
      'url': instance.url,
      'urlType': instance.urlType
    };

SearchRecommendHotList _$SearchRecommendHotListFromJson(
    Map<String, dynamic> json) {
  return SearchRecommendHotList(
      json['totalCount'] as int,
      (json['list'] as List)
          ?.map((e) => e == null
              ? null
              : SearchRecommendHot.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$SearchRecommendHotListToJson(
        SearchRecommendHotList instance) =>
    <String, dynamic>{'totalCount': instance.totalCount, 'list': instance.list};

SearchRecommendHot _$SearchRecommendHotFromJson(Map<String, dynamic> json) {
  return SearchRecommendHot(json['id'] as int, json['name'] as String,
      json['type'] as int, json['poiType'] as int, json['tag']);
}

Map<String, dynamic> _$SearchRecommendHotToJson(SearchRecommendHot instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'poiType': instance.poiType,
      'tag': instance.tag
    };
