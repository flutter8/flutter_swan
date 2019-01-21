import 'package:flutter_swan/Qunar/base/network/response/search.dart';
import 'package:flutter_swan/base/bloc/helper/bloc_event_state.dart';

class DestSearchBlocState extends BlocState {
  final bool _inRecommend;

  final SuggestList suggestList;

  DestSearchBlocState(
    this._inRecommend, {
    this.suggestList,
  });

  bool get recommend => _inRecommend;

  factory DestSearchBlocState.inRecommend() => DestSearchBlocState(true);

  factory DestSearchBlocState.inSuggest({SuggestList suggestList}) => DestSearchBlocState(
        false,
        suggestList: suggestList,
      );
}
