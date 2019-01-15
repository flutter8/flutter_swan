import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_swan/Qunar/base/network/response/search.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/suggest_type.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/widget/suggest_widget_divider.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/widget/suggest_widget_dujia.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/widget/suggest_widget_experience.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/widget/suggest_widget_label.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/widget/suggest_widget_landmark.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/widget/suggest_widget_link.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/widget/suggest_widget_more.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/widget/suggest_widget_note.dart';
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
      case DestSuggestType.list_more_note:
      case DestSuggestType.list_more_smart:
      case DestSuggestType.list_more_poi:
      case DestSuggestType.list_more_experience:
        return SuggestMoreWidget(suggest);
      case DestSuggestType.loc_nation:
      case DestSuggestType.loc_province:
      case DestSuggestType.loc_city:
        return SuggestLandmarkWidget(suggest);
      case DestSuggestType.note:
        return SuggestNoteWidget(suggest);
      case DestSuggestType.smart:
        return SuggestSmartWidget(suggest);
      case DestSuggestType.experience:
        return SuggestExperienceWidget(suggest);
      case DestSuggestType.dujia_product:
        return SuggestDujiaWidget(suggest);
      case DestSuggestType.page_web_link:
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
      case DestSuggestType.list_more:
        return Container();
      case DestSuggestType.loc_nation:
      case DestSuggestType.loc_province:
      case DestSuggestType.loc_city:
        return buildSeparatorWidget();
      case DestSuggestType.poi_scenic:
      case DestSuggestType.poi_ent:
      case DestSuggestType.poi_hotel:
      case DestSuggestType.poi_food:
      case DestSuggestType.poi_shopping:
      case DestSuggestType.poi_transport:
      case DestSuggestType.note:
      case DestSuggestType.smart:
        return buildSeparatorWidget(indent: 44);
      case DestSuggestType.flight_ticket:
      case DestSuggestType.hotel_list:
      case DestSuggestType.hotel_brand:
        return buildSeparatorWidget();
      case DestSuggestType.near_poi_scenic:
      case DestSuggestType.near_poi_hotel:
      case DestSuggestType.near_poi_food:
      case DestSuggestType.near_poi_ent:
      case DestSuggestType.near_poi_shopping:
      case DestSuggestType.near_poi_transport:
      case DestSuggestType.page_discovery:
      case DestSuggestType.page_poi_create:
      case DestSuggestType.page_feedback:
      case DestSuggestType.page_call_center:
      case DestSuggestType.poi_list:
      case DestSuggestType.poi_list_food:
      case DestSuggestType.poi_list_ent:
      case DestSuggestType.poi_list_shopping:
      case DestSuggestType.flight_sells:
        return buildSeparatorWidget();
      case DestSuggestType.list_more_note:
      case DestSuggestType.list_more_smart:
      case DestSuggestType.list_more_poi:
      case DestSuggestType.list_more_experience:
      case DestSuggestType.dujia_product:
        return Container();
      case DestSuggestType.list_empty:
        return Container();
      case DestSuggestType.experience:
        return buildSeparatorWidget(indent: 44);
      case DestSuggestType.page_web_link:
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
