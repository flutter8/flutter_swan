import 'package:flutter_swan/Qunar/base/network/response/search.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/backend.dart';
import 'package:flutter_swan/base/bloc/helper/bloc_event_state.dart';
import 'package:flutter_swan/Qunar/blocs/dest_search/dest_search_event.dart';
import 'package:flutter_swan/Qunar/blocs/dest_search/dest_search_state.dart';

class DestSearchBloc extends BlocEventStateBase<DestSearchBlocEvent, DestSearchBlocState> {
  DestSearchBloc() : super(initialState: DestSearchBlocState.initial());

  @override
  Stream<DestSearchBlocState> eventHandler(DestSearchBlocEvent event, DestSearchBlocState currentState) async* {
    print("eventHandler::stateType===========${currentState.stateType}");
    switch (currentState.stateType) {
      case StateType.initial:
        break;
      case StateType.inRecommend:
        yield DestSearchBlocState.inRecommend();
        break;
      case StateType.inSuggest:
        yield DestSearchBlocState.inSuggest(suggestList: SuggestList.empty());
    }

    // if (StateType.initial == currentState.stateType) if (event?.suggest?.isEmpty ?? true) {
    //   yield DestSearchBlocState.inRecommend();
    // } else {
    //   var response = Backend.requestApiSuggestDestFuture({
    //     "query": event?.suggest,
    //     "cityId": "299914",
    //     "cityName": "北京",
    //     "locateName": "北京",
    //     "type": 0,
    //     "vid": 80005900,
    //     "maxType": 39,
    //     "lcid": "299914",
    //     "latlng": null,
    //   }).then((data) {
    //     print("data::${data}");
    //   });

    //   yield DestSearchBlocState.inSuggest(suggestList: SuggestList.empty());
    // }
  }
}
