import 'package:flutter_swan/Qunar/base/network/response/base.dart';
import 'package:json_annotation/json_annotation.dart';

part 'poi.g.dart';

@JsonSerializable()
class PoiResponse extends BaseListResponse<Poi> {
  @JsonKey(name: "topFeelingTag")
  final List<PoiTag> tags;

  PoiResponse(this.tags, List<Poi> list) : super(0, list);

  factory PoiResponse.fromJson(Map<String, dynamic> json) => _$PoiResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PoiResponseToJson(this);
}

@JsonSerializable()
class Poi {
  final String addr;

  final double blat;

  final double blng;

  final int commentCount;

  final int distId;

  final String distName;

  final double glat;

  final double glng;

  final int id;

  final String image;

  final String intro;

  final bool isAbroad;

  final String newTag;

  final dynamic payTypes;

  final double priceNumber;

  final double ratingScore;

  final String sightAreaName;

  final String sightLevel;

  final int smartReferCount;

  final String style;

  final int subType;

  final String tag;

  final int type;

  final int originType;

  final String name;

  final String memo;

  final List<PoiImage> images;

  Poi({
    this.addr,
    this.blat,
    this.blng,
    this.commentCount,
    this.distId,
    this.distName,
    this.glat,
    this.glng,
    this.id,
    this.image,
    this.intro,
    this.isAbroad,
    this.newTag,
    this.payTypes,
    this.priceNumber,
    this.ratingScore,
    this.sightAreaName,
    this.sightLevel,
    this.smartReferCount,
    this.style,
    this.subType,
    this.tag,
    this.type,
    this.originType,
    this.name,
    this.memo,
    this.images,
  });

  PoiImage firstImage() => images?.first ?? null;

  factory Poi.fromJson(Map<String, dynamic> json) => _$PoiFromJson(json);

  Map<String, dynamic> toJson() => _$PoiToJson(this);
}

@JsonSerializable()
class PoiImage {
  final int id;

  final String name;

  final String intro;

  final String url;

  final int width;

  final int height;

  final String userId;

  final int score;

  final int likeCount;

  PoiImage({
    this.id,
    this.name,
    this.intro,
    this.url,
    this.width,
    this.height,
    this.userId,
    this.score,
    this.likeCount,
  });

  factory PoiImage.fromJson(Map<String, dynamic> json) => _$PoiImageFromJson(json);

  Map<String, dynamic> toJson() => _$PoiImageToJson(this);
}

@JsonSerializable()
class PoiTag {
  final String image;

  final String intro;

  final int pv;

  final int tagId;

  final String tagName;

  PoiTag({
    this.image,
    this.intro,
    this.pv,
    this.tagId,
    this.tagName,
  });

  factory PoiTag.fromJson(Map<String, dynamic> json) => _$PoiTagFromJson(json);

  Map<String, dynamic> toJson() => _$PoiTagToJson(this);
}
