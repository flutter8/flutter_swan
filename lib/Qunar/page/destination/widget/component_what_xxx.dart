import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swan/Qunar/base/network/response/note.dart';
import 'package:flutter_swan/Qunar/constant/poi.dart';
import 'package:flutter_swan/base/styles/colors.dart';
import 'package:flutter_swan/base/styles/dimens.dart';
import 'package:flutter_swan/base/styles/text.dart';
import 'package:flutter_swan/Qunar/base/network/response/poi.dart';
import 'package:flutter_swan/Qunar/blocs/destination/state.dart';

const poiItemTopIconFont = [0xe66c, 0xe66d, 0xe66e];

class ComponentWhatFood extends ComponentWhatXXX {
  const ComponentWhatFood({Key key, @required state}) : super(key: key, state: state);

  @override
  String get absComponentWhatLabel => "吃什么";

  @override
  String get absExperienceLabel => "美食攻略";

  @override
  String get absExperienceTip => "美食";

  @override
  int get absPoiType => PoiType.food;

  @override
  String get absPoiTypeName => "美食";

  @override
  List<Color> get gradientColors => const [const Color(0xFFFCB64C), const Color(0xFFFFCA1D)];

  @override
  OverviewResponse get absAlbumResponse => state?.whatfoodAlbumResponse;

  @override
  PoiResponse get absPoiResponse => state?.whatfoodPoiResponse;
}

class ComponentWhatScenic extends ComponentWhatXXX {
  const ComponentWhatScenic({Key key, @required state}) : super(key: key, state: state);

  @override
  String get absComponentWhatLabel => "玩什么";

  @override
  String get absExperienceLabel => "当地玩乐";

  @override
  String get absExperienceTip => "当地玩乐";

  @override
  int get absPoiType => PoiType.scenic;

  @override
  String get absPoiTypeName => "景点";

  @override
  List<Color> get gradientColors => const [const Color(0xFF07CE9D), const Color(0xFF09E0B5)];

  @override
  OverviewResponse get absAlbumResponse => state?.whatSecnicAlbumResponse;

  @override
  PoiResponse get absPoiResponse => state?.whatScenicPoiResponse;
}

class ComponentWhatShopping extends ComponentWhatXXX {
  const ComponentWhatShopping({Key key, @required state}) : super(key: key, state: state);

  @override
  String get absComponentWhatLabel => "买什么";

  @override
  String get absExperienceLabel => "购物攻略";

  @override
  String get absExperienceTip => "购物";

  @override
  int get absPoiType => PoiType.shopping;

  @override
  String get absPoiTypeName => "购物";

  @override
  List<Color> get gradientColors => const [const Color(0xFF7E56FF), const Color(0xFF7D7AFF)];

  @override
  OverviewResponse get absAlbumResponse => state?.whatShoppingAlbumResponse;

  @override
  PoiResponse get absPoiResponse => state?.whatShoppingPoiResponse;
}

abstract class ComponentWhatXXX extends StatefulWidget {
  final DestinationBlocState state;

  const ComponentWhatXXX({Key key, this.state}) : super(key: key);

  _ComponentWhatXXXState createState() => _ComponentWhatXXXState();

  String get absComponentWhatLabel;

  int get absPoiType;

  String get absPoiTypeName;

  List<Color> get gradientColors;

  String get absExperienceLabel;

  String get absExperienceTip;

  PoiResponse get absPoiResponse;

  OverviewResponse get absAlbumResponse;
}

class _ComponentWhatXXXState extends State<ComponentWhatXXX> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            height: 60,
            padding: const EdgeInsets.symmetric(horizontal: BaseDimens.BIG),
            child: Text(
              widget.absPoiTypeName,
              style: TextStyle(fontWeight: FontWeight.bold).merge(
                BaseTextStyle.black().huge,
              ),
            ),
          ),
          buildPoiTagGalleryWidget(widget?.absPoiResponse),
          buildPoiGalleryWidget(widget?.absPoiResponse),
          buildAlumGalleryWidget(widget?.absAlbumResponse),
        ],
      ),
    );
  }

  Widget buildPoiTagGalleryWidget(PoiResponse poiResponse) {
    return Container(
      width: double.infinity,
      height: 30,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: BaseDimens.BIG, vertical: 0),
        scrollDirection: Axis.horizontal,
        itemCount: poiResponse?.tags?.length ?? 0,
        itemBuilder: (context, index) {
          PoiTag poiTag = poiResponse?.tags?.elementAt(index);
          return Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: BaseDimens.BIG, vertical: 0),
            margin: const EdgeInsets.only(right: BaseDimens.NORMAL),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(BaseDimens.SUPER_BIG),
              ),
              border: Border.all(
                color: widget?.gradientColors[0],
                width: 0.5,
              ),
              gradient: index == 0 ? LinearGradient(colors: widget?.gradientColors ?? []) : null,
            ),
            child: Text(
              poiTag.tagName,
              style: TextStyle(
                color: index == 0 ? Colors.white : widget?.gradientColors[0],
                fontSize: BaseTextFontSize.BIG,
              ),
            ),
          );
        },
      ),
    );
  }

  Widget buildPoiGalleryWidget(PoiResponse poiResponse) {
    return Container(
      width: double.infinity,
      height: 130,
      margin: const EdgeInsets.only(top: BaseDimens.BIG_NORMAL),
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: BaseDimens.BIG, vertical: 0),
        scrollDirection: Axis.horizontal,
        itemCount: poiResponse?.length ?? 0,
        itemBuilder: (context, index) {
          Poi poi = poiResponse[index];
          return Container(
            margin: const EdgeInsets.only(right: BaseDimens.NORMAL),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 135,
                  height: 90,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(
                            Radius.circular(BaseDimens.SMALL),
                          ),
                          child: CachedNetworkImage(
                            imageUrl: poi.image,
                            width: 131,
                            height: 86,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Offstage(
                        offstage: index > 2,
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: BaseDimens.SMALL),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(BaseDimens.TINY)),
                            gradient: LinearGradient(colors: widget?.gradientColors ?? []),
                          ),
                          child: Icon(
                            IconData(poiItemTopIconFont[index % 3], fontFamily: "gl_home_rn"),
                            color: BaseColors.WHITE,
                            size: BaseTextFontSize.COLOSSAL,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: BaseDimens.SMALL, top: BaseDimens.SMALL),
                  height: 20,
                  width: 135,
                  child: Text(
                    poi.name ?? "",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: TextStyle(fontWeight: FontWeight.bold).merge(
                      BaseTextStyle.black().big,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: BaseDimens.SMALL, top: BaseDimens.SMALL),
                  height: 20,
                  width: 135,
                  child: Text(
                    poi.style ?? "",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: BaseTextStyle.blue().small,
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  Widget buildAlumGalleryWidget(OverviewResponse response) {
    return Container(
      width: double.infinity,
      height: 160,
      margin: const EdgeInsets.only(top: BaseDimens.BIG_NORMAL),
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: BaseDimens.BIG, vertical: 0),
        scrollDirection: Axis.horizontal,
        itemCount: response?.length ?? 0,
        itemBuilder: (context, index) {
          Overview overview = response[index];
          return Container(
            width: 135,
            height: 160,
            margin: const EdgeInsets.only(right: BaseDimens.NORMAL),
            child: Stack(
              children: <Widget>[
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(BaseDimens.SMALL),
                    ),
                    child: CachedNetworkImage(
                      imageUrl: overview.imageUrl ?? "",
                      width: 131,
                      height: 160,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Offstage(
                  offstage: index != 0,
                  child: Container(
                    margin: const EdgeInsets.only(top: BaseDimens.NORMAL),
                    padding: const EdgeInsets.symmetric(horizontal: BaseDimens.SMALL),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(BaseDimens.TINY)),
                      gradient: LinearGradient(colors: widget?.gradientColors ?? []),
                    ),
                    child: Text(
                      "榜单",
                      style: BaseTextStyle.white().normal,
                    ),
                  ),
                ),
                Positioned(
                  left: BaseDimens.SMALL,
                  bottom: 0,
                  child: Container(
                    width: 131,
                    height: 160,
                    alignment: Alignment.bottomCenter,
                    padding: const EdgeInsets.symmetric(horizontal: BaseDimens.NORMAL, vertical: BaseDimens.NORMAL),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: <Color>[
                          Colors.transparent,
                          Color(int.parse(overview.imageColor.substring(1), radix: 16))
                        ],
                      ),
                    ),
                    child: Text(
                      overview.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(height: 1, fontWeight: FontWeight.bold).merge(
                        BaseTextStyle.white().superBig,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
