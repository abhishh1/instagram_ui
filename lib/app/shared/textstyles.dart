import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_ui/cubit/theme/cubit/theme_cubit.dart';
import 'colors.dart';
import 'package:sizer/sizer.dart';
import 'fonts.dart';

class KCustomTextstyle {
  static kBold(BuildContext context, double fontSize) {
    ThemeCubit themeNotifier(bool renderUI) =>
        BlocProvider.of<ThemeCubit>(context, listen: renderUI);
    return TextStyle(
        fontFamily: KConstantFonts.PoppinsBold,
        fontSize: fontSize.sp,
        color: themeNotifier(true).isDark
            ? KConstantColors.texturedWhiteColor
            : KConstantColors.bgColor);
  }

  static kRegular(BuildContext context, double fontSize) {
    ThemeCubit themeNotifier(bool renderUI) =>
        BlocProvider.of<ThemeCubit>(context, listen: renderUI);
    return TextStyle(
        fontFamily: KConstantFonts.PoppinsRegular,
        fontSize: fontSize.sp,
        color: themeNotifier(true).isDark
            ? KConstantColors.texturedWhiteColor
            : KConstantColors.bgColor);
  }

  static kMedium(BuildContext context, double fontSize) {
    ThemeCubit themeNotifier(bool renderUI) =>
        BlocProvider.of<ThemeCubit>(context, listen: renderUI);
    return TextStyle(
        fontFamily: KConstantFonts.PoppinsM,
        fontSize: fontSize.sp,
        color: themeNotifier(true).isDark
            ? KConstantColors.texturedWhiteColor
            : KConstantColors.bgColor);
  }
}
