import 'package:flutter_swan/Qunar/base/network/response/base.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_swan/Qunar/base/network/response/poi.dart';

part 'note.g.dart';

@JsonSerializable()
class Note {
  @JsonKey(name: "book")
  final Overview overview;

  @JsonKey(name: "bookExt")
  final Extension extension;

  Note(this.overview, this.extension);

  List<NoteElement> elementList() {
    return overview?.travelBookDayList?.map((element) {
          return element.elementList;
        })?.first ??
        [];
  }

  factory Note.fromJson(Map<String, dynamic> json) => _$NoteFromJson(json);

  Map<String, dynamic> toJson() => _$NoteToJson(this);
}

@JsonSerializable()
class Overview {
  final int id;

  final String title;

  final String userId;

  final String userName;

  final String nickName;

  final String userHeadImg;

  final String labelName;

  final int routeDays;

  final String memo;

  final String cityName;

  final int startTime;

  final int eliteType;

  final int score;

  final int cityId;

  final String headImg;

  final String headImage;

  final int sourceType;

  final int actorType;

  final String tripTypeNew;

  final String actorAndTripType;

  final String imageUrl;

  final String imageColor;

  final List<NoteDay> travelBookDayList;

  Overview({
    this.id,
    this.title,
    this.userId,
    this.userName,
    this.nickName,
    this.userHeadImg,
    this.labelName,
    this.routeDays,
    this.memo,
    this.cityName,
    this.startTime,
    this.eliteType,
    this.score,
    this.cityId,
    this.headImg,
    this.headImage,
    this.sourceType,
    this.actorType,
    this.tripTypeNew,
    this.actorAndTripType,
    this.imageUrl,
    this.imageColor,
    this.travelBookDayList,
  });

  factory Overview.fromJson(Map<String, dynamic> json) => _$OverviewFromJson(json);

  Map<String, dynamic> toJson() => _$OverviewToJson(this);
}

@JsonSerializable()
class Extension {
  final String cityHotelSeq;

  final int routeDistCount;

  final String imageColor;

  final List<String> smartTypes;

  final String commonDistName;

  Extension(
    this.cityHotelSeq,
    this.routeDistCount,
    this.imageColor,
    this.smartTypes,
    this.commonDistName,
  );

  factory Extension.fromJson(Map<String, dynamic> json) => _$ExtensionFromJson(json);

  Map<String, dynamic> toJson() => _$ExtensionToJson(this);
}

@JsonSerializable()
class NoteDay {
  final int id;

  final List<NoteElement> elementList;

  final String title;

  final String memo;

  final int dayStyle;

  NoteDay(
    this.id,
    this.elementList,
    this.title,
    this.memo,
    this.dayStyle,
  );

  factory NoteDay.fromJson(Map<String, dynamic> json) => _$NoteDayFromJson(json);

  Map<String, dynamic> toJson() => _$NoteDayToJson(this);
}

@JsonSerializable()
class NoteElement extends Poi {
  final List<NoteElementMemo> memoList;

  NoteElement(
    int id,
    int type,
    int originType,
    String name,
    String memo,
    List<PoiImage> images,
    this.memoList,
  ) : super(
          id: id,
          type: type,
          originType: originType,
          name: name,
          memo: memo,
          images: images,
        );

  List<PoiImage> imageInMemoList() {
    return memoList?.where((memo) {
          return memo.type == 2;
        })?.map((memo) {
          return memo.image;
        })?.toList() ??
        [];
  }

  factory NoteElement.fromJson(Map<String, dynamic> json) => _$NoteElementFromJson(json);

  Map<String, dynamic> toJson() => _$NoteElementToJson(this);
}

@JsonSerializable()
class NoteElementMemo {
  final int type;

  final String content;

  final PoiImage image;

  NoteElementMemo(
    this.type,
    this.content,
    this.image,
  );

  factory NoteElementMemo.fromJson(Map<String, dynamic> json) => _$NoteElementMemoFromJson(json);

  Map<String, dynamic> toJson() => _$NoteElementMemoToJson(this);
}

@JsonSerializable()
class OverviewResponse extends BaseListResponse<Overview> {
  final bool more;

  final int count;

  OverviewResponse(
    this.more,
    this.count,
    List<Overview> list,
  ) : super(0, list);

  factory OverviewResponse.fromJson(Map<String, dynamic> json) => _$OverviewResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OverviewResponseToJson(this);
}
