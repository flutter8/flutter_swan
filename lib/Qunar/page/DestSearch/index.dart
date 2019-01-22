import "package:flutter/material.dart";
import 'package:flutter/cupertino.dart';
import 'package:flutter_swan/base/bloc/widget/bloc_state_builder.dart';
import 'package:flutter_swan/Qunar/base/network/response/search.dart';
import 'package:flutter_swan/Qunar/blocs/dest_search/bloc.dart';
import 'package:flutter_swan/Qunar/blocs/dest_search/event.dart';
import 'package:flutter_swan/Qunar/blocs/dest_search/state.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/recommend.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/suggest.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/navigation.dart';

class QDestSearchWidget extends StatefulWidget {
  _DestSearchWidgetState createState() => _DestSearchWidgetState();
}

class _DestSearchWidgetState extends State<QDestSearchWidget> {
  TextEditingController controller;

  SearchRecommendHotList recommendHotList;

  Function(String) onTextChanged;

  final DestSearchBloc pageBloc = DestSearchBloc();

  @override
  void initState() {
    super.initState();

    pageBloc.emitEvent(DestSearchBlocEvent(EventType.initial));

    onTextChanged = (String text) {
      pageBloc.emitEvent(DestSearchBlocEvent(
        EventType.suggest,
        suggest: text,
      ));
    };
  }

  @override
  void dispose() {
    pageBloc?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocEventStateBuilder<DestSearchBlocState>(
      bloc: pageBloc,
      builder: (context, state) {
        return Scaffold(
          appBar: navigationBar(onTextChanged),
          body: Container(
            color: Colors.white,
            child: IndexedStack(
              index: state.recommend ? 0 : 1,
              children: <Widget>[
                DestSearchRecommendWidget(
                  recommendHotList: state.recommendHotResponse,
                  recommendProductList: state.recommendProductResponse,
                ),
                DestSearchSuggestWidget(
                  query: state.keyword,
                  response: state.suggestResponse,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
