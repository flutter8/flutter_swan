import 'package:flutter/material.dart';

class UserCenterWidget extends StatefulWidget {
  _UserCenterWidgetState createState() => _UserCenterWidgetState();
}

class _UserCenterWidgetState extends State<UserCenterWidget> {
  @override
  void initState() {
    super.initState();
    print("UserCenterWidget::$hashCode");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
    );
  }
}
