import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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
        color: Colors.green[100],
      ),
    );
  }
}
