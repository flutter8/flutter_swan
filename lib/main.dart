import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_swan/Qunar/index.dart';
import 'package:amap_location/amap_location.dart';
import 'package:flutter_swan/Qunar/redux/middleeare/logger.dart';
import 'package:flutter_swan/base/redux/reducer.dart';
import 'package:flutter_swan/base/redux/state.dart';
import 'package:redux/redux.dart';

final store = Store<BaseReduxState>(
  appReducer,
  initialState: BaseReduxState.initial(),
  middleware: [TypedMiddleware<BaseReduxState, dynamic>(loggerMiddleware)],
);

void main() {
  AMapLocationClient.setApiKey("2edcc95cf47bb261f2136ff599762aef");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key key}) : super(key: key) {
    AMapLocationClient.startup(new AMapLocationOption(
      desiredAccuracy: CLLocationAccuracy.kCLLocationAccuracyHundredMeters,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: CupertinoApp(
        title: 'Flutter Demo',
        home: QunarHomeIndex(),
        theme: CupertinoThemeData(
          
        ),
      ),
    );
  }
}
