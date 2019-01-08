import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/index.dart';

class QunarHomeIndex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text("middle"),
        leading: Icon(
          IconData(0xe39f, fontFamily: "Qunar"),
          size: 28,
          color: Colors.black,
        ),
      ),
      body: Container(
        color: Colors.red[100],
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("DestSearch"),
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) {
                    return QDestSearchWidget();
                  }),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
