import 'package:flutter_swan/base/bloc/helper/bloc_provider.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

abstract class BlocEvent extends Object {}

abstract class BlocState extends Object {}

abstract class BlocEventStateBase<BlocEvent, BlocState> implements BlocBase {
  final _eventController = PublishSubject<BlocEvent>();

  final _stateController = BehaviorSubject<BlocState>();

  Function(BlocEvent) get emitEvent => _eventController.sink.add;

  Function(Stream<BlocEvent>) get emitEventStream => _eventController.sink.addStream;

  Stream<BlocState> get state => _stateController.stream;

  BlocState get lastState => _stateController.value;

  Stream<BlocState> eventHandler(BlocEvent event, BlocState currentState);

  final BlocState initialState;

  BlocEventStateBase({
    @required this.initialState,
  }) {
    _eventController.debounce(Duration(milliseconds: 250)).listen((event) {
      BlocState current = lastState ?? initialState;
      eventHandler(event, current)?.forEach((newState) {
        _stateController.sink.add(newState);
      });
    });
  }

  @override
  void dispose() {
    _eventController?.close();
    _stateController?.close();
  }
}
