import 'package:flutter/material.dart';
import 'package:flutter_swan/base/styles/text.dart';
import 'package:flutter_swan/Qunar/base/network/response/search.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/widget/suggest_widget_base.dart';

class SuggestLabelWidget extends SuggestWidgetBase {
  SuggestLabelWidget(Suggest suggest) : super(suggest);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
      child: Text(
        suggest.name,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: suggestTitleStyle(const BaseTextStyle.grey()),
      ),
    );
  }
}
