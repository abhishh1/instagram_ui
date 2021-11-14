import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_ui/app/routes/app.routes.dart';
import 'package:instagram_ui/app/shared/colors.dart';
import 'package:sizer/sizer.dart';
import 'cubit/theme/cubit/theme_cubit.dart';
import 'custom_bloc_providers.dart';

void main() {
  runApp(Core());
}

class Lava extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      ThemeCubit themeCubit =
          BlocProvider.of<ThemeCubit>(context, listen: true);
      return MaterialApp(
          theme: ThemeData(
              backgroundColor: themeCubit.isDark
                  ? KConstantColors.bgColor
                  : KConstantColors.texturedWhiteColor),
          initialRoute: "/base",
          onGenerateRoute: AppRouter.generateRoute,
          debugShowCheckedModeBanner: false);
    });
  }
}
