import 'package:flutter_swan/base/bloc/helper/bloc_event_state.dart';

class DestinationBlocEvent extends BlocEvent {
  final EventType _eventType;

  DestinationBlocEvent.initial(this._eventType);

  EventType get event => _eventType;
}

enum EventType { initial }
