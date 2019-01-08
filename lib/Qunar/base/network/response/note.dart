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

  final int userId;

  final String labelName;

  final String title;

  final String memo;

  final String cityName;

  final int startTime;

  final int score;

  final int cityId;

  final String headImage;

  final int sourceType;

  final List<NoteDay> travelBookDayList;

  Overview(this.id, this.userId, this.labelName, this.title, this.memo, this.cityName, this.startTime, this.score,
      this.cityId, this.headImage, this.sourceType, this.travelBookDayList);

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

  Extension(this.cityHotelSeq, this.routeDistCount, this.imageColor, this.smartTypes, this.commonDistName);

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

  NoteDay(this.id, this.elementList, this.title, this.memo, this.dayStyle);

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
          id,
          type,
          originType,
          name,
          memo,
          images,
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
