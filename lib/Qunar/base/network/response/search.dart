import 'package:flutter_swan/Qunar/base/network/response/base.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search.g.dart';

@JsonSerializable()
class SuggestList extends BaseListResponse<Suggest> {
  final int newOffset;

  final int hotOffset;

  SuggestList(
    int totalCount,
    List<Suggest> list,
    this.newOffset,
    this.hotOffset,
  ) : super(totalCount, list);

  factory SuggestList.fromJson(Map<String, dynamic> json) => _$SuggestListFromJson(json);

  Map<String, dynamic> toJson() => _$SuggestListToJson(this);
}

@JsonSerializable()
class Suggest {
  final String name;

  final String subTitle;

  final int id;

  final int type;

  final int subType;

  final String url;

  final bool useHybrid;

  final double lat;

  final double lng;

  final bool isAbroad;

  final int urlType;

  final int cityId;

  final String cityName;

  final String queryName;

  final String destCityName;

  final bool order;

  final int count;

  final List<Suggest> extra;

  Suggest(
    this.name,
    this.subTitle,
    this.id,
    this.type,
    this.subType,
    this.url,
    this.useHybrid,
    this.lat,
    this.lng,
    this.isAbroad,
    this.urlType,
    this.cityId,
    this.cityName,
    this.queryName,
    this.destCityName,
    this.order,
    this.count,
    this.extra,
  );

  factory Suggest.fromJson(Map<String, dynamic> json) => _$SuggestFromJson(json);

  Map<String, dynamic> toJson() => _$SuggestToJson(this);
}

@JsonSerializable()
class SearchRecommendProductList extends BaseListResponse<SearchRecommendProduct> {
  SearchRecommendProductList(
    int totalCount,
    List<SearchRecommendProduct> list,
  ) : super(totalCount, list);

  factory SearchRecommendProductList.fromJson(Map<String, dynamic> json) => _$SearchRecommendProductListFromJson(json);

  Map<String, dynamic> toJson() => _$SearchRecommendProductListToJson(this);
}

@JsonSerializable()
class SearchRecommendProduct {
  final String type;

  final String name;

  final String price;

  final String url;

  final int urlType;

  const SearchRecommendProduct(
    this.type,
    this.name,
    this.price,
    this.url,
    this.urlType,
  );

  factory SearchRecommendProduct.fromJson(Map<String, dynamic> json) => _$SearchRecommendProductFromJson(json);

  Map<String, dynamic> toJson() => _$SearchRecommendProductToJson(this);
}

@JsonSerializable()
class SearchRecommendHotList extends BaseListResponse<SearchRecommendHot> {
  SearchRecommendHotList(
    int totalCount,
    List<SearchRecommendHot> list,
  ) : super(totalCount, list);

  factory SearchRecommendHotList.fromJson(Map<String, dynamic> json) => _$SearchRecommendHotListFromJson(json);

  Map<String, dynamic> toJson() => _$SearchRecommendHotListToJson(this);
}

@JsonSerializable()
class SearchRecommendHot {
  final int id;

  final String name;

  final int type;

  final int poiType;

  final dynamic tag;

  const SearchRecommendHot(
    this.id,
    this.name,
    this.type,
    this.poiType,
    this.tag,
  );

  factory SearchRecommendHot.fromJson(Map<String, dynamic> json) => _$SearchRecommendHotFromJson(json);

  Map<String, dynamic> toJson() => _$SearchRecommendHotToJson(this);
}
