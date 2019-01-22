import 'package:dio/dio.dart';
import 'package:flutter_swan/Qunar/base/constant/q_api.dart';
import 'package:flutter_swan/Qunar/base/network/commander.dart';
import 'package:flutter_swan/Qunar/base/network/response/search.dart';
import 'package:rxdart/rxdart.dart';

class Backend {
  static Observable<SuggestResponse> requestApiSuggestDest(params, {stringify = true}) {
    return Observable.just(params).asyncMap((param) async {
      return requestApiSuggestDestCommander(param, stringify: stringify);
    }).map((response) => SuggestResponse.fromJson(response.data["data"]));
  }

  static Future requestApiSuggestDestFuture(params, {stringify = true}) async {
    return Future.sync(() => requestApiSuggestDestCommander(params, stringify: stringify)).then((response) {
      return (null == response?.data) ? SuggestResponse.empty() : SuggestResponse.fromJson(response.data["data"]);
    });
  }

  static Future requestApiSuggestDestCommander(params, {stringify = true}) async {
    NetRequestCommander commander = NetRequestCommander.request(null);
    return commander.post("api/${QAPI_Suggest.dest}", params, stringify: stringify);
  }

  static Observable requestApiRecommendProduct(params, {stringify = true}) {
    return Observable.just(params).asyncMap((param) async {
      NetRequestCommander commander = NetRequestCommander.request(null);
      Response response = await commander.post("api/${QAPI_Search.recommendProduct}", params, stringify: stringify);
      return response;
    }).map((response) => SearchRecommendProductList.fromJson(response.data["data"]));
  }

  static Observable<SearchRecommendHotList> requestApiSearchHotQuery(params, {stringify = true}) {
    return Observable.just(params).asyncMap((param) async {
      NetRequestCommander commander = NetRequestCommander.request(null);
      Response response = await commander.post("api/${QAPI_Search.hotQuery}", params, stringify: stringify);
      return response;
    }).map((response) => SearchRecommendHotList.fromJson(response.data["data"]));
  }
}
