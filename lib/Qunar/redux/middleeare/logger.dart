import 'package:flutter_swan/base/redux/state.dart';
import 'package:redux/redux.dart';

final loggerMiddleware = (Store<BaseReduxState> store, action, NextDispatcher next) {
  print("[loggerMiddleware]::$action");
  next(action);
};
