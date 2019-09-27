// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'experience.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExperienceResponse _$ExperienceResponseFromJson(Map<String, dynamic> json) {
  return ExperienceResponse((json['experiences'] as List)
      ?.map((e) =>
          e == null ? null : Experience.fromJson(e as Map<String, dynamic>))
      ?.toList());
}

Map<String, dynamic> _$ExperienceResponseToJson(ExperienceResponse instance) =>
    <String, dynamic>{'experiences': instance.list};

Experience _$ExperienceFromJson(Map<String, dynamic> json) {
  return Experience(
      authorHeadImage: json['authorHeadImage'] as String,
      authorId: json['authorId'] as String,
      authorName: json['authorName'] as String,
      contentNodes: (json['contentNodes'] as List)
          ?.map((e) => e == null
              ? null
              : ExperienceContent.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      contentText: json['contentText'] as String,
      coverImage: json['coverImage'] == null
          ? null
          : ExperienceCover.fromJson(
              json['coverImage'] as Map<String, dynamic>),
      createTime: json['createTime'] as int,
      distId: json['distId'] as int,
      distName: json['distName'] as String,
      editTime: json['editTime'] as int,
      elite: json['elite'] as bool,
      feature: json['feature'] as String,
      id: json['id'] as int,
      tags: (json['tags'] as List)
          ?.map((e) => e == null
              ? null
              : ExperienceTag.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      title: json['title'] as String,
      top: json['top'] as bool,
      traveler: json['traveler'] as bool,
      usefulCount: json['usefulCount'] as int,
      viewCount: json['viewCount'] as int);
}

Map<String, dynamic> _$ExperienceToJson(Experience instance) =>
    <String, dynamic>{
      'authorHeadImage': instance.authorHeadImage,
      'authorId': instance.authorId,
      'authorName': instance.authorName,
      'contentNodes': instance.contentNodes,
      'contentText': instance.contentText,
      'coverImage': instance.coverImage,
      'createTime': instance.createTime,
      'distId': instance.distId,
      'distName': instance.distName,
      'editTime': instance.editTime,
      'elite': instance.elite,
      'feature': instance.feature,
      'id': instance.id,
      'tags': instance.tags,
      'title': instance.title,
      'top': instance.top,
      'traveler': instance.traveler,
      'usefulCount': instance.usefulCount,
      'viewCount': instance.viewCount
    };

ExperienceContent _$ExperienceContentFromJson(Map<String, dynamic> json) {
  return ExperienceContent(
      content: json['content'] as String,
      height: json['height'] as int,
      imageUrl: json['imageUrl'] as String,
      type: json['type'] as int,
      width: json['width'] as int);
}

Map<String, dynamic> _$ExperienceContentToJson(ExperienceContent instance) =>
    <String, dynamic>{
      'content': instance.content,
      'height': instance.height,
      'imageUrl': instance.imageUrl,
      'type': instance.type,
      'width': instance.width
    };

ExperienceCover _$ExperienceCoverFromJson(Map<String, dynamic> json) {
  return ExperienceCover(
      height: json['height'] as int,
      imageUrl: json['imageUrl'] as String,
      resizeImageUrl: json['resizeImageUrl'] as String,
      width: json['width'] as int);
}

Map<String, dynamic> _$ExperienceCoverToJson(ExperienceCover instance) =>
    <String, dynamic>{
      'height': instance.height,
      'imageUrl': instance.imageUrl,
      'resizeImageUrl': instance.resizeImageUrl,
      'width': instance.width
    };

ExperienceTag _$ExperienceTagFromJson(Map<String, dynamic> json) {
  return ExperienceTag(
      tagId: json['tagId'] as int, tagName: json['tagName'] as String);
}

Map<String, dynamic> _$ExperienceTagToJson(ExperienceTag instance) =>
    <String, dynamic>{'tagId': instance.tagId, 'tagName': instance.tagName};
