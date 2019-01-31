import 'package:flutter/material.dart';
import 'package:flutter_swan/base/styles/dimens.dart';
import 'package:flutter_swan/base/styles/text.dart';
import 'package:flutter_swan/Qunar/base/network/response/search.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/widget/suggest_widget_base.dart';

class SuggestExperienceWidget extends SuggestWidgetBase {
  SuggestExperienceWidget(Suggest suggest, {query}) : super(suggest, query: query);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(BaseDimens.BIG),
      constraints: BoxConstraints(
        minHeight: BaseDimens.GIGANTIC,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Image.asset(
                findSuggestIconWithType(suggest?.type, suggest?.subType),
                width: 20,
                height: 20,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: BaseDimens.NORMAL),
                  child: Text.rich(
                    buildSuggestHighlightText(suggest?.name ?? "", src: query),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: suggestTitleStyle(const BaseTextStyle.black()),
                  ),
                ),
              )
            ],
          ),
          Offstage(
            offstage: suggest?.subTitle?.isEmpty ?? true,
            child: Padding(
              padding: const EdgeInsets.only(top: BaseDimens.NORMAL, left: 28),
              child: Text(
                suggest?.subTitle?.trim(),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: suggestSubTitleStyle(const BaseTextStyle.grey()),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
