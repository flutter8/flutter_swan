import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_swan/Qunar/base/styles/q_text_styles.dart';

class QBaseGoBackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      minSize: 0,
      padding: EdgeInsets.zero,
      child: Icon(
        IconData(0xe39f, fontFamily: "Qunar"),
        size: QTextFont.kFontSizeColossal,
        color: QTextStyle.black().color,
      ),
      onPressed: () {},
    );
  }
}
