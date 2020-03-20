import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:velocityx_app/widgets/velocity_drawer.dart';

class VelocityScaffold extends StatelessWidget {
  final String title;
  final Widget body;
  final Color bgColor;

  const VelocityScaffold({Key key, @required this.title, @required this.body, this.bgColor}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor ?? ThemeData().scaffoldBackgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: title.text.xl2.make(),
        elevation: 0.0,
      ),
      drawer: VelocityDrawer(),
      body: body,
    );
  }
}
