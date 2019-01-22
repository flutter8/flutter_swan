import 'package:flutter_swan/Qunar/base/constant/q_api.dart';
import 'package:flutter_swan/Qunar/base/network/commander.dart';
import 'package:flutter_swan/Qunar/base/network/response/search.dart';

class Backend {
  static Future<SuggestResponse> requestApiSuggestDest(params, {stringify = true}) async {
    return Future.sync(() {
      NetRequestCommander commander = NetRequestCommander.request(null);
      return commander.post("api/${QAPI_Suggest.dest}", params, stringify: stringify);
    }).then((response) {
      return (null == response?.data) ? SuggestResponse.empty() : SuggestResponse.fromJson(response.data["data"]);
    });
  }

  static Future<SearchRecommendProductList> requestApiRecommendProduct(params, {stringify = true}) async {
    return Future.sync(() {
      NetRequestCommander commander = NetRequestCommander.request(null);
      return commander.post("api/${QAPI_Search.recommendProduct}", params, stringify: stringify);
    }).then((response) {
      return (null == response?.data)
          ? SearchRecommendProductList(0, [])
          : SearchRecommendProductList.fromJson(response.data["data"]);
    });
  }

  static Future<SearchRecommendHotList> requestApiSearchHotQuery(params, {stringify = true}) async {
    return Future.sync(() {
      NetRequestCommander commander = NetRequestCommander.request(null);
      return commander.post("api/${QAPI_Search.hotQuery}", params, stringify: stringify);
    }).then((response) {
      return (null == response?.data)
          ? SearchRecommendHotList(0, [])
          : SearchRecommendHotList.fromJson(response.data["data"]);
    });
  }
}
