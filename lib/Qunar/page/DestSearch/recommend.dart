import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_swan/Qunar/base/network/response/search.dart';
import 'package:flutter_swan/base/styles/dimens.dart';
import 'package:flutter_swan/base/styles/text.dart';

class DestSearchRecommendWidget extends StatelessWidget {
  final SearchRecommendHotList recommendHotList;

  final SearchRecommendProductList recommendProductList;

  DestSearchRecommendWidget.node(this.recommendHotList, this.recommendProductList);

  DestSearchRecommendWidget({
    this.recommendHotList,
    this.recommendProductList,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        buildStorageRecordWidget(),
        buildRecommendProductWidget(),
        buildRecommendQueryWidget(),
      ],
    );
  }

  Widget buildStorageRecordWidget() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: BaseDimens.BIG, vertical: BaseDimens.NORMAL),
      child: Row(
        children: <Widget>[
          Icon(
            IconData(0xe561, fontFamily: "Qunar"),
            size: BaseTextFontSize.COLOSSAL,
            color: const BaseTextStyle.blue().color,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: BaseDimens.NORMAL),
              child: Text(
                "历史记录",
                style: const BaseTextStyle.black().big,
              ),
            ),
          ),
          CupertinoButton(
            minSize: 0,
            padding: EdgeInsets.zero,
            child: Text(
              "清空",
              style: const BaseTextStyle.grey().big,
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }

  Widget buildRecommendProductWidget() {
    List<Widget> children = List.from(recommendProductList?.list?.map((product) {
          return Container(
            padding: const EdgeInsets.symmetric(vertical: BaseDimens.NORMAL),
            child: Row(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: BaseDimens.SMALL, vertical: BaseDimens.TINY),
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F5F5),
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                  ),
                  child: Text(
                    product.type,
                    style: const BaseTextStyle.grey().small,
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: BaseDimens.NORMAL),
                    child: Text(
                      product.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const BaseTextStyle.black().normal,
                    ),
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: "￥",
                    style: const BaseTextStyle.price().tiny,
                    children: [
                      TextSpan(
                        text: product.price,
                        style: const BaseTextStyle.price().normal,
                      ),
                      TextSpan(
                        text: "起",
                        style: const BaseTextStyle.grey().tiny,
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        }) ??
        []);

    children.insert(
      0,
      Container(
        padding: const EdgeInsets.only(bottom: BaseDimens.NORMAL),
        child: Row(
          children: <Widget>[
            Icon(
              IconData(0xf44c, fontFamily: "Qunar"),
              size: BaseTextFontSize.COLOSSAL,
              color: const BaseTextStyle.blue().color,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: BaseDimens.NORMAL),
                child: Text(
                  "发现好货",
                  style: const BaseTextStyle.black().big,
                ),
              ),
            ),
          ],
        ),
      ),
    );

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: BaseDimens.BIG, vertical: BaseDimens.NORMAL),
      child: Column(
        children: children,
      ),
    );
  }

  Widget buildRecommendQueryWidget() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: BaseDimens.BIG, vertical: BaseDimens.NORMAL),
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(bottom: BaseDimens.NORMAL),
            child: Row(
              children: <Widget>[
                Icon(
                  IconData(0xe03b, fontFamily: "Qunar"),
                  size: BaseTextFontSize.COLOSSAL,
                  color: const BaseTextStyle.blue().color,
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: BaseDimens.NORMAL),
                    child: Text(
                      "热门搜索",
                      style: const BaseTextStyle.black().big,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: List.generate(recommendHotList?.list?.length ?? 0, (index) {
              return Chip(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                padding: EdgeInsets.zero,
                labelPadding: const EdgeInsets.symmetric(horizontal: BaseDimens.BIG),
                backgroundColor: Color(0xFFFAFAFA),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Color(0xFFF5F5F5),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(24),
                  ),
                ),
                label: Text(
                  recommendHotList?.list?.elementAt(index)?.name ?? "NNull",
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}
