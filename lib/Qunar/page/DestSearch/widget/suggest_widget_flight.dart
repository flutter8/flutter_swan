import 'package:flutter/material.dart';
import 'package:flutter_swan/base/styles/dimens.dart';
import 'package:flutter_swan/base/styles/text.dart';
import 'package:flutter_swan/Qunar/base/network/response/search.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/widget/ASuggestWidget.dart';

class SuggestFlightWidget extends ASuggestWidget {
  SuggestFlightWidget(Suggest suggest, {query}) : super(suggest, query: query);

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
          ),
        ],
      ),
    );
  }
}
