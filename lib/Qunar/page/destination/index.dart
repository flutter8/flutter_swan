import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_swan/Qunar/base/widget/widget_go_back.dart';
import 'package:flutter_swan/Qunar/blocs/destination/bloc.dart';
import 'package:flutter_swan/Qunar/blocs/destination/event.dart';
import 'package:flutter_swan/Qunar/blocs/destination/state.dart';
import 'package:flutter_swan/Qunar/page/destination/widget/component_header_widget.dart';
import 'package:flutter_swan/Qunar/page/destination/widget/note_cell_widget.dart';
import 'package:flutter_swan/base/bloc/widget/bloc_state_builder.dart';

import 'package:cached_network_image/cached_network_image.dart';
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
      child: Stack(
        children: <Widget>[
          buildContent(context),
          CupertinoNavigationBar(
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
                IconData(0xE38C, fontFamily: "Qunar"),
                size: BaseTextFontSize.HUGE,
                color: BaseColors.GREY,
              ),
              // onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }

  Widget buildContent(BuildContext context) {
    return BlocEventStateBuilder<DestinationBlocState>(
      bloc: pageBloc,
      builder: (BuildContext context, DestinationBlocState state) {
        return CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: ComponentHeaderWidget(
                dest: state?.city,
                channel: state?.channelResponse,
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Container(
                  child: NoteCellWidget(
                    overview: state?.overviewResponse?.list?.elementAt(index),
                  ),
                );
              }, childCount: state?.overviewResponse?.list?.length ?? 0),
            )
          ],
        );
      },
    );
  }
}
