import 'package:flutter_swan/Qunar/base/network/response/search.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/backend.dart';
import 'package:rxdart/rxdart.dart';

class SearchBloc {
  final Sink<Map> requestSuggestDest;

  final Sink<Map> requestRecommendHot;

  final Observable suggestList;

  final Observable hotList;

  factory SearchBloc() {
    final requestSuggestDest = PublishSubject<Map>();
    final requestRecommendHot = PublishSubject<Map>();

    return SearchBloc._(
      requestSuggestDest,
      requestRecommendHot,
      requestRecommendHot.flatMap((Map param) => request(param)),
      requestSuggestDest
          .distinct()
          .debounce(const Duration(milliseconds: 250))
          .flatMap((Map param) => Backend.requestApiSuggestDest(param)),
    );
  }

  SearchBloc._(
    this.requestSuggestDest,
    this.requestRecommendHot,
    this.hotList,
    this.suggestList,
  );

  void dispose() {
    requestSuggestDest?.close();
    requestRecommendHot?.close();
  }

  static Observable requestApiSearchHotQuery(param) {
    return Backend.requestApiSearchHotQuery(param);
  }

  static Observable request(param) {
    return Observable.zip2(
        Backend.requestApiRecommendProduct({
          "destId": "299914",
          "destName": "北京",
          "residenceId": "299914",
          "residenceName": "北京",
          "limit": 2,
        }),
        Backend.requestApiSearchHotQuery({
          "cityId": "299914",
        }),
        (product, hot) => {"product": product, "hot": hot});
  }
}
