import 'package:assessment/config/colors.dart';
import 'package:assessment/config/styles.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatefulWidget {
  final Function()? onPressed;
  final String title;
  final bool isLoading;


  const PrimaryButton({Key? key,required this.onPressed,this.isLoading=false,required this.title}) : super(key: key);

  @override
  State<PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        MaterialButton(onPressed: widget.isLoading?null:widget.onPressed,
          height: 55,
          minWidth: double.infinity,
          disabledColor: Colors.grey,
          color: AppColors.primaryButtonColor,shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text(widget.title,style: TextStyles.loginButtonTextStyle,),),
       widget.isLoading? const Center(
          child: SizedBox(
            width: 18,
            height: 18,
            child: CircularProgressIndicator(
              color: AppColors.primaryButtonColor,
            ),
          ),
        ):SizedBox()
      ],
    );
  }
}
