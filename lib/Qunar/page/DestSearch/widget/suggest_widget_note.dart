import 'package:flutter/material.dart';
import 'package:flutter_swan/base/styles/colors.dart';
import 'package:flutter_swan/base/styles/dimens.dart';
import 'package:flutter_swan/base/styles/text.dart';
import 'package:flutter_swan/Qunar/base/network/response/search.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/widget/ASuggestWidget.dart';

class SuggestNoteWidget extends ASuggestWidget {
  SuggestNoteWidget(Suggest suggest, {query}) : super(suggest, query: query);

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
                    buildSuggestHighlightText(suggest?.name ?? "", src: query),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: suggestTitleStyle(const BaseTextStyle.black()),
                  ),
                ),
              )
            ],
          ),
          Container(
            padding: const EdgeInsets.only(top: BaseDimens.NORMAL, left: 28),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    suggest.subTitle,
                    maxLines: 2,
                    style: suggestSubTitleStyle(const BaseTextStyle.grey()),
                  ),
                ),
                Icon(
                  IconData(0xe0d1, fontFamily: "Qunar"),
                  size: BaseTextFontSize.BIG,
                  color: BaseColors.GREY,
                ),
                Text(
                  suggest.count?.toString() ?? "",
                  maxLines: 1,
                  style: suggestSubTitleStyle(const BaseTextStyle.grey()),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
