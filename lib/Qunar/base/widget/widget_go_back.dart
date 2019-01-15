import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_swan/base/styles/text.dart';

class QBaseGoBackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      minSize: 0,
      padding: EdgeInsets.zero,
      child: Icon(
        IconData(0xe39f, fontFamily: "Qunar"),
        size: BaseTextFontSize.COLOSSAL,
        color: const BaseTextStyle.black().color,
      ),
      onPressed: () {},
    );
  }
}
