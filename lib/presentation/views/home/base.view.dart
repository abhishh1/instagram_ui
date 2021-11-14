import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_ui/app/shared/colors.dart';
import 'package:instagram_ui/presentation/views/home/home.view.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class BaseView extends StatefulWidget {
  const BaseView({Key? key}) : super(key: key);
  @override
  _BaseViewState createState() => _BaseViewState();
}

class _BaseViewState extends State<BaseView> {
  PersistentTabController pageController = new PersistentTabController();
  @override
  void initState() {
    pageController = PersistentTabController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
            icon: Icon(FontAwesomeIcons.home, size: 20),
            activeColorPrimary:
                KConstantColors.conditionalColor(context: context),
            inactiveColorPrimary: CupertinoColors.systemGrey),
        PersistentBottomNavBarItem(
            icon: Icon(Icons.search),
            activeColorPrimary: CupertinoColors.activeBlue,
            inactiveColorPrimary: CupertinoColors.systemGrey),
        PersistentBottomNavBarItem(
            icon: Icon(Icons.add_box_outlined, size: 20),
            activeColorPrimary: CupertinoColors.activeBlue,
            inactiveColorPrimary: CupertinoColors.systemGrey),
        PersistentBottomNavBarItem(
            icon: Icon(CupertinoIcons.music_note, size: 20),
            activeColorPrimary: CupertinoColors.activeBlue,
            inactiveColorPrimary: CupertinoColors.systemGrey),
        PersistentBottomNavBarItem(
            icon: Icon(CupertinoIcons.person, size: 20),
            activeColorPrimary: CupertinoColors.activeBlue,
            inactiveColorPrimary: CupertinoColors.systemGrey),
      ];
    }

    return Container(
      color: Theme.of(context).backgroundColor,
      child: PersistentTabView(
        context,
        controller: pageController,
        screens: [
          HomeView(),
          Container(),
          Container(),
          Container(),
          Container(),
        ],
        items: _navBarsItems(),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        confineInSafeArea: true,
        backgroundColor: Theme.of(context).backgroundColor,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        itemAnimationProperties: ItemAnimationProperties(
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimation(
            animateTabTransition: true,
            curve: Curves.ease,
            duration: Duration(milliseconds: 200)),
        navBarStyle: NavBarStyle.style6,
      ),
    );
  }
}
