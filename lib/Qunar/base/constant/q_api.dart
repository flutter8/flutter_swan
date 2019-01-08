mixin QApiBook {}

mixin QAPI_Search {
  static const String PATH = "proxy/search";

  static const String recommendProduct = "$PATH/recommendProduct";

  static const String hotQuery = "$PATH/hotQuery";
}

mixin QAPI_Suggest {
  static const String PATH = "proxy/suggest";

  static const String dest = '$PATH/dest';

  static const String destList = '$PATH/destList';
}

mixin QAPI_City {
  static const String PATH = "proxy/city";

  static const String locate = "$PATH/locate";
}
