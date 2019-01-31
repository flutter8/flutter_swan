import "package:flutter/material.dart";
import 'package:flutter/cupertino.dart';
import 'package:flutter_swan/Qunar/blocs/dest_search/bloc.dart';
import 'package:flutter_swan/Qunar/blocs/dest_search/event.dart';
import 'package:flutter_swan/Qunar/blocs/dest_search/state.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/suggest.dart';
import 'package:flutter_swan/base/bloc/widget/bloc_state_builder.dart';
import 'package:flutter_swan/base/styles/dimens.dart';
import 'package:flutter_swan/base/styles/colors.dart';
import 'package:flutter_swan/base/styles/text.dart';
import 'package:flutter_swan/Qunar/base/widget/widget_go_back.dart';

class DestSearchListWidget extends StatefulWidget {
  final String keyword;

  DestSearchListWidget({
    Key key,
    this.keyword,
  }) : super(key: key);

  _DestSearchListWidgetState createState() => _DestSearchListWidgetState(keyword: keyword);
}

class _DestSearchListWidgetState extends State<DestSearchListWidget> {
  final String keyword;

  final DestSearchBloc pageBloc = DestSearchBloc();

  _DestSearchListWidgetState({this.keyword}) {
    pageBloc.emitEvent(DestSearchBlocEvent(EventType.suggestList, suggest: keyword));
  }

  @override
  Widget build(BuildContext context) {
    return BlocEventStateBuilder<DestSearchBlocState>(
      bloc: pageBloc,
      builder: (context, state) {
        return Scaffold(
          appBar: CupertinoNavigationBar(
            padding: const EdgeInsetsDirectional.only(start: BaseDimens.BIG, end: BaseDimens.NORMAL),
            border: Border(),
            leading: QBaseGoBackWidget(),
            automaticallyImplyLeading: false,
            middle: Container(
              alignment: Alignment.centerLeft,
              child: Row(
                children: <Widget>[
                  Text(
                    "全世界",
                    style: const TextStyle(fontWeight: FontWeight.normal).merge(
                      BaseTextStyle.black().superBig,
                    ),
                  ),
                  Icon(
                    IconData(0xF3FF, fontFamily: "Qunar"),
                    size: BaseDimens.BIG,
                    color: BaseColors.BLACK,
                  ),
                  Expanded(
                    child: Container(
                      height: 28,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(BaseDimens.SUPER_BIG)),
                        color: Colors.grey[200],
                      ),
                      margin: const EdgeInsets.only(left: BaseDimens.NORMAL),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: BaseDimens.NORMAL,
                              vertical: BaseDimens.SMALL,
                            ),
                            child: Icon(
                              IconData(0xF50C, fontFamily: "Qunar"),
                              size: BaseDimens.BIG,
                              color: BaseColors.BLACK,
                            ),
                          ),
                          Text(
                            widget?.keyword ?? "",
                            style: const TextStyle(fontWeight: FontWeight.normal).merge(
                              BaseTextStyle.black().big,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            trailing: CupertinoButton(
              child: Icon(
                IconData(0xE38E, fontFamily: "Qunar"),
                size: BaseDimens.SUPER_BIG,
                color: BaseColors.BLACK,
              ),
              padding: const EdgeInsets.only(left: BaseDimens.NORMAL),
              onPressed: () {},
            ),
          ),
          body: Container(
            child: BlocEventStateBuilder<DestSearchBlocState>(
              bloc: pageBloc,
              builder: (context, state) {
                return DestSearchSuggestWidget(keyword: state.keyword, response: state.suggest);
              },
            ),
          ),
        );
      },
    );
  }
}
