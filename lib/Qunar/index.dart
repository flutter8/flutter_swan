import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_swan/base/redux/actions.dart';
import 'package:flutter_swan/base/redux/state.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/index.dart';
import 'package:amap_location/amap_location.dart';

class QunarHomeIndex extends StatefulWidget {
  _QunarHomeIndexState createState() => _QunarHomeIndexState();
}

class _QunarHomeIndexState extends State<QunarHomeIndex> {

  @override
    void initState() {
      super.initState();
      getLocation(context);
    }
 
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
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("DestSearch"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
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

  void getLocation(context) async {
    AMapLocation loc = await AMapLocationClient.getLocation(true);
    StoreProvider.of<BaseReduxState>(context).dispatch(BaseUpdateLocateAction(loc));
  }
}
