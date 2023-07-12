import 'package:assessment/config/colors.dart';
import 'package:assessment/config/styles.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatefulWidget {
  final Function()? onPressed;
  final String title;


  const PrimaryButton({Key? key,required this.onPressed,required this.title}) : super(key: key);

  @override
  State<PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed:widget.onPressed,
    height: 55,
    minWidth: double.infinity,
    color: AppColors.primaryButtonColor,shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
    child: Text(widget.title,style: TextStyles.loginButtonTextStyle,),);
  }
}
