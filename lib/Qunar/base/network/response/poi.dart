import 'package:json_annotation/json_annotation.dart';

part 'poi.g.dart';

@JsonSerializable()
class Poi {
  final int id;

  final int type;

  final int originType;

  final String name;

  final String memo;

  final List<PoiImage> images;

  Poi(
    this.id,
    this.type,
    this.originType,
    this.name,
    this.memo,
    this.images,
  );

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

  PoiImage(
    this.id,
    this.name,
    this.intro,
    this.url,
    this.width,
    this.height,
    this.userId,
    this.score,
    this.likeCount,
  );

  factory PoiImage.fromJson(Map<String, dynamic> json) => _$PoiImageFromJson(json);

  Map<String, dynamic> toJson() => _$PoiImageToJson(this);
}
