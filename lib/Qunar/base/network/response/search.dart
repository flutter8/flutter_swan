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

  final List<Suggest> extraList;

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
    this.extraList,
  );

  factory Suggest.fromJson(Map<String, dynamic> json) => _$SuggestFromJson(json);

  Map<String, dynamic> toJson() => _$SuggestToJson(this);
}
