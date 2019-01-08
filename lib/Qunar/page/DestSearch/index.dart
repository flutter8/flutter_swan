import "package:flutter/material.dart";
import 'package:flutter/cupertino.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/backend.dart';

class QDestSearchWidget extends StatelessWidget {
  @override
  StatelessElement createElement() {
    Backend.requestApiSuggestDest({
      "query": "北京",
      "cityId": "299914",
      "cityName": "北京",
      "locateName": "北京",
      "type": 0,
      "vid": 80005900,
      "maxType": 39,
      "lcid": "299914",
      "latlng": null,
    }).listen((data) {
      print(data);
    }).onDone(() {
      print(1234);
    });
    return super.createElement();
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController(text: "124");

    return Scaffold(
      appBar: CupertinoNavigationBar(
        automaticallyImplyLeading: false,
        padding: const EdgeInsetsDirectional.only(),
        border: Border(),
        middle: Container(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.2),
            borderRadius: BorderRadius.all(Radius.circular(24)),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Icon(
                IconData(0xf50c, fontFamily: "Qunar"),
                size: 20,
                color: Colors.grey[400],
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(left: 8),
                  child: TextField(
                    controller: _controller,
                    autofocus: true,
                    decoration: new InputDecoration.collapsed(
                      hintText: "想去哪儿？",
                      hintStyle: TextStyle(
                        color: Colors.grey[400],
                      ),
                    ),
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                    onSubmitted: (String value) {},
                  ),
                ),
              )
            ],
          ),
        ),
        trailing: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            "取消",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black87,
            ),
          ),
        ),
      ),
      body: Container(),
    );
  }
}
