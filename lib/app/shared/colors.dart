import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_ui/cubit/theme/cubit/theme_cubit.dart';

class KConstantColors {
  static const bgColorFaint = Color.fromRGBO(36, 37, 38, 1);
  static const redColor = Colors.red;
  static const bgColor = Color.fromRGBO(10, 10, 10, 1);
  static const darkColor = Color.fromRGBO(10, 15, 10, 1);
  static const whiteColor = Colors.white;
  static const greenColor = Color.fromRGBO(39, 194, 163, 1);
  static const yellowColor = Color.fromRGBO(254, 228, 64, 1);
  static const textColor = Color.fromRGBO(154, 154, 154, 1);
  static const blueColor = Colors.lightBlueAccent;
  static const texturedWhiteColor = Color.fromRGBO(217, 217, 217, 1);
  static Color conditionalColor({required BuildContext context}) {
    ThemeCubit themeNotifier(bool renderUI) =>
        BlocProvider.of<ThemeCubit>(context, listen: renderUI);
    return themeNotifier(true).isDark
        ? KConstantColors.texturedWhiteColor
        : KConstantColors.bgColor;
  }
}
