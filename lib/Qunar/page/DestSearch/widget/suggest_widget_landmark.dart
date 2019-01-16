import 'package:flutter/material.dart';
import 'package:flutter_swan/base/styles/dimens.dart';
import 'package:flutter_swan/base/styles/text.dart';
import 'package:flutter_swan/Qunar/base/network/response/search.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/widget/ASuggestWidget.dart';

class SuggestLandmarkWidget extends ASuggestWidget {
  SuggestLandmarkWidget(Suggest suggest) : super(suggest);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(BaseDimens.BIG),
      constraints: BoxConstraints(
        minHeight: BaseDimens.GIGANTIC,
      ),
      child: Column(
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
                    buildSuggestHighlightText(suggest?.name ?? ""),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: suggestTitleStyle(const BaseTextStyle.black()),
                  ),
                ),
              )
            ],
          ),
          Opacity(
            opacity: suggest?.subTitle?.length?.toDouble() ?? 0,
            child: Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(top: BaseDimens.NORMAL, left: 28),
              child: Text.rich(
                buildSuggestHighlightText(suggest?.subTitle ?? ""),
                maxLines: 1,
                style: suggestSubTitleStyle(const BaseTextStyle.grey()),
              ),
            ),
          )
        ],
      ),
    );
  }
}
