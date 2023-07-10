import 'package:assessment/config/dimens.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class TextStyles {}

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

class CardStyles {}
