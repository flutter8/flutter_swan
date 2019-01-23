import 'package:flutter_swan/base/bloc/helper/bloc_event_state.dart';
import 'package:flutter_swan/Qunar/base/network/response/search.dart';
import 'package:flutter_swan/Qunar/blocs/dest_search/event.dart';
import 'package:flutter_swan/Qunar/blocs/dest_search/state.dart';
import 'package:flutter_swan/Qunar/blocs/dest_search/backend.dart';

class DestSearchBloc extends BlocEventStateBase<DestSearchBlocEvent, DestSearchBlocState> {
  DestSearchBloc() : super(initialState: DestSearchBlocState());

  @override
  Stream<DestSearchBlocState> eventHandler(DestSearchBlocEvent event, DestSearchBlocState currentState) async* {
    print("eventHandler===========${event.event}, ${currentState.recommend}");
    switch (event.event) {
      case EventType.initial:
        currentState
          ..inRecommend = true
          ..initialed();

        var product = await Backend.requestApiRecommendProduct({
          "destId": 299914,
          "destName": "北京",
          "residenceId": 299914,
          "residenceName": "北京",
          "limit": 2,
        });

        yield currentState..product = product;

        var recommend = await Backend.requestApiSearchHotQuery({
          "cityId": 299914,
        });

        yield currentState..recommend = recommend;
        break;
      case EventType.recommend:
        yield currentState;
        break;
      case EventType.suggest:
        if (event?.suggest?.isEmpty ?? true) {
          yield currentState..inRecommend = true;
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

          yield currentState
            ..inRecommend = false
            ..keyword = event?.suggest
            ..suggest = response;
        }
    }
  }
}
