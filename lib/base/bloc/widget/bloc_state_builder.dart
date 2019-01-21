import 'package:flutter/widgets.dart';
import 'package:flutter_swan/base/bloc/helper/bloc_event_state.dart';

typedef Widget AsyncBlocStateBuilder<BlocState>(BuildContext context, BlocState state);

class BlocEventStateBuilder<BlocState> extends StatelessWidget {
  final BlocEventStateBase<BlocEvent, BlocState> bloc;

  final AsyncBlocStateBuilder<BlocState> builder;

  const BlocEventStateBuilder({
    Key key,
    @required this.bloc,
    @required this.builder,
  })  : assert(null != bloc),
        assert(null != builder),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: bloc.state,
      initialData: bloc.initialState,
      builder: (context, snapshot) {
        return builder(context, snapshot.data);
      },
    );
  }
}
