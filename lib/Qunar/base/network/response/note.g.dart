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
      id: json['id'] as int,
      title: json['title'] as String,
      userId: json['userId'] as String,
      userName: json['userName'] as String,
      nickName: json['nickName'] as String,
      userHeadImg: json['userHeadImg'] as String,
      labelName: json['labelName'] as String,
      routeDays: json['routeDays'] as int,
      memo: json['memo'] as String,
      cityName: json['cityName'] as String,
      startTime: json['startTime'] as int,
      eliteType: json['eliteType'] as int,
      score: json['score'] as int,
      cityId: json['cityId'] as int,
      headImg: json['headImg'] as String,
      headImage: json['headImage'] as String,
      sourceType: json['sourceType'] as int,
      actorType: json['actorType'] as int,
      tripTypeNew: json['tripTypeNew'] as String,
      actorAndTripType: json['actorAndTripType'] as String,
      imageUrl: json['imageUrl'] as String,
      imageColor: json['imageColor'] as String,
      travelBookDayList: (json['travelBookDayList'] as List)
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
      'imageUrl': instance.imageUrl,
      'imageColor': instance.imageColor,
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
