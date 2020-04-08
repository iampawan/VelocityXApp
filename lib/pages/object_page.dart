import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:velocityx_app/widgets/code_box.dart';

import 'package:velocityx_app/widgets/inline_code_box.dart';
import 'package:velocityx_app/widgets/velocity_scaffold.dart';

class ObjectPage extends StatelessWidget {
  static const String routeName = "/object";
  @override
  Widget build(BuildContext context) {
    final width = context.mdWindowSize == MobileWindowSize.small
        ? context.percentWidth * 100
        : 300.0;
    return VelocityScaffold(
      title: "Object",
      body: VStack(
        [
          "VelocityX Object allows you to easily move the positions of the widgets and align the widgets in the box. It allows you to fit and scale the widget according to your needs on a single click."
              .text
              .xl
              .semiBold
              .make(),

        30.heightBox,
         "Align widgets Using VelocityX object method extention".text.xl2.blue800.semiBold.make(),
        30.heightBox,
        Wrap(
            runSpacing: 20,
            spacing: 20,
            alignment: WrapAlignment.start,
            direction: Axis.horizontal,
            children: <Widget>[
              [
                "Align Widget in Center"
                    .text
                    .xl
                    .bold
                    .blue800
                    .make(),
                CodeBox(CodeBoxText(
                    "anywidget.objectCenter()\n\neg: Text().objectCenter()\n\nIt will align the text in the Center of the box.")),
              ].vStack().w(width),
              [
                "Align Widget in Top-Center"
                    .text
                    .xl
                    .bold
                    .blue800
                    .make(),
                CodeBox(CodeBoxText(
                    "anywidget.objectTopCenter()\n\neg: Text().pobjectTopCenter()\n\nIt will align the text in the Top-Center of the box")),
              ].vStack().w(width),
              [
                "Align Widget in Bottom-Center".text.xl.bold.blue800.make(),
                CodeBox(CodeBoxText(
                    "anywidget.objectBottomCenter()\n\neg: Text().objectBottomCenter()\n\nIt will align the text in the Bottom-Center of the box.")),
              ].vStack().w(width),
              
              
            ],
          ),
          20.heightBox,
          Wrap(
            runSpacing: 20,
            spacing: 20,
            alignment: WrapAlignment.start,
            direction: Axis.horizontal,
            children: <Widget>[
              [
                "Align Widget in Center-Left"
                    .text
                    .xl
                    .bold
                    .blue800
                    .make(),
                CodeBox(CodeBoxText(
                    "anywidget.objectCenterLeft()\n\neg: Text().objectCenterLeft()\n\nIt will align the text in the Center-Left of the box.")),
              ].vStack().w(width),
              [
                "Align Widget in Top-Left"
                    .text
                    .xl
                    .bold
                    .blue800
                    .make(),
                CodeBox(CodeBoxText(
                    "anywidget.objectTopLeft()\n\neg: Text().objectTopLeft()\n\nIt will align the text in the Top-Left of the box")),
              ].vStack().w(width),
              [
                "Align Widget in Bottom-Left".text.xl.bold.blue800.make(),
                CodeBox(CodeBoxText(
                    "anywidget.objectBottomLeft()\n\neg: Text().objectBottomLeft()\n\nIt will align the text in the Bottom-Left of the box.")),
              ].vStack().w(width),
              
              
            ],
          ),
          20.heightBox,
          Wrap(
            runSpacing: 20,
            spacing: 20,
            alignment: WrapAlignment.start,
            direction: Axis.horizontal,
            children: <Widget>[
              [
                "Align Widget in Center-Right"
                    .text
                    .xl
                    .bold
                    .blue800
                    .make(),
                CodeBox(CodeBoxText(
                    "anywidget.objectCenterRight()\n\neg: Text().objectCenterRight()\n\nIt will align the text in the Center-Right of the box.")),
              ].vStack().w(width),
              [
                "Align Widget in Top-Right"
                    .text
                    .xl
                    .bold
                    .blue800
                    .make(),
                CodeBox(CodeBoxText(
                    "anywidget.objectTopRight()\n\neg: Text().objectTopRight()\n\nIt will align the text in the Top-Right of the box")),
              ].vStack().w(width),
              [
                "Align Widget in Bottom-Right".text.xl.bold.blue800.make(),
                CodeBox(CodeBoxText(
                    "anywidget.objectBottomRight()\n\neg: Text().objectBottomRight()\n\nIt will align the text in the Bottom-Right of the box.")),
              ].vStack().w(width),
              
              
            ],
          ),
           20.heightBox,
          "Here is the example of above code snippets".text.make(),
          20.heightBox,
          ZStack(
            [
              "I am aligned Bottom-Center"
                  .text
                  .make()
                  .p12()
                  .box
                  .orange300
                  .make()
                  .objectBottomCenter(),
              "I am aligned Center"
                  .text
                  .make()
                  .p12()
                  .box
                  .green300
                  .make()
                  .objectCenter(),
              "I am aligned Top-Center"
                  .text
                  .make()
                  .p12()
                  .box
                  .yellow300
                  .make()
                  .objectTopCenter(),
                
              "I am aligned Top-Right"
                  .text
                  .make()
                  .p12()
                  .box
                  .purple300
                  .make()
                  .objectTopRight(),
              "I am aligned Top-Left"
                  .text
                  .make()
                  .p12()
                  .box
                  .red300
                  .make()
                  .objectTopLeft(),
              "I am aligned Center-Left"
                  .text
                  .make()
                  .p12()
                  .box
                  .indigo300
                  .make()
                  .objectCenterLeft(),
              "I am aligned Bottom-Right"
                  .text
                  .make()
                  .p12()
                  .box
                  .pink300
                  .make()
                  .objectBottomRight(),
              "I am aligned Bottom-Left"
                  .text
                  .make()
                  .p12()
                  .box
                  .teal300
                  .make()
                  .objectBottomLeft(),
              "I am aligned Center-Right"
                  .text
                  .make()
                  .p12()
                  .box
                  .gray300
                  .make()
                  .objectCenterRight()
            ],
          ).h32(context).w32(context).box.blue300.make(),
          20.heightBox,
        //   VxBox(child: "I am filled inside box".text.make().objectFill())
        //       .orange300
        //       .make()
        //       .h20(context)
        //       .w24(context),
        //   VxBox(child: "I am Cover inside box".text.make().objectCover())
        //       .orange300
        //       .make()
        //       .h20(context)
        //       .w24(context),
        //   VxBox(child: "I am Contained inside box".text.make().objectContain())
        //       .orange300
        //       .make()
        //       .h20(context)
        //       .w24(context),
        //   VxBox(
        //           child:
        //               "I am Contained inside box".text.make().objectScaleDown())
        //       .orange300
        //       .make()
        //       .h20(context)
        //       .w24(context),
        //   VxBox(
        //           child:
        //               "I am Contained inside box".text.make().objectScaleDown())
        //       .orange300
        //       .make()
        //       .h20(context)
        //       .w24(context)
        // ],
        ]
      ).p16().scrollVertical(physics: BouncingScrollPhysics()),
    );
  }
}
