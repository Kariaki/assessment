import 'package:flutter/material.dart';


extension IntExtensions on int{

  Widget spaceWidth(){
    return SizedBox(
      width: toDouble(),
    );
  }
  Widget spaceHeight(){
    return SizedBox(
      height: toDouble(),
    );
  }
  Widget divide(){
    return Divider(
      height: toDouble(),
    );
  }
}

extension ContextExtensions on BuildContext{
  void push(Widget route) {
    Navigator.push(this, MaterialPageRoute(builder: (context) => route));
  }
  void pushRemoveUntil(Widget route) {
    Navigator.pushAndRemoveUntil(
        this,
        MaterialPageRoute(builder: (context) => route),
            (Route<dynamic> route) => false);
  }
  void pushReplace(Widget route) {
    Navigator.pushReplacement(this,  MaterialPageRoute(builder: (context) => route),);
  }
}
extension DoubleExtensions on double{
  Widget spaceWidth(){
    return SizedBox(
      width: this,
    );
  }

  Widget divide(){
    return Divider(
      height: toDouble(),
    );
  }

  Widget spaceHeight(){
    return SizedBox(
      height: this,
    );
  }
}