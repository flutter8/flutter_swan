import 'package:amap_location/amap_location.dart';
import "package:flutter/material.dart";
import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_swan/Qunar/blocs/dest_search/bloc.dart';
import 'package:flutter_swan/Qunar/blocs/dest_search/event.dart';
import 'package:flutter_swan/Qunar/blocs/dest_search/dest_search_form_bloc.dart';
import 'package:flutter_swan/Qunar/blocs/dest_search/dest_search_state.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/recommend.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/suggest.dart';
import 'package:flutter_swan/base/bloc/helper/bloc_event_state.dart';
import 'package:flutter_swan/base/bloc/widget/bloc_state_builder.dart';
import 'package:flutter_swan/base/redux/state.dart';
import 'package:flutter_swan/Qunar/base/network/response/search.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/navigation.dart';
import 'package:rxdart/rxdart.dart';

class QDestSearchWidget extends StatefulWidget {
  _DestSearchWidgetState createState() => _DestSearchWidgetState();
}

class _DestSearchWidgetState extends State<QDestSearchWidget> {
  TextEditingController controller;

  SearchRecommendHotList recommendHotList;

  final DestSearchBloc pageBloc = DestSearchBloc();

  final DestSearchFormBloc bloc = DestSearchFormBloc();

  @override
  void initState() {
    super.initState();

    controller = TextEditingController();
    controller.addListener(() {
      bloc.onSuggestTextChanged(controller.text);
      pageBloc.emitEvent(DestSearchBlocEvent(
        EventType.suggest,
        suggest: controller.text,
      ));
    });
  }

  @override
  void dispose() {
    bloc?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocEventStateBuilder<DestSearchBlocState>(
      bloc: pageBloc,
      builder: (context1, state) {
        return Scaffold(
          appBar: navigationBar(controller),
          body: Container(
            color: Colors.white,
            child: IndexedStack(
              index: state.recommend ? 0 : 1,
              children: <Widget>[
                DestSearchRecommendWidget(null),
                StreamBuilder<SuggestList>(
                  stream: bloc.suggest,
                  builder: (context, snapshot) {
                    return DestSearchSuggestWidget(
                      query: controller.text,
                      suggestList: snapshot.data,
                    );
                  },
                )
              ],
            ),
          ),
        );
      },
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return StoreConnector<BaseReduxState, AMapLocation>(
  //     converter: (store) => store.state.location,
  //     builder: (context, location) {
  //       print("StoreConnector::${location.latitude}, ${location.longitude}, ${location.city}");
  //       return Scaffold(
  //         appBar: navigationBar(controller),
  //         body: Container(
  //           color: Colors.white,
  //           child: DestSearchBlocProvider(
  //             bloc: bloc,
  //             child: IndexedStack(
  //               index: 0,
  //               children: <Widget>[
  //                 StreamBuilder(
  //                   stream: bloc.recommendHotResource,
  //                   builder: (context, snapshot) {
  //                     return DestSearchRecommendWidget.node(snapshot.data, null);
  //                   },
  //                 )
  //               ],
  //             ),
  //           ),
  //           // child: StreamBuilder(
  //           //   stream: bloc.suggestList,
  //           //   builder: (BuildContext contex, AsyncSnapshot snapshot) {
  //           //     final data = snapshot.data;
  //           //     return IndexedStack(
  //           //       index: 0,
  //           //       children: <Widget>[
  //           //         // DestSearchRecommendWidget(data),
  //           //         SafeArea(
  //           //           child: DestSearchSuggestWidget(
  //           //             query: controller.text,
  //           //             suggestList: data,
  //           //           ),
  //           //         ),
  //           //       ],
  //           //     );
  //           //   },
  //           // ),
  //         ),
  //       );
  //     },
  //   );
  // }
}
