import 'package:flutter_swan/Qunar/base/network/response/search.dart';
import 'package:flutter_swan/base/bloc/helper/bloc_event_state.dart';

class DestSearchBlocState extends BlocState {
  final StateType stateType;

  final SuggestList suggestList;

  DestSearchBlocState(this.stateType, {this.suggestList});

  factory DestSearchBlocState.initial() => DestSearchBlocState(StateType.initial);

  factory DestSearchBlocState.inRecommend() => DestSearchBlocState(StateType.inRecommend);

  factory DestSearchBlocState.inSuggest({SuggestList suggestList}) =>
      DestSearchBlocState(StateType.inSuggest, suggestList: suggestList);
}

enum StateType { initial, inRecommend, inSuggest }
