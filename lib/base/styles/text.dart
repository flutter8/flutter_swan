import 'package:flutter/material.dart';
import 'package:flutter_swan/base/styles/colors.dart';

mixin BaseTextFontSize {
  static const double TINY = 8;

  static const double SMALL = 10;

  static const double NORMAL = 12;

  static const double BIG = 14;

  static const double SUPER_BIG = 16;

  static const double HUGE = 20;

  static const double COLOSSAL = 24;

  static const double GIGANTIC = 32;

  static const double TREMENDOUS = 40;
}

class BaseTextStyle {
  final Color color;

  const BaseTextStyle._(this.color);

  const BaseTextStyle.white() : this._(BaseColors.WHITE);

  const BaseTextStyle.black() : this._(BaseColors.BLACK);

  const BaseTextStyle.grey() : this._(BaseColors.GREY);

  const BaseTextStyle.blue() : this._(BaseColors.BLUE);

  const BaseTextStyle.price() : this._(BaseColors.PRICE);

  const BaseTextStyle.suggest() : this._(BaseColors.SUGGEST);

  TextStyle get tiny => TextStyle(fontSize: BaseTextFontSize.TINY, color: color);

  TextStyle get small => TextStyle(fontSize: BaseTextFontSize.SMALL, color: color);

  TextStyle get normal => TextStyle(fontSize: BaseTextFontSize.NORMAL, color: color);

  TextStyle get big => TextStyle(fontSize: BaseTextFontSize.BIG, color: color);

  TextStyle get superBig => TextStyle(fontSize: BaseTextFontSize.SUPER_BIG, color: color);

  TextStyle get huge => TextStyle(fontSize: BaseTextFontSize.HUGE, color: color);

  TextStyle get colossal => TextStyle(fontSize: BaseTextFontSize.COLOSSAL, color: color);

  TextStyle get gigantic => TextStyle(fontSize: BaseTextFontSize.GIGANTIC, color: color);

  TextStyle get tremendous => TextStyle(fontSize: BaseTextFontSize.TREMENDOUS, color: color);
}
