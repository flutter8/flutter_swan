import 'package:flutter_swan/base/bloc/helper/bloc_event_state.dart';
import 'package:meta/meta.dart';

class DestSearchBlocEvent extends BlocEvent {
  final String suggest;

  DestSearchBlocEvent({
    @required this.suggest,
  });
}

enum EventType { initial, suggest }
