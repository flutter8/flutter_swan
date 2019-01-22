import 'package:flutter_swan/base/bloc/helper/bloc_event_state.dart';
import 'package:flutter_swan/Qunar/base/network/response/search.dart';
import 'package:flutter_swan/Qunar/blocs/dest_search/event.dart';
import 'package:flutter_swan/Qunar/blocs/dest_search/state.dart';
import 'package:flutter_swan/Qunar/blocs/dest_search/backend.dart';

class DestSearchBloc extends BlocEventStateBase<DestSearchBlocEvent, DestSearchBlocState> {
  DestSearchBloc() : super(initialState: DestSearchBlocState.inRecommend());

  @override
  Stream<DestSearchBlocState> eventHandler(DestSearchBlocEvent event, DestSearchBlocState currentState) async* {
    print("eventHandler===========${event.event}, ${currentState.recommendHotResponse}");
    switch (event.event) {
      case EventType.initial:
        List request = await Future.wait([
          Backend.requestApiSearchHotQuery({
            "cityId": 299914,
          }),
          Backend.requestApiRecommendProduct({
            "destId": 299914,
            "destName": "北京",
            "residenceId": 299914,
            "residenceName": "北京",
            "limit": 2,
          })
        ]);

        yield DestSearchBlocState.inRecommend(
          hot: request?.elementAt(0),
          product: request?.elementAt(1),
        );
        break;
      case EventType.recommend:
        yield DestSearchBlocState.inRecommend();
        break;
      case EventType.suggest:
        if (event?.suggest?.isEmpty ?? true) {
          yield DestSearchBlocState.inRecommend();
        } else {
          SuggestResponse response = await Backend.requestApiSuggestDest({
            "query": event?.suggest,
            "cityId": "299914",
            "cityName": "北京",
            "locateName": "北京",
            "type": 0,
            "vid": 80005900,
            "maxType": 39,
            "lcid": "299914",
            "latlng": null,
          });

          yield DestSearchBlocState.inSuggest(
            keyword: event.suggest,
            response: response,
          );
        }
    }
  }
}
