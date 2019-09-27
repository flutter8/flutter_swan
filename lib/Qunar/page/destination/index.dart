import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_swan/Qunar/base/widget/widget_go_back.dart';
import 'package:flutter_swan/Qunar/blocs/destination/bloc.dart';
import 'package:flutter_swan/Qunar/blocs/destination/event.dart';
import 'package:flutter_swan/Qunar/blocs/destination/state.dart';
import 'package:flutter_swan/Qunar/page/destination/config/components_sort_config.dart';
import 'package:flutter_swan/Qunar/page/destination/widget/component_header_widget.dart';
import 'package:flutter_swan/Qunar/page/destination/widget/component_what_xxx.dart';
import 'package:flutter_swan/Qunar/page/destination/widget/note_cell_widget.dart';
import 'package:flutter_swan/base/bloc/widget/bloc_state_builder.dart';
import 'package:flutter_swan/base/styles/dimens.dart';

import 'package:flutter_swan/base/styles/text.dart';
import 'package:flutter_swan/base/styles/colors.dart';

class DestinationWidget extends StatefulWidget {
  _DestinationWidgetState createState() => _DestinationWidgetState();
}

class _DestinationWidgetState extends State<DestinationWidget> {
  final DestinationBloc pageBloc = DestinationBloc();

  @override
  void initState() {
    super.initState();
    pageBloc.emitEvent(DestinationBlocEvent.initial(EventType.initial));
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: buildNavigationBar(context),
      child: Stack(
        children: <Widget>[
          BlocEventStateBuilder<DestinationBlocState>(
            bloc: pageBloc,
            builder: (BuildContext context, DestinationBlocState state) {
              return CustomScrollView(
                slivers: buildDestinationWidgets(context, state),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget buildNavigationBar(BuildContext context) {
    return CupertinoNavigationBar(
      leading: QBaseGoBackWidget(),
      backgroundColor: Colors.white.withOpacity(0),
      border: Border(),
      middle: Container(
        width: double.infinity,
        height: 32,
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        child: RaisedButton.icon(
          icon: Icon(
            IconData(0xF50C, fontFamily: "Qunar"),
            size: BaseTextFontSize.HUGE,
            color: BaseColors.GREY,
          ),
          label: Text(
            "搜城市/酒店/景点/美食",
            style: const BaseTextStyle.grey().big,
          ),
          elevation: 0,
          highlightElevation: 0,
          color: Colors.white.withOpacity(0),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          onPressed: () {},
        ),
      ),
      trailing: Container(
        child: Icon(
          IconData(0xE38C, fontFamily: "gl_home_rn"),
          size: BaseTextFontSize.COLOSSAL,
          color: BaseColors.GREY,
        ),
        // onPressed: () {},
      ),
    );
  }

  List<Widget> buildDestinationWidgets(context, state) {
    List<Widget> widgets = [];
    widgets.add(SliverToBoxAdapter(
      child: ComponentHeaderWidget(
        dest: state?.city,
        channel: state?.channelResponse,
      ),
    ));

    widgets.addAll(List.generate(ComponentDefaultSort().config.length, (index) {
      return SliverToBoxAdapter(
        child: buildDestinationComponent(
          state,
          ComponentDefaultSort().config[index],
        ),
      );
    }));

    widgets.add(SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return Container(
          child: NoteCellWidget(overview: state?.overviewResponse[index]),
        );
      }, childCount: state?.overviewResponse?.length ?? 0),
    ));

    return widgets;
  }

  Widget buildDestinationComponent(state, ComponpentType componpentType) {
    switch (componpentType) {
      case ComponpentType.ModuleWhatEat:
        return ComponentWhatFood(state: state);
      case ComponpentType.ModuleWhatFun:
        return ComponentWhatScenic(state: state);
      case ComponpentType.ModuleWhatBuy:
        return ComponentWhatShopping(state: state);
      default:
        return Container(
          padding: const EdgeInsets.all(BaseDimens.BIG),
          child: Text(
            componpentType.toString(),
            style: BaseTextStyle.black().colossal,
          ),
        );
    }
  }
}
