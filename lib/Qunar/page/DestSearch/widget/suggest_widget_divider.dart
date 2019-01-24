import 'package:flutter/material.dart';
import 'package:flutter_swan/Qunar/base/network/response/search.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/widget/suggest_widget_base.dart';

class SuggestDividerWidget extends SuggestWidgetBase {
  SuggestDividerWidget(Suggest suggest) : super(suggest);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      height: 8,
    );
  }
}
