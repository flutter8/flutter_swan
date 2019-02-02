import 'package:flutter_swan/Qunar/base/constant/q_api.dart';
import 'package:flutter_swan/Qunar/base/network/commander.dart';
import 'package:flutter_swan/Qunar/base/network/response/city.dart';
import 'package:flutter_swan/Qunar/base/network/response/note.dart';

class Backend {
  static Future<City> requestApiCity(params, {stringify = true}) async {
    return Future.sync(() {
      NetRequestCommander commander = NetRequestCommander.request(null);
      return commander.post("api/${QAPI_City.CITY}", params, stringify: stringify);
    }).then((response) {
      return (null == response?.data) ? City.empty() : City.fromJson(response.data["data"]["city"]);
    });
  }

  static Future<ChannelResponse> requestApiChannelList(params, {stringify = true}) async {
    return Future.sync(() {
      NetRequestCommander commander = NetRequestCommander.request(null);
      return commander.post("api/${QAPI_Channel.list}", params, stringify: stringify);
    }).then((response) {
      return (null == response?.data) ? null : ChannelResponse.fromJson(response.data["data"]);
    });
  }

  static Future<OverviewResponse> requestApiBooSearch(params, {stringify = true}) async {
    return Future.sync(() {
      NetRequestCommander commander = NetRequestCommander.request(null);
      return commander.post("api/${QAPI_Book.SEARCH}", params, stringify: stringify);
    }).then((response) {
      return (null == response?.data) ? null : OverviewResponse.fromJson(response.data["data"]);
    });
  }
}
