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

  static Future<SearchProductResponse> requestApiRecommendProduct(params, {stringify = true}) async {
    return Future.sync(() {
      NetRequestCommander commander = NetRequestCommander.request(null);
      return commander.post("api/${QAPI_Search.recommendProduct}", params, stringify: stringify);
    }).then((response) {
      return (null == response?.data)
          ? SearchProductResponse(0, [])
          : SearchProductResponse.fromJson(response.data["data"]);
    });
  }

  static Future<SearchRecommendResponse> requestApiSearchHotQuery(params, {stringify = true}) async {
    return Future.sync(() {
      NetRequestCommander commander = NetRequestCommander.request(null);
      return commander.post("api/${QAPI_Search.hotQuery}", params, stringify: stringify);
    }).then((response) {
      return (null == response?.data)
          ? SearchRecommendResponse(0, [])
          : SearchRecommendResponse.fromJson(response.data["data"]);
    });
  }
}
