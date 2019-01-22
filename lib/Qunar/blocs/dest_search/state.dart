import 'package:flutter_swan/Qunar/base/network/response/search.dart';
import 'package:flutter_swan/base/bloc/helper/bloc_event_state.dart';

class DestSearchBlocState extends BlocState {
  bool _initial;

  String keyword;

  final bool _inRecommend;

  final SuggestResponse suggest;

  final SearchRecommendResponse recommend;

  final SearchProductResponse product;

  DestSearchBlocState(
    this._inRecommend, {
    this.keyword,
    this.suggest,
    this.recommend,
    this.product,
  }) : _initial = false;

  bool get hasInitial => _initial;

  bool get isRecommend => _inRecommend;

  void initialed() => _initial = true;

  factory DestSearchBlocState.inRecommend({SearchRecommendResponse recommend, SearchProductResponse product}) =>
      DestSearchBlocState(
        true,
        recommend: recommend,
        product: product,
      );

  factory DestSearchBlocState.inSuggest({String keyword, SuggestResponse response}) => DestSearchBlocState(
        false,
        keyword: keyword,
        suggest: response,
      );
}
