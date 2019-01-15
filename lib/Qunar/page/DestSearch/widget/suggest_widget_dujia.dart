import 'package:flutter/material.dart';
import 'package:flutter_swan/base/styles/dimens.dart';
import 'package:flutter_swan/base/styles/text.dart';
import 'package:flutter_swan/Qunar/base/network/response/search.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/widget/ASuggestWidget.dart';
import 'dart:math';

class SuggestDujiaWidget extends ASuggestWidget {
  SuggestDujiaWidget(Suggest suggest) : super(suggest);

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
                  child: Text(
                    suggest.name,
                    style: suggestTitleStyle(const BaseTextStyle.blue()),
                  ),
                ),
              ),
              buildSuggestRightArrow(suggest.type, suggest.subType)
            ],
          ),
          FractionallySizedBox(
            widthFactor: 1,
            child: Padding(
              padding: const EdgeInsets.only(top: BaseDimens.BIG),
              child: Wrap(
                spacing: 8,
                runSpacing: 0,
                children: List.generate(min(suggest?.extra?.length ?? 0, 4), (index) {
                  return ActionChip(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    padding: EdgeInsets.zero,
                    labelPadding: const EdgeInsets.symmetric(horizontal: BaseDimens.BIG, vertical: 0),
                    backgroundColor: Colors.grey[50],
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.grey[200],
                        width: 1,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(24),
                      ),
                    ),
                    label: Text(
                      suggest?.extra?.elementAt(index)?.name ?? "NNull",
                    ),
                    onPressed: () {},
                  );
                }),
              ),
            ),
          )
        ],
      ),
    );
  }
}
