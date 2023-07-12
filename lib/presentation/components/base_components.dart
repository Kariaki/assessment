import 'package:assessment/config/colors.dart';
import 'package:assessment/config/dimens.dart';
import 'package:assessment/config/styles.dart';
import 'package:assessment/presentation/components/bottom_navigation.dart';
import 'package:assessment/presentation/components/card_components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../config/string_resources.dart';
import 'app_bar.dart';

class AppComponents {

  static  pagePadding({required Widget child}) =>
      Padding(padding: const EdgeInsets.only(
          left: Dimens.pagePadding, right: Dimens.pagePadding), child: child,);

  static Widget cardComponent1() => HorizontalCardComponent();
  static Widget cardComponent2() => ListItemComponent();
  static BottomNavigationBarItem bottomNavigationBarItem({required Icon icon}) {
    return BottomNavigationBarItem(
      icon: icon,
    );
  }
  static Widget mainBottomNavigation({required Function(int)onTap}){
    return MainBottomNavigation(onTap: onTap);
  }
  static AppBar mainAppbar(){
    return AppBar(
      backgroundColor: AppColors.backgroundColor,
      shadowColor: Colors.transparent,
      title: appBarLeading(),
      automaticallyImplyLeading: false,
      actions: [
        IconButton(onPressed: (){}, icon: AppIcons.notificationIcon)
      ],
    );
  }

  static AppBar loginAppbar({required Function() onBackPress}){
    return AppBar(

      backgroundColor: AppColors.backgroundColor,
      shadowColor: Colors.transparent,
      centerTitle: true,
      leading: IconButton(onPressed: onBackPress, icon: const Icon(Icons.arrow_back_ios_new,color: Colors.white,)),
      title: const Text(StringResource.login),
      titleTextStyle: TextStyles.loginHeaderTextStyle,
    );
  }

}

class AppIcons{

  static Widget activityIcon = SvgPicture.asset(
    'assets/svgs/activity.svg',

  );
  static Widget eye =  SvgPicture.asset(
    'assets/svgs/eyeOff.svg',
  );
  static Widget googleIcon = SvgPicture.asset(
    'assets/svgs/google.svg',
  );
  static Widget appleIcon = SvgPicture.asset(
    'assets/svgs/apple.svg',
  );
  static Widget notificationIcon = SvgPicture.asset(
    'assets/svgs/notification.svg',
  );
  static Widget graphIcon = SvgPicture.asset(
    'assets/svgs/graph.svg',
  );
  static Widget settingsIcon = SvgPicture.asset(
    'assets/svgs/settings.svg',
  );
}