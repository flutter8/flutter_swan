import 'package:flutter/material.dart';
import 'package:flutter_swan/base/styles/dimens.dart';
import 'package:flutter_swan/base/styles/text.dart';
import 'package:flutter_swan/Qunar/base/network/response/search.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/widget/suggest_widget_base.dart';

class SuggestNoDataWidget extends SuggestWidgetBase {
  SuggestNoDataWidget(Suggest suggest) : super(suggest);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: BaseDimens.BIG),
      child: Text(
        "木有您要找的地点",
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: suggestTitleStyle(const BaseTextStyle.grey()),
      ),
    );
  }
}
