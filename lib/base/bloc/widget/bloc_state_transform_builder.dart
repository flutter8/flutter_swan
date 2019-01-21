import 'package:flutter/widgets.dart';
import 'package:flutter_swan/base/bloc/helper/bloc_event_state.dart';
import 'package:flutter_swan/base/bloc/helper/bloc_event_transform_base.dart';

typedef Widget AsyncBlocStateBuilder<BlocState>(BuildContext context, BlocState state);

class BlocStateTransformBuilder<T extends BlocState, S extends BlocState> extends StatelessWidget {
  final BlocStateTransformBase<T, S> transformBloc;

  final AsyncBlocStateBuilder<T> builder;

  const BlocStateTransformBuilder({
    Key key,
    @required this.builder,
    @required this.transformBloc,
  })  : assert(null != builder),
        assert(null != transformBloc),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<T>(
      stream: transformBloc.state,
      initialData: transformBloc.initialState,
      builder: (BuildContext context, AsyncSnapshot<T> snapshot) {
        return builder(context, snapshot.data);
      },
    );
  }
}
