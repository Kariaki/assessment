import 'package:assessment/config/dimens.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class TextStyles {

  static const mainHeaderTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontFamily: 'Mont',
  );

  static const loginButtonTextStyle = TextStyle(
    color: AppColors.black,
    fontSize: 15,
    fontFamily: 'Mont',
    fontWeight: FontWeight.w600,
  );
  static const loginHeaderTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontFamily: 'Mont',
    fontWeight: FontWeight.w700,
  );

  static const mainHeaderSubTextStyle = TextStyle(
    color: Color(0xFF8B8B8B),
    fontSize: 13,
    fontFamily: 'Mont',
  );

}

class TextInputStyles {
  static InputDecoration loginTextInputStyle({required String hint}) =>
      InputDecoration(
          filled: true,
          fillColor: AppColors.textInputColor,
          hintText: hint,
          border: OutlineInputBorder(
              borderRadius:
                  BorderRadius.circular(Dimens.textInputBoarderRadius)));
}

class CardStyles {

  static ShapeDecoration mainCardStyle = ShapeDecoration(
    color: AppColors.loginCardColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
  );
}
