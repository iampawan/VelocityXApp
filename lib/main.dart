import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:velocityx_app/pages/box_page.dart';
import 'package:velocityx_app/pages/card_page.dart';
import 'package:velocityx_app/pages/colors_page.dart';
import 'package:velocityx_app/pages/flex_page.dart';
import 'package:velocityx_app/pages/home_page.dart';
import 'package:velocityx_app/pages/list_page.dart';
import 'package:velocityx_app/pages/padding_page.dart';
import 'package:velocityx_app/pages/size_box.dart';
import 'package:velocityx_app/pages/splash_page.dart';
import 'package:velocityx_app/pages/text_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VelocityX',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        textTheme: GoogleFonts.latoTextTheme(),
        appBarTheme: AppBarTheme(
            color: VelocityX.whiteColor,
            textTheme: GoogleFonts.latoTextTheme().apply(
              bodyColor: Colors.black,
            ),
            iconTheme: IconThemeData(color: Colors.black)),
      ),
      routes: {
        SplashPage.routeName: (context) => SplashPage(),
        HomePage.routeName: (context) => HomePage(),
        ColorsPage.routeName: (context) => ColorsPage(),
        PaddingPage.routeName: (context) => PaddingPage(),
        TextPage.routeName: (context) => TextPage(),
        BoxPage.routeName: (context) => BoxPage(),
        CardPage.routeName: (context) => CardPage(),
        SizeBoxPage.routeName: (context) => SizeBoxPage(),
        FlexPage.routeName:(context)=>FlexPage(),
        ListPage.routeName:(context)=>ListPage()
      },
    );
  }
}
