import "package:flutter/material.dart";
import 'package:flutter/cupertino.dart';
import 'backend.dart';

class QDestSearchListWidget extends StatelessWidget {
  @override
  StatelessElement createElement() {
    Backend.requestApiSuggestDest({
      "query": "北京",
      "cityId": "299914",
      "cityName": "北京",
      "locateName": "北京",
      "type": 0,
      "vid": 60005900,
      "maxType": 39,
      "lcid": "299914",
      "latlng": null,
    }).listen((data) {
      print(data);
    });
    return super.createElement();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green[200],
      ),
    );
  }
}
