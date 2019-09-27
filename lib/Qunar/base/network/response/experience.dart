import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_swan/Qunar/base/network/response/base.dart';

part 'experience.g.dart';

@JsonSerializable()
class ExperienceResponse extends BaseListResponse<Experience> {
  @JsonKey(name: "experiences")
  final List<Experience> list;

  ExperienceResponse(this.list) : super(0, list);

  factory ExperienceResponse.fromJson(Map<String, dynamic> json) => _$ExperienceResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ExperienceResponseToJson(this);
}

@JsonSerializable()
class Experience {
  final String authorHeadImage;

  final String authorId;

  final String authorName;

  final List<ExperienceContent> contentNodes;

  final String contentText;

  final ExperienceCover coverImage;

  final int createTime;

  final int distId;

  final String distName;

  final int editTime;

  final bool elite;

  final String feature;

  final int id;

  final List<ExperienceTag> tags;

  final String title;

  final bool top;

  final bool traveler;

  final int usefulCount;

  final int viewCount;

  Experience({
    this.authorHeadImage,
    this.authorId,
    this.authorName,
    this.contentNodes,
    this.contentText,
    this.coverImage,
    this.createTime,
    this.distId,
    this.distName,
    this.editTime,
    this.elite,
    this.feature,
    this.id,
    this.tags,
    this.title,
    this.top,
    this.traveler,
    this.usefulCount,
    this.viewCount,
  });

  factory Experience.fromJson(Map<String, dynamic> json) => _$ExperienceFromJson(json);

  Map<String, dynamic> toJson() => _$ExperienceToJson(this);
}

@JsonSerializable()
class ExperienceContent {
  final String content;

  final int height;

  final String imageUrl;

  final int type;

  final int width;

  ExperienceContent({
    this.content,
    this.height,
    this.imageUrl,
    this.type,
    this.width,
  });

  factory ExperienceContent.fromJson(Map<String, dynamic> json) => _$ExperienceContentFromJson(json);

  Map<String, dynamic> toJson() => _$ExperienceContentToJson(this);
}

@JsonSerializable()
class ExperienceCover {
  final int height;

  final String imageUrl;

  final String resizeImageUrl;

  final int width;

  ExperienceCover({
    this.height,
    this.imageUrl,
    this.resizeImageUrl,
    this.width,
  });

  factory ExperienceCover.fromJson(Map<String, dynamic> json) => _$ExperienceCoverFromJson(json);

  Map<String, dynamic> toJson() => _$ExperienceCoverToJson(this);
}

@JsonSerializable()
class ExperienceTag {
  final int tagId;

  final String tagName;

  ExperienceTag({
    this.tagId,
    this.tagName,
  });

  factory ExperienceTag.fromJson(Map<String, dynamic> json) => _$ExperienceTagFromJson(json);

  Map<String, dynamic> toJson() => _$ExperienceTagToJson(this);
}
