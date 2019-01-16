import 'package:amap_location/amap_location.dart';

class BaseReduxState {
  static BaseReduxState _state;

  AMapLocation location;

  factory BaseReduxState.initial() => _state ?? (_state = BaseReduxState());

  BaseReduxState({this.location});

  double get latitude => location?.latitude ?? 0;

  double get longitude => location?.longitude ?? 0;
}
