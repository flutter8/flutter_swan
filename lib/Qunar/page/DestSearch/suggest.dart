import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_swan/Qunar/base/network/response/search.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/suggest_type.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/widget/suggest_widget_call_center.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/widget/suggest_widget_divider.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/widget/suggest_widget_dujia.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/widget/suggest_widget_experience.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/widget/suggest_widget_feedback.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/widget/suggest_widget_label.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/widget/suggest_widget_landmark.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/widget/suggest_widget_link.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/widget/suggest_widget_more.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/widget/suggest_widget_note.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/widget/suggest_widget_poi.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/widget/suggest_widget_poi_tag.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/widget/suggest_widget_smart.dart';

class DestSearchSuggestWidget extends StatelessWidget {
  final SuggestList suggestList;

  DestSearchSuggestWidget({
    Key key,
    this.suggestList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        itemCount: suggestList?.list?.length ?? 0,
        itemBuilder: (BuildContext context, index) {
          Suggest suggest = suggestList?.list?.elementAt(index);
          return buildSuggetItemAdapterWidget(context, suggest);
        },
        separatorBuilder: (BuildContext context, int index) {
          Suggest suggest = suggestList?.list?.elementAt(index);
          return buildSuggetItemAdapterSeparator(context, suggest);
        },
      ),
    );
  }

  Widget buildSuggetItemAdapterWidget(BuildContext context, Suggest suggest) {
    switch (suggest?.type ?? -1) {
      case DestSuggestType.SUGGEST_LIST_HEADER:
        return SuggestLabelWidget(suggest);
      case DestSuggestType.SUGGEST_DIVIDER:
        return SuggestDividerWidget(suggest);
      case DestSuggestType.SUGGEST_LOC_NATION:
      case DestSuggestType.SUGGEST_LOC_PROVINCE:
      case DestSuggestType.SUGGEST_LOC_CITY:
        return SuggestLandmarkWidget(suggest);
      case DestSuggestType.SUGGEST_POI_SCENIC:
      case DestSuggestType.SUGGEST_POI_ENT:
      case DestSuggestType.SUGGEST_POI_HOTEL:
      case DestSuggestType.SUGGEST_POI_FOOD:
      case DestSuggestType.SUGGEST_POI_SHOPPING:
      case DestSuggestType.SUGGEST_POI_TRANSPORT:
        return SuggestPoiWidget(suggest);
      case DestSuggestType.SUGGEST_MORE_NOTE:
      case DestSuggestType.SUGGEST_MORE_SMART:
      case DestSuggestType.SUGGEST_MORE_POI:
      case DestSuggestType.SUGGEST_MORE_EXPERIENCE:
        return SuggestMoreWidget(suggest);
      case DestSuggestType.SUGGEST_NOTE:
        return SuggestNoteWidget(suggest);
      case DestSuggestType.SUGGEST_SMART:
        return SuggestSmartWidget(suggest);
      case DestSuggestType.SUGGEST_HOTEL_LIST:
        return SuggestPoiTagWidget(suggest);
      case DestSuggestType.SUGGEST_FEEDBACK:
        return SuggestFeedbackWidget(suggest);
      case DestSuggestType.SUGGEST_CALL_CENTER:
        return SuggestCallCenterWidget(suggest);
      case DestSuggestType.SUGGEST_POI_LIST:
      case DestSuggestType.SUGGEST_POI_LIST_FOOD:
      case DestSuggestType.SUGGEST_POI_LIST_ENT:
      case DestSuggestType.SUGGEST_POI_LIST_SHOPPING:
        return SuggestPoiTagWidget(suggest);
      case DestSuggestType.SUGGEST_EXPERIENCE:
        return SuggestExperienceWidget(suggest);
      case DestSuggestType.SUGGEST_DUJIA_PRODUCT:
        return SuggestDujiaWidget(suggest);
      case DestSuggestType.SUGGEST_WEB_PAGE:
        return SuggestLinkWidget(suggest);
      default:
        return ListTile(
          title: Text(suggest?.name ?? "nnnull"),
        );
    }
  }

  Widget buildSuggetItemAdapterSeparator(BuildContext context, Suggest suggest) {
    switch (suggest?.type ?? -1) {
      case DestSuggestType.SUGGEST_LIST_HEADER:
      case DestSuggestType.SUGGEST_DIVIDER:
      case DestSuggestType.SUGGEST_MORE:
        return Container();
      case DestSuggestType.SUGGEST_LOC_NATION:
      case DestSuggestType.SUGGEST_LOC_PROVINCE:
      case DestSuggestType.SUGGEST_LOC_CITY:
        return buildSeparatorWidget();
      case DestSuggestType.SUGGEST_POI_SCENIC:
      case DestSuggestType.SUGGEST_POI_ENT:
      case DestSuggestType.SUGGEST_POI_HOTEL:
      case DestSuggestType.SUGGEST_POI_FOOD:
      case DestSuggestType.SUGGEST_POI_SHOPPING:
      case DestSuggestType.SUGGEST_POI_TRANSPORT:
      case DestSuggestType.SUGGEST_NOTE:
      case DestSuggestType.SUGGEST_SMART:
        return buildSeparatorWidget(indent: 44);
      case DestSuggestType.SUGGEST_FLIGHT_TICKET:
      case DestSuggestType.SUGGEST_HOTEL_LIST:
      case DestSuggestType.SUGGEST_HOTEL_BRAND:
        return buildSeparatorWidget();
      case DestSuggestType.SUGGEST_POI_NEAR_SCENIC:
      case DestSuggestType.SUGGEST_POI_NEAR_HOTEL:
      case DestSuggestType.SUGGEST_POI_NEAR_FOOD:
      case DestSuggestType.SUGGEST_POI_NEAR_ENT:
      case DestSuggestType.SUGGEST_POI_NEAR_SHOPPING:
      case DestSuggestType.SUGGEST_POI_NEAR_TRANSPORT:
      case DestSuggestType.SUGGEST_DISCOVERY:
      case DestSuggestType.SUGGEST_POI_CREATE:
      case DestSuggestType.SUGGEST_FEEDBACK:
      case DestSuggestType.SUGGEST_CALL_CENTER:
      case DestSuggestType.SUGGEST_POI_LIST:
      case DestSuggestType.SUGGEST_POI_LIST_FOOD:
      case DestSuggestType.SUGGEST_POI_LIST_ENT:
      case DestSuggestType.SUGGEST_POI_LIST_SHOPPING:
      case DestSuggestType.SUGGEST_FLIGHT_SELLS:
        return buildSeparatorWidget();
      case DestSuggestType.SUGGEST_MORE_NOTE:
      case DestSuggestType.SUGGEST_MORE_SMART:
      case DestSuggestType.SUGGEST_MORE_POI:
      case DestSuggestType.SUGGEST_MORE_EXPERIENCE:
      case DestSuggestType.SUGGEST_DUJIA_PRODUCT:
        return Container();
      case DestSuggestType.SUGGEST_NO_DATA:
        return Container();
      case DestSuggestType.SUGGEST_EXPERIENCE:
        return buildSeparatorWidget(indent: 44);
      case DestSuggestType.SUGGEST_WEB_PAGE:
        return buildSeparatorWidget(indent: 44);
      default:
        return buildSeparatorWidget();
    }
  }

  Widget buildSeparatorWidget({double indent}) {
    return Divider(
      height: 0,
      indent: indent ?? 0,
      color: Color(0xFFEEEEEE),
    );
  }
}
