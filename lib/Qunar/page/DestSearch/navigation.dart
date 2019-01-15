import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swan/Base/styles/dimens.dart';
import 'package:flutter_swan/base/styles/text.dart';

Widget navigationBar(TextEditingController controller) {
  return CupertinoNavigationBar(
    automaticallyImplyLeading: false,
    padding: const EdgeInsetsDirectional.only(),
    border: Border(),
    // leading: QBaseGoBackWidget(),
    middle: Container(
      height: 32,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: BaseDimens.NORMAL),
      decoration: BoxDecoration(
        color: CupertinoColors.inactiveGray.withOpacity(0.2),
        borderRadius: BorderRadius.all(
          Radius.circular(BaseDimens.SUPER_BIG),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.only(left: BaseDimens.SMALL),
        child: CupertinoTextField(
          prefix: Icon(
            IconData(0xf50c, fontFamily: "Qunar"),
            size: BaseTextFontSize.HUGE,
            color: const BaseTextStyle.grey().color,
          ),
          maxLength: 20,
          clearButtonMode: OverlayVisibilityMode.editing,
          controller: controller,
          decoration: BoxDecoration(),
          autofocus: true,
          placeholder: "想去哪儿？",
          style: const BaseTextStyle.black().big,
        ),
      ),
    ),
    trailing: CupertinoButton(
      child: Text(
        "取消",
        style: const BaseTextStyle.black().big,
      ),
      minSize: 64,
      padding: EdgeInsets.zero,
      onPressed: () {
        controller.value = TextEditingValue(text: "abcd");
      },
    ),
  );
}
