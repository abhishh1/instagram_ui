import 'package:flutter/material.dart';
import 'package:instagram_ui/presentation/views/home/base.view.dart';
import 'package:instagram_ui/presentation/views/home/home.view.dart';
import 'package:instagram_ui/presentation/views/splash/splash.view.dart';

class AppRouter {
  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/splash":
        return MaterialPageRoute(builder: (_) => SplashView());
      case "/home":
        return MaterialPageRoute(builder: (_) => HomeView());
      case "/base":
        return MaterialPageRoute(builder: (_) => BaseView());
    }
  }
}
