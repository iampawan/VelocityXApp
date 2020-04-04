import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:velocityx_app/pages/box_page.dart';
import 'package:velocityx_app/pages/card_page.dart';
import 'package:velocityx_app/pages/colors_page.dart';
import 'package:velocityx_app/pages/flex_page.dart';
import 'package:velocityx_app/pages/home_page.dart';
import 'package:velocityx_app/pages/list_page.dart';
import 'package:velocityx_app/pages/padding_page.dart';
import 'package:velocityx_app/pages/size_box.dart';
import 'package:velocityx_app/pages/text_page.dart';

class VelocityDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(
              LineAwesomeIcons.home,
              color: Colors.white,
            ),
            title: "Home".text.white.xl2.make(),
            onTap: () => context.nav.pushReplacementNamed(HomePage.routeName),
          ),
          ListTile(
            leading: Icon(
              LineAwesomeIcons.paint_brush,
              color: Colors.white,
            ),
            title: "Colors".text.white.xl2.make(),
            onTap: () => context.nav.pushReplacementNamed(ColorsPage.routeName),
          ),
          ListTile(
            leading: Icon(
              LineAwesomeIcons.text_height,
              color: Colors.white,
            ),
            title: "Padding".text.white.xl2.make(),
            onTap: () => context.nav.pushReplacementNamed(PaddingPage.routeName),
          ),
          ListTile(
            leading: Icon(
              LineAwesomeIcons.edit,
              color: Colors.white,
            ),
            title: "Text".text.white.xl2.make(),
            onTap: () => context.nav.pushReplacementNamed(TextPage.routeName),
          ),
          ListTile(
            leading: Icon(
              LineAwesomeIcons.square,
              color: Colors.white,
            ),
            title: "Box".text.white.xl2.make(),
            onTap: () => context.nav.pushReplacementNamed(BoxPage.routeName),
          ),
          ListTile(
            leading: Icon(
              LineAwesomeIcons.credit_card,
              color: Colors.white,
            ),
            title: "Card".text.white.xl2.make(),
            onTap: () => context.nav.pushReplacementNamed(CardPage.routeName),
          ),
          ListTile(
            leading: Icon(
              LineAwesomeIcons.bold,
              color: Colors.white,
            ),
            title: "Size Box".text.white.xl2.make(),
            onTap: () => context.nav.pushReplacementNamed(SizeBoxPage.routeName),
          ),
         
          ListTile(
            leading: Icon(
              LineAwesomeIcons.stack_exchange,
              color: Colors.white,
            ),
            title: "Flex".text.white.xl2.make(),
            onTap: () => context.nav.pushReplacementNamed(FlexPage.routeName),
          ),
           "Documentation Pending".text.white.make().p20(),
          ListTile(
            leading: Icon(
              LineAwesomeIcons.list,
              color: Colors.white,
            ),
            title: "List".text.white.xl2.make(),
            onTap: () => context.nav.pushReplacementNamed(ListPage.routeName),
          ),
          ListTile(
            leading: Icon(
              LineAwesomeIcons.align_center,
              color: Colors.white,
            ),
            title: "Object".text.white.xl2.make(),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              LineAwesomeIcons.circle_o_notch,
              color: Colors.white,
            ),
            title: "Opacity".text.white.xl2.make(),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              LineAwesomeIcons.rotate_left,
              color: Colors.white,
            ),
            title: "Transform".text.white.xl2.make(),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              LineAwesomeIcons.code,
              color: Colors.white,
            ),
            title: "Velocity Widgets".text.white.xl2.make(),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              LineAwesomeIcons.wrench,
              color: Colors.white,
            ),
            title: "Utilities".text.white.xl2.make(),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              LineAwesomeIcons.adjust,
              color: Colors.white,
            ),
            title: "Responsive UI".text.white.xl2.make(),
            onTap: () {},
          ),
        ],
      ).box.teal600.make(),
    );
  }
}
