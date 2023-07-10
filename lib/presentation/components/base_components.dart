import 'package:assessment/config/dimens.dart';
import 'package:flutter/cupertino.dart';

class AppComponents {

  static  pagePadding({required Widget child}) =>
      Padding(padding: const EdgeInsets.only(
          left: Dimens.pagePadding, right: Dimens.pagePadding), child: child,);

}