import "package:flutter/material.dart";
import 'package:flutter/cupertino.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/backend.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/navigation.dart';

class QDestSearchWidget extends StatelessWidget {
  TextEditingController controller;

  QDestSearchWidget() {
    controller = TextEditingController();
  }

  @override
  StatelessElement createElement() {
    // Backend.requestApiSuggestDest({
    //   "query": "北京",
    //   "cityId": "299914",
    //   "cityName": "北京",
    //   "locateName": "北京",
    //   "type": 0,
    //   "vid": 80005900,
    //   "maxType": 39,
    //   "lcid": "299914",
    //   "latlng": null,
    // }).listen((data) {
    //   print(data);
    // }).onDone(() {
    //   print(1234);
    // });
    return super.createElement();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: navigationBar(controller),
      body: Container(),
    );
  }
}
