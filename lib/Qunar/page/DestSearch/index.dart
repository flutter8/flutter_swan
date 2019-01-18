import 'package:amap_location/amap_location.dart';
import "package:flutter/material.dart";
import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/recommend.dart';
import 'package:flutter_swan/base/redux/state.dart';
import 'package:flutter_swan/Qunar/base/network/response/search.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/bloc.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/bloc_provider.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/navigation.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/suggest.dart';
import 'package:rxdart/rxdart.dart';

class QDestSearchWidget extends StatelessWidget {
  TextEditingController controller;

  SearchRecommendHotList recommendHotList;

  DestSearchBloc bloc;

  QDestSearchWidget({Key key}) : super(key: key) {
    bloc = DestSearchBloc();
    Observable.timer(2, Duration(seconds: 2)).listen((data) {
      bloc.requestWithCityId(299914);
    });

    controller = TextEditingController();
    controller.addListener(() {
      // bloc.requestSuggestDest.add({
      //   "query": controller.text,
      //   "cityId": "299914",
      //   "cityName": "北京",
      //   "locateName": "北京",
      //   "type": 0,
      //   "vid": 80005900,
      //   "maxType": 39,
      //   "lcid": "299914",
      //   "latlng": null,
      // });
    });

    // bloc = SearchBloc();

    // Observable.timer(2, Duration(seconds: 2)).listen((data) {
    //   bloc.requestRecommendHot.add({
    //     "cityId": "299914",
    //   });
    // });
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<BaseReduxState, AMapLocation>(
      converter: (store) => store.state.location,
      builder: (context, location) {
        print("StoreConnector::${location.latitude}, ${location.longitude}, ${location.city}");
        return Scaffold(
          appBar: navigationBar(controller),
          body: Container(
            color: Colors.white,
            child: DestSearchBlocProvider(
              bloc: bloc,
              child: IndexedStack(
                index: 0,
                children: <Widget>[
                  StreamBuilder(
                    stream: bloc.recommendHotResource,
                    builder: (context, snapshot) {
                      return DestSearchRecommendWidget.node(snapshot.data, null);
                    },
                  )
                ],
              ),
            ),
            // child: StreamBuilder(
            //   stream: bloc.suggestList,
            //   builder: (BuildContext contex, AsyncSnapshot snapshot) {
            //     final data = snapshot.data;
            //     return IndexedStack(
            //       index: 0,
            //       children: <Widget>[
            //         // DestSearchRecommendWidget(data),
            //         SafeArea(
            //           child: DestSearchSuggestWidget(
            //             query: controller.text,
            //             suggestList: data,
            //           ),
            //         ),
            //       ],
            //     );
            //   },
            // ),
          ),
        );
      },
    );
  }
}
