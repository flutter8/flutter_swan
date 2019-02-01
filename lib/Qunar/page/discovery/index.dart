import 'package:flutter/material.dart';

class DiscoveryWidget extends StatefulWidget {
  _DiscoveryWidgetState createState() => _DiscoveryWidgetState();
}

class _DiscoveryWidgetState extends State<DiscoveryWidget> {
  @override
  void initState() {
    super.initState();
    print("DiscoveryWidget::$hashCode");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepOrangeAccent,
    );
  }
}
