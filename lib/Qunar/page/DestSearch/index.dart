import "package:flutter/material.dart";
import 'package:flutter/cupertino.dart';
import 'package:flutter_swan/base/bloc/widget/bloc_state_builder.dart';
import 'package:flutter_swan/base/styles/dimens.dart';
import 'package:flutter_swan/base/styles/text.dart';
import 'package:flutter_swan/Qunar/blocs/dest_search/bloc.dart';
import 'package:flutter_swan/Qunar/blocs/dest_search/event.dart';
import 'package:flutter_swan/Qunar/blocs/dest_search/state.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/recommend.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/suggest.dart';

class QDestSearchWidget extends StatefulWidget {
  _DestSearchWidgetState createState() => _DestSearchWidgetState();
}

class _DestSearchWidgetState extends State<QDestSearchWidget> {
  final FocusNode focusNode = FocusNode();

  final TextEditingController controller = TextEditingController();

  final DestSearchBloc pageBloc = DestSearchBloc();

  Function(String) onSearchTextChanged;

  _DestSearchWidgetState() {
    pageBloc.emitEvent(DestSearchBlocEvent(EventType.initial));

    onSearchTextChanged = (String text) {
      pageBloc.emitEvent(DestSearchBlocEvent(
        EventType.suggest,
        suggest: text,
      ));
    };
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 2000), () {
      FocusScope.of(context).requestFocus(focusNode);
    });
  }

  @override
  void dispose() {
    pageBloc?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocEventStateBuilder<DestSearchBlocState>(
      bloc: pageBloc,
      builder: (context, state) {
        print(pageBloc);
        return Scaffold(
          key: ValueKey("DestSearchWidget-Scaffold"),
          appBar: navigationBar(onSearchTextChanged, focusNode),
          body: Container(
            color: Colors.white,
            child: IndexedStack(
              index: state.inRecommend ? 0 : 1,
              children: <Widget>[
                DestSearchRecommendWidget(
                  recommend: state.recommend,
                  product: state.product,
                ),
                DestSearchSuggestWidget(
                  keyword: state.keyword,
                  response: state.suggest,
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Widget navigationBar(Function(String) onTextChanged, focusNode) {
    return CupertinoNavigationBar(
      automaticallyImplyLeading: false,
      padding: const EdgeInsetsDirectional.only(),
      border: Border(),
      // leading: QBaseGoBackWidget(),
      middle: Container(
        height: 32,
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.symmetric(horizontal: BaseDimens.NORMAL),
        decoration: BoxDecoration(
          color: CupertinoColors.inactiveGray.withOpacity(0.2),
          borderRadius: BorderRadius.all(
            Radius.circular(BaseDimens.SUPER_BIG),
          ),
        ),
        child: Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: BaseDimens.SMALL),
          child: CupertinoTextField(
            controller: controller,
            focusNode: focusNode,
            prefix: Icon(
              IconData(0xf50c, fontFamily: "Qunar"),
              size: BaseTextFontSize.HUGE,
              color: const BaseTextStyle.grey().color,
            ),
            onChanged: onTextChanged,
            maxLength: 20,
            clearButtonMode: OverlayVisibilityMode.editing,
            decoration: BoxDecoration(),
            // autofocus: true,
            placeholder: "想去哪儿？",
            style: const BaseTextStyle.black().big,
          ),
        ),
      ),
      trailing: CupertinoButton(
        child: Text(
          "取消",
          style: const BaseTextStyle.black().big,
        ),
        minSize: 64,
        padding: EdgeInsets.zero,
        onPressed: () {
          // controller.value = TextEditingValue(text: "abcd");
        },
      ),
    );
  }
}
