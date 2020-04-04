import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:velocityx_app/pages/home_page.dart';
import 'package:velocityx_app/velocity_app.dart';

class SplashPage extends StatelessWidget {
  static const String routeName = "/";
  @override
  Widget build(BuildContext context) {
    return Material(
      color: VelocityX.gray800,
      child: ZStack(
        [
          [
            VelocityDevice(
                mobile: [
                  "Velocity"
                      .richText
                      .white
                      .xl
                      .extraBold
                      .size(30)
                      .maxLines(1)
                      .withTextSpanChildren(
                    [
                      "X".textSpan.blue500.extraBold.size(40).make(),
                    ],
                  ).make(),
                  VelocityApp.utilityText.text.xl2.light.white.center.make(),
                  VelocityApp.rapidText.text.xl2.light.teal400.center.make(),
                  5.heightBox,
                  "v${VelocityApp.versionText}".text.white.wide.semiBold.make()
                ].vStack(
                  crossAlignment: CrossAxisAlignment.center,
                ),
                web: [
                  "Velocity"
                      .richText
                      .white
                      .xl
                      .extraBold
                      .size(50)
                      .maxLines(1)
                      .withTextSpanChildren(
                    [
                      "X".textSpan.blue500.extraBold.size(60).make(),
                    ],
                  ).make(),
                  VelocityApp.utilityText.text.xl3.light.white.center.make(),
                  VelocityApp.rapidText.text.xl3.light.teal400.center.make(),
                  5.heightBox,
                  "v${VelocityApp.versionText}".text.white.wide.semiBold.make()
                ].vStack(
                  crossAlignment: CrossAxisAlignment.center,
                )),
            20.heightBox,
            RaisedButton(
              onPressed: () =>
                  context.nav.pushReplacementNamed(HomePage.routeName),
              padding: const EdgeInsets.symmetric(
                vertical: VelocityX.dp20,
                horizontal: VelocityX.dp64,
              ),
              shape: VelocityX.roundedSm,
              color: VelocityX.blue500,
              // borderSide: BorderSide(color: Colors.white),
              child: VelocityApp.getStartedText.text.center.white.make(),
            ),
          ]
              .vStack(
                  crossAlignment: CrossAxisAlignment.center,
                  alignment: MainAxisAlignment.center)
              .scrollVertical()
              .centered()
              .p16()
              .box
              .width(context.screenWidth / 1.5)
              .height(context.percentHeight * 40)
              .roundedLg
              .neumorphic(color: VelocityX.gray800)
              .makeCentered(),
          Positioned(
            top: 0.0,
            right: 0.0,
            child: Icon(
              LineAwesomeIcons.github,
              size: 50,
              color: Colors.white,
            )
                .animatedBox
                .width(80)
                .height(80)
                .alignCenter
                .roundedFull
                .gray800
                .neumorphic()
                .make()
                .click(() {
              launch("https://github.com/iampawan/VelocityX");
            }).make(),
          ),
          Positioned(
            bottom: 0.0,
            right: 0.0,
            child: Icon(
              LineAwesomeIcons.code,
              size: 50,
              color: Colors.white,
            )
                .animatedBox
                .width(80)
                .height(80)
                .alignCenter
                .roundedFull
                .gray800
                .neumorphic()
                .make()
                .click(() {
              launch("https://github.com/iampawan/VelocityXApp");
            }).make(),
          ),
          Banner(
            message: "Open Source",
            color: VelocityX.gray800,
            location: BannerLocation.topStart,
          ),
          Positioned(
            child: "Made with Flutter using VelocityX"
                .text
                .xl
                .white
                .center
                .make()
                .box
                .p16
                .rounded
                .gray800
                .neumorphic(curve: VelocityCurve.convex)
                .make(),
            bottom: 0.0,
          )
        ],
        fit: StackFit.loose,
      ).p16(),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path p = Path();
    p.lineTo(size.width, 0.0);
    p.lineTo(size.width, size.height);
    p.lineTo(0, 0);
    return p;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

class MyCustomClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path p = Path();
    p.moveTo(size.width, 0.0);
    p.lineTo(0.0, size.height);
    p.lineTo(size.width, size.height);

    return p;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
