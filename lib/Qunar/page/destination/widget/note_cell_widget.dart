import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_swan/base/styles/colors.dart';
import 'package:flutter_swan/base/styles/dimens.dart';
import 'package:flutter_swan/base/styles/text.dart';
import 'package:flutter_swan/Qunar/base/network/response/note.dart';

class NoteCellWidget extends StatelessWidget {
  final Overview overview;

  const NoteCellWidget({
    Key key,
    this.overview,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(),
      child: Container(
        padding: const EdgeInsets.only(
          left: BaseDimens.BIG,
          top: BaseDimens.BIG,
          bottom: BaseDimens.BIG,
          right: BaseDimens.BIG - BaseDimens.SMALL,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Container(
                padding: const EdgeInsets.only(right: BaseDimens.NORMAL),
                height: 105,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      overview?.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontWeight: FontWeight.bold).merge(BaseTextStyle.black().superBig),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: BaseDimens.NORMAL),
                      child: Wrap(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(right: BaseDimens.NORMAL),
                            padding: const EdgeInsets.symmetric(
                              horizontal: BaseDimens.SMALL,
                              vertical: BaseDimens.TINY,
                            ),
                            decoration: BoxDecoration(
                              color: BaseColors.greenAccent,
                              borderRadius: BorderRadius.all(Radius.circular(2)),
                              border: Border.all(color: BaseColors.green),
                            ),
                            child: Text(
                              "${overview?.routeDays}日游",
                              style: const BaseTextStyle.green().small,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        child: Row(
                          children: <Widget>[
                            ClipOval(
                              child: Image(
                                image: CachedNetworkImageProvider(overview?.userHeadImg ?? ""),
                                width: 20,
                                height: 20,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: BaseDimens.NORMAL),
                                child: Text(
                                  overview?.userName,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const BaseTextStyle.black().normal,
                                ),
                              ),
                            ),
                            Text(
                              "出行日期",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const BaseTextStyle.black().normal,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Stack(
                children: <Widget>[
                  FractionallySizedBox(
                    widthFactor: 1,
                    child: Container(
                      margin: const EdgeInsets.only(right: BaseDimens.SMALL),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        child: CachedNetworkImage(
                          fit: BoxFit.cover,
                          imageUrl: overview?.headImg ?? "",
                          // width: 200,
                          height: 105,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: BaseDimens.NORMAL,
                    child: Opacity(
                      opacity: (overview?.eliteType ?? 0) == 0 ? 0 : 1,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: BaseDimens.SMALL, vertical: BaseDimens.TINY),
                        decoration: BoxDecoration(
                          color: BaseColors.green,
                          borderRadius: BorderRadius.all(Radius.circular(BaseDimens.TINY)),
                        ),
                        child: Text("精华", style: BaseTextStyle.white().normal),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
