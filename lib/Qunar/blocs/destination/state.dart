import 'package:flutter_swan/Qunar/base/network/response/city.dart';
import 'package:flutter_swan/Qunar/base/network/response/note.dart';
import 'package:flutter_swan/base/bloc/helper/bloc_event_state.dart';

class DestinationBlocState extends BlocState {
  bool _initial;

  bool _loading;

  City city;

  ChannelResponse channelResponse;

  OverviewResponse overviewResponse;

  DestinationBlocState()
      : _initial = false,
        _loading = false;

  bool get hasInitial => _initial;

  void initialed() => _initial = true;

  bool get loading => _loading;
}
