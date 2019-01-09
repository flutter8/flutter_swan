import 'package:flutter/material.dart';

class QTextFont {
  static const double kFontSizeTiny = 8;

  static const double kFontSizeSmall = 10;

  static const double kFontSizeNormal = 12;

  static const double kFontSizeBig = 14;

  static const double kFontSizeSuperBig = 16;

  static const double kFontSizeHuge = 20;

  static const double kFontSizeColossal = 24;

  static const double kFontSizeGigantic = 32;

  static const double kFontSizeTremendous = 40;
}

class QTextStyle {
  final Color color;

  const QTextStyle(this.color);

  const QTextStyle.white() : this(Colors.white);

  const QTextStyle.grey() : this(Colors.grey);

  const QTextStyle.black() : this(Colors.black);

  const QTextStyle.blue() : this(Colors.blue);

  const QTextStyle.blueGrey() : this(Colors.blueGrey);

  TextStyle get tiny => TextStyle(fontSize: QTextFont.kFontSizeTiny, color: color);

  TextStyle get small => TextStyle(fontSize: QTextFont.kFontSizeSmall, color: color);

  TextStyle get normal => TextStyle(fontSize: QTextFont.kFontSizeNormal, color: color);

  TextStyle get big => TextStyle(fontSize: QTextFont.kFontSizeBig, color: color);

  TextStyle get superBig => TextStyle(fontSize: QTextFont.kFontSizeSuperBig, color: color);

  TextStyle get huge => TextStyle(fontSize: QTextFont.kFontSizeHuge, color: color);

  TextStyle get colossal => TextStyle(fontSize: QTextFont.kFontSizeColossal, color: color);

  TextStyle get gigantic => TextStyle(fontSize: QTextFont.kFontSizeGigantic, color: color);

  TextStyle get tremendous => TextStyle(fontSize: QTextFont.kFontSizeTremendous, color: color);
}
