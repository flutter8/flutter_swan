import 'package:flutter_swan/base/redux/reducer/location.dart';
import 'package:flutter_swan/base/redux/state.dart';

BaseReduxState appReducer(BaseReduxState state, action) => BaseReduxState(
      location: baseLocationReducer(state.location, action),
    );
