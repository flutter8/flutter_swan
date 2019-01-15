import 'package:flutter/material.dart';
import 'package:flutter_swan/base/styles/text.dart';
import 'package:flutter_swan/Qunar/base/network/response/search.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/suggest_type.dart';
import 'package:flutter_swan/Qunar/ImageSet.dart';

abstract class ASuggestWidget extends StatelessWidget {
  final Suggest suggest;

  const ASuggestWidget(this.suggest);

  TextSpan buildSuggestHighlightText(String text, {String src = "北小卡"}) {
    TextSpan textSpan = TextSpan(children: []);
    text.splitMapJoin(
      RegExp("[$src]"),
      onMatch: (match) {
        print("onMatch::${match.group(0)}");
        textSpan.children.add(
          TextSpan(
            text: match.group(0),
            style: const BaseTextStyle.suggest().big,
          ),
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

  String findSuggestIconWithType(int type, int subType) {
    switch (type ?? 0) {
      case DestSuggestType.SUGGEST_LIST_HEADER:
      case DestSuggestType.SUGGEST_DIVIDER:
      case DestSuggestType.list_more:
        return null;
      case DestSuggestType.loc_nation:
      case DestSuggestType.loc_province:
      case DestSuggestType.loc_city:
        return QImageSet().dest_search_ic_suggest_landmark;
      case DestSuggestType.poi_scenic:
        return QImageSet().dest_search_ic_suggest_poi_scenic;
      case DestSuggestType.poi_ent:
        return QImageSet().dest_search_ic_suggest_poi_ent;
      case DestSuggestType.poi_hotel:
        return QImageSet().dest_search_ic_suggest_poi_hotel;
      case DestSuggestType.poi_food:
        return QImageSet().dest_search_ic_suggest_poi_food;
      case DestSuggestType.poi_shopping:
        return QImageSet().dest_search_ic_suggest_poi_shopping;
      case DestSuggestType.poi_transport:
        return QImageSet().dest_search_ic_suggest_poi_transport;
      case DestSuggestType.note:
        return QImageSet().dest_search_ic_suggest_note;
      case DestSuggestType.smart:
        return QImageSet().dest_search_ic_suggest_smart;
      case DestSuggestType.flight_ticket:
        return QImageSet().dest_search_ic_suggest_flight;
      case DestSuggestType.hotel_list:
        return QImageSet().dest_search_ic_suggest_poi_hotel;
      case DestSuggestType.hotel_brand:
        return QImageSet().dest_search_ic_suggest_poi_hotel;
      case DestSuggestType.near_poi_scenic:
        return QImageSet().dest_search_ic_suggest_poi_scenic;
      case DestSuggestType.near_poi_hotel:
        return QImageSet().dest_search_ic_suggest_poi_hotel;
      case DestSuggestType.near_poi_food:
        return QImageSet().dest_search_ic_suggest_poi_food;
      case DestSuggestType.near_poi_ent:
        return QImageSet().dest_search_ic_suggest_poi_ent;
      case DestSuggestType.near_poi_shopping:
        return QImageSet().dest_search_ic_suggest_poi_shopping;
      case DestSuggestType.near_poi_transport:
        return QImageSet().dest_search_ic_suggest_poi_transport;
      case DestSuggestType.page_discovery:
        return QImageSet().dest_search_ic_suggest_discovery;
      case DestSuggestType.page_poi_create:
        return QImageSet().dest_search_ic_suggest_poi_create;
      case DestSuggestType.page_feedback:
        return QImageSet().dest_search_ic_suggest_feedback;
      case DestSuggestType.page_call_center:
        return QImageSet().dest_search_ic_suggest_call_center;
      case DestSuggestType.poi_list:
        return QImageSet().dest_search_ic_suggest_poi_scenic;
      case DestSuggestType.poi_list_food:
        return QImageSet().dest_search_ic_suggest_poi_food;
      case DestSuggestType.poi_list_ent:
        return QImageSet().dest_search_ic_suggest_poi_ent;
      case DestSuggestType.poi_list_shopping:
        return QImageSet().dest_search_ic_suggest_poi_shopping;
      case DestSuggestType.flight_sells:
        return QImageSet().dest_search_ic_suggest_flight;
      case DestSuggestType.list_more_note:
      case DestSuggestType.list_more_smart:
      case DestSuggestType.list_more_poi:
      case DestSuggestType.list_more_experience:
        return QImageSet().dest_search_ic_suggest_more;
      case DestSuggestType.dujia_product:
        return QImageSet().dest_search_ic_suggest_dujia;
      case DestSuggestType.list_empty:
        return null;
      case DestSuggestType.experience:
        return QImageSet().dest_search_ic_suggest_experience;
      case DestSuggestType.page_web_link:
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
      default:
        return QImageSet().dest_search_ic_suggest_link;
    }
  }

  Widget buildSuggestRightArrow(int type, int subType) {
    switch (type ?? 0) {
      case DestSuggestType.list_more:
      case DestSuggestType.dujia_product:
        return buildSuggestRightArrowWidget();
      case DestSuggestType.page_web_link:
        return buildSuggestRightArrowWithSubType(subType);
      default:
        return Container();
    }
  }

  Widget buildSuggestRightArrowWithSubType(int subType) {
    switch (subType ?? 0) {
      case DestSuggestSubType.qa_more:
        return buildSuggestRightArrowWidget();
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
