import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_swan/base/styles/colors.dart';
import 'package:flutter_swan/base/styles/text.dart';
import 'package:flutter_swan/Qunar/page/destination/index.dart';
import 'package:flutter_swan/Qunar/page/discovery/index.dart';
import 'package:flutter_swan/Qunar/page/user_center/index.dart';

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
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        currentIndex: 0,
        activeColor: BaseColors.BLUE,
        inactiveColor: BaseColors.GREY,
        border: Border(),
        items: [
          BottomNavigationBarItem(
            icon: Icon(IconData(0xE57F, fontFamily: "Qunar")),
            title: Text(
              '目地的',
              style: TextStyle(fontSize: BaseTextFontSize.NORMAL),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(IconData(0xE57E, fontFamily: "Qunar")),
            title: Text(
              '发现',
              style: TextStyle(fontSize: BaseTextFontSize.NORMAL),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(IconData(0xE57D, fontFamily: "Qunar")),
            title: Text(
              '我的',
              style: TextStyle(fontSize: BaseTextFontSize.NORMAL),
            ),
          ),
        ],
      ),
      tabBuilder: (context, index) {
        return SafeArea(
          top: false,
          left: false,
          right: false,
          child: CupertinoTabView(builder: (context) {
            switch (index) {
              case 0:
                return DestinationWidget();
              case 1:
                return DiscoveryWidget();
              case 2:
                return UserCenterWidget();
            }
          }),
        );
      },
    );
  }

  void getLocation(context) async {
    // AMapLocation loc = await AMapLocationClient.getLocation(true);
    // StoreProvider.of<BaseReduxState>(context).dispatch(BaseUpdateLocateAction(loc));
  }
}
