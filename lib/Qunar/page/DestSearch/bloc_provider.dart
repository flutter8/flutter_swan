import 'package:flutter/widgets.dart';
import 'package:flutter_swan/Qunar/base/network/response/search.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/backend.dart';
import 'package:rxdart/rxdart.dart';

class DestSearchBloc {
  final PublishSubject<int> _recommendHotController = PublishSubject<int>();

  final _suggestController = PublishSubject<Map>();

  Observable<SearchRecommendHotList> _recommendHotResource;

  Observable<SuggestList> _suggestList;

  DestSearchBloc() {
    _recommendHotResource = _recommendHotController.where((cityId) => null != cityId).flatMap((cityId) {
      return Backend.requestApiSearchHotQuery({
        "cityId": cityId,
      });
    });

    _suggestList = _suggestController.flatMap((params) {
      if (null != params && null != params["query"]) {
        return Observable.just(SuggestList.empty());
      } else {
        return Backend.requestApiSuggestDest(params);
      }
    });
  }

  void requestWithCityId(int cityId) {
    _recommendHotController.add(cityId);
  }

  Observable<SearchRecommendHotList> get recommendHotResource => _recommendHotResource;

  Observable<SuggestList> get suggestList => _suggestList;

  void dispose() {
    _recommendHotController?.close();
    _suggestController?.close();
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

class DestSearchBlocProvider extends InheritedWidget {
  final DestSearchBloc destSearchBloc;

  DestSearchBlocProvider({
    Key key,
    DestSearchBloc bloc,
    Widget child,
  })  : destSearchBloc = bloc ?? DestSearchBloc(),
        super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static DestSearchBloc of(BuildContext context) => (context.inheritFromWidgetOfExactType(
        DestSearchBlocProvider,
      ) as DestSearchBlocProvider)
          .destSearchBloc;
}
