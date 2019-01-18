import 'package:dio/dio.dart';
import 'package:flutter_swan/Qunar/base/constant/q_api.dart';
import 'package:flutter_swan/Qunar/base/network/commander.dart';
import 'package:flutter_swan/Qunar/base/network/response/search.dart';
import 'package:rxdart/rxdart.dart';

class Backend {
  static Observable<SuggestList> requestApiSuggestDest(params, {stringify = true}) {
    return Observable.just(params).asyncMap((param) async {
      NetRequestCommander commander = NetRequestCommander.request(null);
      Response response = await commander.post("api/${QAPI_Suggest.dest}", params, stringify: stringify);
      return response;
    }).map((response) => SuggestList.fromJson(response.data["data"]));
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
