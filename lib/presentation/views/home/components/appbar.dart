import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_ui/app/shared/colors.dart';
import 'package:instagram_ui/app/shared/dimensions.dart';

class HomeAppBar {
  static appBar(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).backgroundColor,
      actions: [
        Icon(Icons.add_box_rounded,
            color: KConstantColors.whiteColor, size: 28),
        hSizedBox3,
        Icon(FontAwesomeIcons.facebookMessenger,
            color: KConstantColors.whiteColor, size: 24),
        hSizedBox3
      ],
      title: Image.asset("assets/images/logo.png", scale: 18),
    );
  }
}
