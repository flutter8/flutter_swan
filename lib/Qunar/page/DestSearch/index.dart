import "package:flutter/material.dart";
import 'package:flutter/cupertino.dart';
import 'package:flutter_swan/Qunar/base/network/response/search.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/backend.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/bloc.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/navigation.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/recommend.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/suggest.dart';
import 'package:rxdart/rxdart.dart';

class QDestSearchWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => QDestSearchWidgetState();
}

class QDestSearchWidgetState extends State<QDestSearchWidget> {
  TextEditingController controller;

  SearchRecommendHotList recommendHotList;

  SearchBloc bloc;

  QDestSearchWidgetState() {
    controller = TextEditingController();
    controller.addListener(() {
      print(controller.text);
      bloc.requestSuggestDest.add({
        "query": controller.text,
        "cityId": "299914",
        "cityName": "北京",
        "locateName": "北京",
        "type": 0,
        "vid": 80005900,
        "maxType": 39,
        "lcid": "299914",
        "latlng": null,
      });
    });

    bloc = SearchBloc();

    Observable.timer(2, Duration(seconds: 2)).listen((data) {
      bloc.requestRecommendHot.add({
        "cityId": "299914",
      });
    });
  }

  // @override
  // StatelessElement createElement() {
  // Observable.timer(0, Duration(seconds: 1)).flatMap((_) {
  //   return Backend.requestApiSuggestDest({
  //     "query": "北京",
  //     "cityId": "299914",
  //     "cityName": "北京",
  //     "locateName": "北京",
  //     "type": 0,
  //     "vid": 80005900,
  //     "maxType": 39,
  //     "lcid": "299914",
  //     "latlng": null,
  //   });
  // }).listen((data) {
  //   print(data);
  // });

  // return super.createElement();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: navigationBar(controller),
      body: Container(
        color: Colors.white,
        child: StreamBuilder(
          stream: bloc.suggestList,
          builder: (BuildContext contex, AsyncSnapshot snapshot) {
            final data = snapshot.data;
            print(data);
            return IndexedStack(
              index: 0,
              children: <Widget>[
                // DestSearchRecommendWidget(data),
                DestSearchSuggestWidget(
                  suggestList: data,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
