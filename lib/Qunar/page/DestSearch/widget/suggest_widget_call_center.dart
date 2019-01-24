import 'package:flutter/material.dart';
import 'package:flutter_swan/base/styles/dimens.dart';
import 'package:flutter_swan/base/styles/text.dart';
import 'package:flutter_swan/Qunar/base/network/response/search.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/widget/suggest_widget_base.dart';

class SuggestCallCenterWidget extends SuggestWidgetBase {
  SuggestCallCenterWidget(Suggest suggest) : super(suggest);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: BaseDimens.BIG),
      height: BaseDimens.GIGANTIC,
      child: Row(
        children: <Widget>[
          Image.asset(
            findSuggestIconWithType(suggest?.type, suggest?.subType),
            width: 20,
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: BaseDimens.NORMAL),
            child: Text(
              suggest.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: suggestTitleStyle(const BaseTextStyle.blue()),
            ),
          ),
          Text(
            suggest.queryName,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: suggestSubTitleStyle(const BaseTextStyle.grey()),
          ),
        ],
      ),
    );
  }
}
