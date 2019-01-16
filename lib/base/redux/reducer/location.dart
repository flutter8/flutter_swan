import 'package:amap_location/amap_location.dart';
import 'package:redux/redux.dart';
import 'package:flutter_swan/base/redux/actions.dart';

final baseLocationReducer = combineReducers<AMapLocation>([
  TypedReducer<AMapLocation, BaseUpdateLocateAction>(
    rUpdateLocateAction,
  )
]);

AMapLocation rUpdateLocateAction(AMapLocation state, BaseUpdateLocateAction action) {
  if (null == action?.location) {
    return state;
  } else {
    return action.location;
  }
}
