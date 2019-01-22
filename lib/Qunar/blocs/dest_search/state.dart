import 'package:flutter_swan/Qunar/base/network/response/search.dart';
import 'package:flutter_swan/base/bloc/helper/bloc_event_state.dart';

class DestSearchBlocState extends BlocState {
  bool _initial;

  String keyword;

  final bool _inRecommend;

  final SuggestResponse suggestResponse;

  final SearchRecommendHotList recommendHotResponse;

  final SearchRecommendProductList recommendProductResponse;

  DestSearchBlocState(
    this._inRecommend, {
    this.keyword,
    this.suggestResponse,
    this.recommendHotResponse,
    this.recommendProductResponse,
  }) : _initial = false;

  bool get hasInitial => _initial;

  bool get recommend => _inRecommend;

  void initialed() => _initial = true;

  factory DestSearchBlocState.inRecommend({SearchRecommendHotList hot, SearchRecommendProductList product}) =>
      DestSearchBlocState(
        true,
        recommendHotResponse: hot,
        recommendProductResponse: product,
      );

  factory DestSearchBlocState.inSuggest({String keyword, SuggestResponse response}) => DestSearchBlocState(
        false,
        keyword: keyword,
        suggestResponse: response,
      );
}
