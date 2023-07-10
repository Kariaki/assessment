import 'package:flutter/material.dart';

class PrimaryButton extends StatefulWidget {
  final Function()? onPressed;

  const PrimaryButton({Key? key,required this.onPressed}) : super(key: key);

  @override
  State<PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed:widget.onPressed,);
  }
}
