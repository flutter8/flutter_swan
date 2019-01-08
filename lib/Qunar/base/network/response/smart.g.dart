// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'smart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NoteSmartData _$NoteSmartDataFromJson(Map<String, dynamic> json) {
  return NoteSmartData(
      id: json['id'] as int,
      title: json['title'] as String,
      cTime: json['cTime'] as int,
      cityName: json['cityName'] as String,
      destCities: json['destCities'] as String,
      imageUrl: json['imageUrl'] as String,
      labelName: json['labelName'] as String,
      routeDays: json['routeDays'] as int,
      startTime: json['startTime'] as int,
      uTime: json['uTime'] as int,
      userName: json['userName'] as String,
      viewCount: json['viewCount'] as int,
      ownerId: json['ownerId'] as String,
      ugcInfo: json['ugcInfo'] as String,
      isSticky: json['isSticky'] as bool,
      isElite: json['isElite'] as bool,
      bookType: json['bookType'] as int,
      userImageUrl: json['userImageUrl'] as String,
      eliteType: json['eliteType'] as int,
      likeCount: json['likeCount'] as int,
      itemOrder: json['itemOrder'] as int,
      userSmart: json['userSmart'] as bool,
      imageColor: json['imageColor'] as String,
      commonDistName: json['commonDistName'] as String,
      tip: json['tip'] as String,
      collectCount: json['collectCount'] as int);
}

Map<String, dynamic> _$NoteSmartDataToJson(NoteSmartData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'cTime': instance.cTime,
      'cityName': instance.cityName,
      'destCities': instance.destCities,
      'imageUrl': instance.imageUrl,
      'labelName': instance.labelName,
      'routeDays': instance.routeDays,
      'startTime': instance.startTime,
      'uTime': instance.uTime,
      'userName': instance.userName,
      'viewCount': instance.viewCount,
      'ownerId': instance.ownerId,
      'ugcInfo': instance.ugcInfo,
      'isSticky': instance.isSticky,
      'isElite': instance.isElite,
      'bookType': instance.bookType,
      'userImageUrl': instance.userImageUrl,
      'eliteType': instance.eliteType,
      'likeCount': instance.likeCount,
      'itemOrder': instance.itemOrder,
      'userSmart': instance.userSmart,
      'imageColor': instance.imageColor,
      'commonDistName': instance.commonDistName,
      'tip': instance.tip,
      'collectCount': instance.collectCount
    };

NoteSmartListData _$NoteSmartListDataFromJson(Map<String, dynamic> json) {
  return NoteSmartListData(
      json['totalCount'] as int,
      (json['list'] as List)
          ?.map((e) => e == null
              ? null
              : NoteSmartData.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['newOffset'] as int,
      json['hotOffset'] as int);
}

Map<String, dynamic> _$NoteSmartListDataToJson(NoteSmartListData instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'list': instance.list,
      'newOffset': instance.newOffset,
      'hotOffset': instance.hotOffset
    };

NoteSmartTagData _$NoteSmartTagDataFromJson(Map<String, dynamic> json) {
  return NoteSmartTagData();
}

Map<String, dynamic> _$NoteSmartTagDataToJson(NoteSmartTagData instance) =>
    <String, dynamic>{};

NoteSmartTag _$NoteSmartTagFromJson(Map<String, dynamic> json) {
  return NoteSmartTag(json['display'] as String, json['value'] as String);
}

Map<String, dynamic> _$NoteSmartTagToJson(NoteSmartTag instance) =>
    <String, dynamic>{'display': instance.display, 'value': instance.value};
