import 'package:flutter/material.dart';
import 'package:flutter_swan/base/styles/dimens.dart';
import 'package:flutter_swan/base/styles/text.dart';
import 'package:flutter_swan/Qunar/base/network/response/search.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/widget/ASuggestWidget.dart';
import 'dart:math';

class SuggestPoiTagWidget extends ASuggestWidget {
  SuggestPoiTagWidget(Suggest suggest) : super(suggest);

  @override
  Widget build(BuildContext context) {
    List<Widget> wExtraList = buildExtraWidgets(suggest?.extra);
    Widget wExtra = null;
    if ((wExtraList?.length ?? 0) > 0) {
      wExtra = FractionallySizedBox(
        widthFactor: 1,
        child: Padding(
          padding: const EdgeInsets.only(
            top: BaseDimens.BIG,
            left: BaseDimens.BIG - BaseDimens.SMALL,
            right: BaseDimens.BIG - BaseDimens.SMALL,
          ),
          child: Row(
            children: wExtraList,
          ),
        ),
      );
    } else {
      wExtra = Container();
    }

    return Container(
      padding: const EdgeInsets.symmetric(vertical: BaseDimens.BIG),
      constraints: BoxConstraints(
        minHeight: BaseDimens.GIGANTIC,
      ),
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(horizontal: BaseDimens.BIG),
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
                    child: Text(
                      suggest.name,
                      style: suggestTitleStyle(const BaseTextStyle.blue()),
                    ),
                  ),
                ),
                buildSuggestRightArrow(suggest.type, suggest.subType)
              ],
            ),
          ),
          wExtra
        ],
      ),
    );
  }

  List<Widget> buildExtraWidgets(List<Suggest> extra) {
    if ((extra?.length ?? 0) == 0) {
      return [];
    }

    extra.length = 4;
    return List.generate(extra.length, (index) {
      Suggest extraSuggest = extra.elementAt(index);
      if (null == extraSuggest) {
        return Expanded(
          child: Container(),
        );
      } else {
        return Expanded(
          child: InkWell(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: BaseDimens.SMALL),
              padding: const EdgeInsets.symmetric(vertical: BaseDimens.TINY, horizontal: BaseDimens.NORMAL),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey[200],
                  width: 1,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(24),
                ),
              ),
              child: Text(
                extra.elementAt(index)?.name ?? "",
                style: const BaseTextStyle.black().big,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        );
      }
    });
  }
}
