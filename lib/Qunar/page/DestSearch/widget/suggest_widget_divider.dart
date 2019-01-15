import 'package:flutter/material.dart';
import 'package:flutter_swan/Qunar/base/network/response/search.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/widget/ASuggestWidget.dart';

class SuggestDividerWidget extends ASuggestWidget {
  SuggestDividerWidget(Suggest suggest) : super(suggest);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      height: 8,
    );
  }
}
