import 'package:flutter_swan/base/bloc/helper/bloc_event_state.dart';
import 'package:flutter_swan/Qunar/blocs/dest_search/event.dart';
import 'package:flutter_swan/Qunar/blocs/dest_search/dest_search_state.dart';

class DestSearchBloc extends BlocEventStateBase<DestSearchBlocEvent, DestSearchBlocState> {
  DestSearchBloc() : super(initialState: DestSearchBlocState.inRecommend());

  @override
  Stream<DestSearchBlocState> eventHandler(DestSearchBlocEvent event, DestSearchBlocState currentState) async* {
    switch (event.event) {
      case EventType.initial:
        yield DestSearchBlocState.inRecommend();
        break;
      case EventType.suggest:
        yield DestSearchBlocState.inSuggest();
        break;
    }

    // switch (currentState.stateType) {
    //   case StateType.initial:
    //     break;
    //   case StateType.inRecommend:
    //     yield DestSearchBlocState.inRecommend();
    //     break;
    //   case StateType.inSuggest:
    //     yield DestSearchBlocState.inSuggest(suggestList: SuggestList.empty());
    // }

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
