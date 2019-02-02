// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Note _$NoteFromJson(Map<String, dynamic> json) {
  return Note(
      json['book'] == null
          ? null
          : Overview.fromJson(json['book'] as Map<String, dynamic>),
      json['bookExt'] == null
          ? null
          : Extension.fromJson(json['bookExt'] as Map<String, dynamic>));
}

Map<String, dynamic> _$NoteToJson(Note instance) =>
    <String, dynamic>{'book': instance.overview, 'bookExt': instance.extension};

Overview _$OverviewFromJson(Map<String, dynamic> json) {
  return Overview(
      json['id'] as int,
      json['title'] as String,
      json['userId'] as String,
      json['userName'] as String,
      json['nickName'] as String,
      json['userHeadImg'] as String,
      json['labelName'] as String,
      json['routeDays'] as int,
      json['memo'] as String,
      json['cityName'] as String,
      json['startTime'] as int,
      json['eliteType'] as int,
      json['score'] as int,
      json['cityId'] as int,
      json['headImg'] as String,
      json['headImage'] as String,
      json['sourceType'] as int,
      json['actorType'] as int,
      json['tripTypeNew'] as String,
      json['actorAndTripType'] as String,
      (json['travelBookDayList'] as List)
          ?.map((e) =>
              e == null ? null : NoteDay.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$OverviewToJson(Overview instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'userId': instance.userId,
      'userName': instance.userName,
      'nickName': instance.nickName,
      'userHeadImg': instance.userHeadImg,
      'labelName': instance.labelName,
      'routeDays': instance.routeDays,
      'memo': instance.memo,
      'cityName': instance.cityName,
      'startTime': instance.startTime,
      'eliteType': instance.eliteType,
      'score': instance.score,
      'cityId': instance.cityId,
      'headImg': instance.headImg,
      'headImage': instance.headImage,
      'sourceType': instance.sourceType,
      'actorType': instance.actorType,
      'tripTypeNew': instance.tripTypeNew,
      'actorAndTripType': instance.actorAndTripType,
      'travelBookDayList': instance.travelBookDayList
    };

Extension _$ExtensionFromJson(Map<String, dynamic> json) {
  return Extension(
      json['cityHotelSeq'] as String,
      json['routeDistCount'] as int,
      json['imageColor'] as String,
      (json['smartTypes'] as List)?.map((e) => e as String)?.toList(),
      json['commonDistName'] as String);
}

Map<String, dynamic> _$ExtensionToJson(Extension instance) => <String, dynamic>{
      'cityHotelSeq': instance.cityHotelSeq,
      'routeDistCount': instance.routeDistCount,
      'imageColor': instance.imageColor,
      'smartTypes': instance.smartTypes,
      'commonDistName': instance.commonDistName
    };

NoteDay _$NoteDayFromJson(Map<String, dynamic> json) {
  return NoteDay(
      json['id'] as int,
      (json['elementList'] as List)
          ?.map((e) => e == null
              ? null
              : NoteElement.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['title'] as String,
      json['memo'] as String,
      json['dayStyle'] as int);
}

Map<String, dynamic> _$NoteDayToJson(NoteDay instance) => <String, dynamic>{
      'id': instance.id,
      'elementList': instance.elementList,
      'title': instance.title,
      'memo': instance.memo,
      'dayStyle': instance.dayStyle
    };

NoteElement _$NoteElementFromJson(Map<String, dynamic> json) {
  return NoteElement(
      json['id'] as int,
      json['type'] as int,
      json['originType'] as int,
      json['name'] as String,
      json['memo'] as String,
      (json['images'] as List)
          ?.map((e) =>
              e == null ? null : PoiImage.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      (json['memoList'] as List)
          ?.map((e) => e == null
              ? null
              : NoteElementMemo.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$NoteElementToJson(NoteElement instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'originType': instance.originType,
      'name': instance.name,
      'memo': instance.memo,
      'images': instance.images,
      'memoList': instance.memoList
    };

NoteElementMemo _$NoteElementMemoFromJson(Map<String, dynamic> json) {
  return NoteElementMemo(
      json['type'] as int,
      json['content'] as String,
      json['image'] == null
          ? null
          : PoiImage.fromJson(json['image'] as Map<String, dynamic>));
}

Map<String, dynamic> _$NoteElementMemoToJson(NoteElementMemo instance) =>
    <String, dynamic>{
      'type': instance.type,
      'content': instance.content,
      'image': instance.image
    };

OverviewResponse _$OverviewResponseFromJson(Map<String, dynamic> json) {
  return OverviewResponse(
      json['more'] as bool,
      json['count'] as int,
      (json['list'] as List)
          ?.map((e) =>
              e == null ? null : Overview.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$OverviewResponseToJson(OverviewResponse instance) =>
    <String, dynamic>{
      'list': instance.list,
      'more': instance.more,
      'count': instance.count
    };
