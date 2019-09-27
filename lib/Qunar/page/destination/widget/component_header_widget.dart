import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swan/Qunar/base/network/response/city.dart';
import 'package:flutter_swan/base/styles/dimens.dart';
import 'package:flutter_swan/base/styles/text.dart';

class ComponentHeaderWidget extends StatefulWidget {
  final City dest;

  final ChannelResponse channel;

  const ComponentHeaderWidget({
    Key key,
    @required this.dest,
    @required this.channel,
  }) : super(key: key);

  _ComponentHeaderWidgetState createState() => _ComponentHeaderWidgetState();
}

class _ComponentHeaderWidgetState extends State<ComponentHeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 480,
      color: Colors.indigoAccent,
      child: Stack(
        children: <Widget>[
          Image(
            image: CachedNetworkImageProvider(widget?.dest?.headImage ?? ""),
            height: 320,
            fit: BoxFit.cover,
          ),
          Container(
            height: 320,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Colors.transparent,
                  Colors.indigoAccent,
                ],
                stops: [0.5, 1],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: BaseDimens.NORMAL,
              horizontal: BaseDimens.BIG,
            ),
            child: Column(
              verticalDirection: VerticalDirection.up,
              children: <Widget>[
                buildDestNoticeWidget(),
                buildChannelWidget(),
                Container(
                  margin: const EdgeInsets.only(bottom: BaseDimens.NORMAL),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "2~7C",
                        style: BaseTextStyle.white().big,
                      ),
                      Spacer(),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: BaseDimens.NORMAL, vertical: BaseDimens.SMALL),
                        decoration: BoxDecoration(
                          color: Colors.greenAccent.withOpacity(0.5),
                          borderRadius: BorderRadius.all(Radius.circular(BaseDimens.BIG)),
                        ),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: BaseDimens.SMALL),
                              child: Icon(
                                IconData(0xE3BB, fontFamily: "gl_home_rn"),
                                color: Colors.white,
                                size: BaseTextFontSize.HUGE,
                              ),
                            ),
                            Text(
                              "看旅图",
                              style: BaseTextStyle.white().normal,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Text(
                        widget?.dest?.name ?? "",
                        style: TextStyle(fontWeight: FontWeight.bold).merge(BaseTextStyle.white().gigantic),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: BaseDimens.SMALL),
                        child: Icon(
                          IconData(0xE1FC, fontFamily: "Qunar"),
                          color: Colors.white,
                          size: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildChannelWidget() {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.only(bottom: BaseDimens.NORMAL),
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(BaseDimens.BIG),
        width: double.infinity,
        child: Wrap(
          spacing: BaseDimens.BIG,
          runSpacing: BaseDimens.BIG,
          children: List.generate(widget?.channel?.length ?? 0, (index) {
            Channel channel = widget?.channel[index];
            return Container(
              child: Column(
                children: <Widget>[
                  CachedNetworkImage(
                    width: 48,
                    height: 48,
                    imageUrl: channel?.iconUrl ?? "",
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: BaseDimens.SMALL),
                    child: Text(
                      channel?.title ?? "",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ).merge(
                        BaseTextStyle.black().normal,
                      ),
                    ),
                  )
                ],
              ),
            );
          }),
        ),
      ),
    );
  }

  Widget buildDestNoticeWidget() {
    return Container(
      height: 36,
      decoration: BoxDecoration(
        color: Colors.black38,
        borderRadius: BorderRadius.all(Radius.circular(BaseDimens.SMALL)),
      ),
    );
  }
}
