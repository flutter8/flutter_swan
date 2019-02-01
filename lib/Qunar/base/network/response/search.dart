import 'package:flutter_swan/Qunar/base/network/response/base.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search.g.dart';

@JsonSerializable()
class SuggestResponse extends BaseListResponse<Suggest> {
  final int newOffset;

  final int hotOffset;

  SuggestResponse(
    int totalCount,
    List<Suggest> list,
    this.newOffset,
    this.hotOffset,
  ) : super(totalCount, list);

  factory SuggestResponse.empty() => SuggestResponse(0, [], 0, 0);

  factory SuggestResponse.fromJson(Map<String, dynamic> json) => _$SuggestResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SuggestResponseToJson(this);
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
class SearchProductResponse extends BaseListResponse<SearchProduct> {
  SearchProductResponse(
    int totalCount,
    List<SearchProduct> list,
  ) : super(totalCount, list);

  factory SearchProductResponse.fromJson(Map<String, dynamic> json) => _$SearchProductResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SearchProductResponseToJson(this);
}

@JsonSerializable()
class SearchProduct {
  final String type;

  final String name;

  final String price;

  final String url;

  final int urlType;

  const SearchProduct(
    this.type,
    this.name,
    this.price,
    this.url,
    this.urlType,
  );

  factory SearchProduct.fromJson(Map<String, dynamic> json) => _$SearchProductFromJson(json);

  Map<String, dynamic> toJson() => _$SearchProductToJson(this);
}

@JsonSerializable()
class SearchRecommendResponse extends BaseListResponse<SearchRecommend> {
  SearchRecommendResponse(
    int totalCount,
    List<SearchRecommend> list,
  ) : super(totalCount, list);

  factory SearchRecommendResponse.empty() => SearchRecommendResponse(0, []);

  factory SearchRecommendResponse.fromJson(Map<String, dynamic> json) => _$SearchRecommendResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SearchRecommendResponseToJson(this);
}

@JsonSerializable()
class SearchRecommend {
  final int id;

  final String name;

  final int type;

  final int poiType;

  final dynamic tag;

  const SearchRecommend(
    this.id,
    this.name,
    this.type,
    this.poiType,
    this.tag,
  );

  factory SearchRecommend.fromJson(Map<String, dynamic> json) => _$SearchRecommendFromJson(json);

  Map<String, dynamic> toJson() => _$SearchRecommendToJson(this);
}
