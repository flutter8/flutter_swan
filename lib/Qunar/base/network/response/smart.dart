import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_swan/Qunar/base/network/response/base.dart';

part 'smart.g.dart';

@JsonSerializable()
class NoteSmartData {
  final int id;

  final String title;

  final int cTime;

  final String cityName;

  final String destCities;

  final String imageUrl;

  final String labelName;

  final int routeDays;

  final int startTime;

  final int uTime;

  final String userName;

  final int viewCount;

  final String ownerId;

  final String ugcInfo;

  final bool isSticky;

  final bool isElite;

  final int bookType;

  final String userImageUrl;

  final int eliteType;

  final int likeCount;

  final int itemOrder;

  final bool userSmart;

  final String imageColor;

  final String commonDistName;

  final String tip;

  final int collectCount;

  NoteSmartData({
    this.id,
    this.title,
    this.cTime,
    this.cityName,
    this.destCities,
    this.imageUrl,
    this.labelName,
    this.routeDays,
    this.startTime,
    this.uTime,
    this.userName,
    this.viewCount,
    this.ownerId,
    this.ugcInfo,
    this.isSticky,
    this.isElite,
    this.bookType,
    this.userImageUrl,
    this.eliteType,
    this.likeCount,
    this.itemOrder,
    this.userSmart,
    this.imageColor,
    this.commonDistName,
    this.tip,
    this.collectCount,
  });

  factory NoteSmartData.fromJson(Map<String, dynamic> json) => _$NoteSmartDataFromJson(json);

  Map<String, dynamic> toJson() => _$NoteSmartDataToJson(this);
}

@JsonSerializable()
class NoteSmartListData extends BaseListResponse<NoteSmartData> {
  final int newOffset;

  final int hotOffset;

  NoteSmartListData(
    int totalCount,
    List<NoteSmartData> list,
    this.newOffset,
    this.hotOffset,
  ) : super(totalCount, list);

  factory NoteSmartListData.fromJson(Map<String, dynamic> json) => _$NoteSmartListDataFromJson(json);

  Map<String, dynamic> toJson() => _$NoteSmartListDataToJson(this);
}

@JsonSerializable()
class NoteSmartTagData {
  // with BaseListResponse<NoteSmartTag> {
  // NoteSmartTagData();

  // set list(List list) {
  //   super.list = [];
  //   list?.forEach((element) {
  //     element["list"]?.forEach((element) {
  //       super.list.add(NoteSmartTag.fromJson(element));
  //     });
  //   });
  // }

  // factory NoteSmartTagData.fromJson(Map<String, dynamic> json) => _$NoteSmartTagDataFromJson(json);

  // Map<String, dynamic> toJson() => _$NoteSmartTagDataToJson(this);
}

@JsonSerializable()
class NoteSmartTag {
  final String display;

  final String value;

  NoteSmartTag(this.display, this.value);

  factory NoteSmartTag.fromJson(Map<String, dynamic> json) => _$NoteSmartTagFromJson(json);

  Map<String, dynamic> toJson() => _$NoteSmartTagToJson(this);
}
