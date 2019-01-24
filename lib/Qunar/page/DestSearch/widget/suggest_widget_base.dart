import 'package:flutter/material.dart';
import 'package:flutter_swan/base/styles/colors.dart';
import 'package:flutter_swan/base/styles/text.dart';
import 'package:flutter_swan/Qunar/base/network/response/search.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/suggest_type.dart';
import 'package:flutter_swan/Qunar/ImageSet.dart';

abstract class SuggestWidgetBase extends StatelessWidget {
  static const highlight = const TextStyle(color: BaseColors.SUGGEST);

  final String query;

  final Suggest suggest;

  const SuggestWidgetBase(this.suggest, {this.query});

  TextStyle suggestTitleStyle(BaseTextStyle src) {
    return src.superBig;
  }

  TextStyle suggestSubTitleStyle(BaseTextStyle src) {
    return src.normal;
  }

  TextSpan buildSuggestHighlightText(String text, {String src = ""}) {
    if (src?.isEmpty ?? true) {
      return TextSpan(text: text);
    } else {
      TextSpan textSpan = TextSpan(children: []);
      text.splitMapJoin(
        RegExp("[$src]", caseSensitive: false),
        onMatch: (match) {
          textSpan.children.add(
            TextSpan(text: match.group(0), style: highlight),
          );
        },
        onNonMatch: (nonMatch) {
          textSpan.children.add(TextSpan(
            text: nonMatch,
          ));
        },
      );

      return textSpan;
    }
  }

  String findSuggestIconWithType(int type, int subType) {
    switch (type ?? 0) {
      case DestSuggestType.SUGGEST_LIST_HEADER:
      case DestSuggestType.SUGGEST_DIVIDER:
      case DestSuggestType.SUGGEST_MORE:
        return null;
      case DestSuggestType.SUGGEST_LOC_NATION:
      case DestSuggestType.SUGGEST_LOC_PROVINCE:
      case DestSuggestType.SUGGEST_LOC_CITY:
        return QImageSet().dest_search_ic_suggest_landmark;
      case DestSuggestType.SUGGEST_POI_SCENIC:
        return QImageSet().dest_search_ic_suggest_poi_scenic;
      case DestSuggestType.SUGGEST_POI_ENT:
        return QImageSet().dest_search_ic_suggest_poi_ent;
      case DestSuggestType.SUGGEST_POI_HOTEL:
        return QImageSet().dest_search_ic_suggest_poi_hotel;
      case DestSuggestType.SUGGEST_POI_FOOD:
        return QImageSet().dest_search_ic_suggest_poi_food;
      case DestSuggestType.SUGGEST_POI_SHOPPING:
        return QImageSet().dest_search_ic_suggest_poi_shopping;
      case DestSuggestType.SUGGEST_POI_TRANSPORT:
        return QImageSet().dest_search_ic_suggest_poi_transport;
      case DestSuggestType.SUGGEST_NOTE:
        return QImageSet().dest_search_ic_suggest_note;
      case DestSuggestType.SUGGEST_SMART:
        return QImageSet().dest_search_ic_suggest_smart;
      case DestSuggestType.SUGGEST_FLIGHT_TICKET:
        return QImageSet().dest_search_ic_suggest_flight;
      case DestSuggestType.SUGGEST_HOTEL_LIST:
        return QImageSet().dest_search_ic_suggest_poi_hotel;
      case DestSuggestType.SUGGEST_HOTEL_BRAND:
        return QImageSet().dest_search_ic_suggest_poi_hotel;
      case DestSuggestType.SUGGEST_POI_NEAR_SCENIC:
        return QImageSet().dest_search_ic_suggest_poi_scenic;
      case DestSuggestType.SUGGEST_POI_NEAR_HOTEL:
        return QImageSet().dest_search_ic_suggest_poi_hotel;
      case DestSuggestType.SUGGEST_POI_NEAR_FOOD:
        return QImageSet().dest_search_ic_suggest_poi_food;
      case DestSuggestType.SUGGEST_POI_NEAR_ENT:
        return QImageSet().dest_search_ic_suggest_poi_ent;
      case DestSuggestType.SUGGEST_POI_NEAR_SHOPPING:
        return QImageSet().dest_search_ic_suggest_poi_shopping;
      case DestSuggestType.SUGGEST_POI_NEAR_TRANSPORT:
        return QImageSet().dest_search_ic_suggest_poi_transport;
      case DestSuggestType.SUGGEST_DISCOVERY:
        return QImageSet().dest_search_ic_suggest_discovery;
      case DestSuggestType.SUGGEST_POI_CREATE:
        return QImageSet().dest_search_ic_suggest_poi_create;
      case DestSuggestType.SUGGEST_FEEDBACK:
        return QImageSet().dest_search_ic_suggest_feedback;
      case DestSuggestType.SUGGEST_CALL_CENTER:
        return QImageSet().dest_search_ic_suggest_call_center;
      case DestSuggestType.SUGGEST_POI_LIST:
        return QImageSet().dest_search_ic_suggest_poi_scenic;
      case DestSuggestType.SUGGEST_POI_LIST_FOOD:
        return QImageSet().dest_search_ic_suggest_poi_food;
      case DestSuggestType.SUGGEST_POI_LIST_ENT:
        return QImageSet().dest_search_ic_suggest_poi_ent;
      case DestSuggestType.SUGGEST_POI_LIST_SHOPPING:
        return QImageSet().dest_search_ic_suggest_poi_shopping;
      case DestSuggestType.SUGGEST_FLIGHT_SELLS:
        return QImageSet().dest_search_ic_suggest_flight;
      case DestSuggestType.SUGGEST_MORE_NOTE:
      case DestSuggestType.SUGGEST_MORE_SMART:
      case DestSuggestType.SUGGEST_MORE_POI:
      case DestSuggestType.SUGGEST_MORE_EXPERIENCE:
        return QImageSet().dest_search_ic_suggest_more;
      case DestSuggestType.SUGGEST_DUJIA_PRODUCT:
        return QImageSet().dest_search_ic_suggest_dujia;
      case DestSuggestType.SUGGEST_NO_DATA:
        return null;
      case DestSuggestType.SUGGEST_EXPERIENCE:
        return QImageSet().dest_search_ic_suggest_experience;
      case DestSuggestType.SUGGEST_WEB_PAGE:
        return findSuggestIconWithSubType(subType);
      default:
        return null;
    }
  }

  String findSuggestIconWithSubType(int subType) {
    switch (subType ?? 0) {
      case DestSuggestSubType.SUGGEST_SUB_DEFAULT:
        return QImageSet().dest_search_ic_suggest_link;
      case DestSuggestSubType.train_ticket:
        return QImageSet().dest_search_ic_suggest_train;
      case DestSuggestSubType.vacation:
        return QImageSet().dest_search_ic_suggest_dujia;
      case DestSuggestSubType.car:
        return QImageSet().dest_search_ic_suggest_car;
      case DestSuggestSubType.insurance:
        return QImageSet().dest_search_ic_suggest_insurance;
      case DestSuggestSubType.wifi:
        return QImageSet().dest_search_ic_suggest_wifi;
      case DestSuggestSubType.wharf:
        return QImageSet().dest_search_ic_suggest_wharf;
      case DestSuggestSubType.qa:
        return QImageSet().dest_search_ic_suggest_qa;
      case DestSuggestSubType.visa:
        return QImageSet().dest_search_ic_suggest_visa;
      case DestSuggestSubType.order:
        return QImageSet().dest_search_ic_suggest_order;
      case DestSuggestSubType.local:
        return QImageSet().dest_search_ic_suggest_local;
      case DestSuggestSubType.qa_more:
        return QImageSet().dest_search_ic_suggest_more;
      case DestSuggestSubType.car_ticket:
        return QImageSet().dest_search_ic_suggest_car;
      case DestSuggestSubType.EXPERIENCE_MORE:
        return QImageSet().dest_search_ic_suggest_more;
      default:
        return QImageSet().dest_search_ic_suggest_link;
    }
  }

  Widget buildSuggestRightArrow(int type, int subType) {
    switch (type ?? 0) {
      case DestSuggestType.SUGGEST_MORE:
      case DestSuggestType.SUGGEST_DUJIA_PRODUCT:
        return buildSuggestRightArrowWidget();
      case DestSuggestType.SUGGEST_WEB_PAGE:
        switch (subType ?? 0) {
          case DestSuggestSubType.qa_more:
          case DestSuggestSubType.EXPERIENCE_MORE:
            return buildSuggestRightArrowWidget();
        }
        return Container();
      default:
        return Container();
    }
  }

  Widget buildSuggestRightArrowWidget() {
    return Image.asset(
      QImageSet().dest_search_ic_suggest_arrow,
      width: 12,
      height: 12,
    );
  }
}
