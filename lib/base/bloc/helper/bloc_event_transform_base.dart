import 'package:flutter_swan/base/bloc/helper/bloc_event_state.dart';
import 'package:flutter_swan/base/bloc/helper/bloc_provider.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

abstract class BlocStateTransformBase<T, S extends BlocState> implements BlocBase {
  final T initialState;

  BehaviorSubject<T> _stateController = BehaviorSubject<T>();

  Stream<T> get state => _stateController;

  Stream<T> stateHandler({T currentState, S newState});

  BlocStateTransformBase({
    @required this.initialState,
    @required BlocEventStateBase<BlocEvent, BlocState> blocIn,
  }) : assert(blocIn is BlocEventStateBase<BlocEvent, BlocState>) {
    blocIn.state.listen((stateIn) {
      T current = _stateController.value ?? initialState;
      stateHandler(currentState: current, newState: stateIn).forEach((newState) {
        _stateController.sink.add(newState);
      });
    });
  }

  void dispose() {
    _stateController?.close();
  }
}
