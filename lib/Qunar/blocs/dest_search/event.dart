import 'package:flutter_swan/base/bloc/helper/bloc_event_state.dart';

class DestSearchBlocEvent extends BlocEvent {
  final EventType _eventType;

  final String suggest;

  DestSearchBlocEvent(
    this._eventType, {
    this.suggest,
  });

  EventType get event => _eventType;
}

enum EventType { initial, recommend, suggest, suggestList }
