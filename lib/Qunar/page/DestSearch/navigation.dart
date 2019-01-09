import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swan/Qunar/base/styles/q_gap.dart';
import 'package:flutter_swan/Qunar/base/styles/q_text_styles.dart';
import 'package:flutter_swan/Qunar/base/widget/widget_go_back.dart';

Widget navigationBar(TextEditingController controller) {
  return CupertinoNavigationBar(
    automaticallyImplyLeading: false,
    padding: const EdgeInsetsDirectional.only(),
    border: Border(),
    // leading: QBaseGoBackWidget(),
    middle: Container(
      height: 32,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: QGap.NORMAL),
      decoration: BoxDecoration(
        color: CupertinoColors.inactiveGray.withOpacity(0.2),
        borderRadius: BorderRadius.all(
          Radius.circular(QGap.SUPER_BIG),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.only(left: QGap.SMALL),
        child: CupertinoTextField(
          prefix: Icon(
            IconData(0xf50c, fontFamily: "Qunar"),
            size: QTextFont.kFontSizeHuge,
            color: QTextStyle.grey().color,
          ),
          maxLength: 20,
          clearButtonMode: OverlayVisibilityMode.editing,
          controller: controller,
          decoration: BoxDecoration(),
          autofocus: true,
          placeholder: "想去哪儿？",
          style: const QTextStyle.black().big,
          onSubmitted: (String value) {},
        ),
      ),
    ),
    trailing: CupertinoButton(
      child: Text(
        "取消",
        style: const QTextStyle.black().big,
      ),
      minSize: 64,
      padding: EdgeInsets.zero,
      onPressed: () {
        controller.value = TextEditingValue(text: "abcd");
      },
    ),
  );
}
