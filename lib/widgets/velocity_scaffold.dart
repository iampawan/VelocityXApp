import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:velocityx_app/widgets/velocity_drawer.dart';

class VelocityScaffold extends StatelessWidget {
  final String title;
  final Widget body;

  const VelocityScaffold({Key key, @required this.title, @required this.body}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: title.text.xl2.make(),
        backgroundColor: VelocityX.orangeColor500,
        elevation: 0.0,
      ),
      drawer: VelocityDrawer(),
      body: body,
    );
  }
}
