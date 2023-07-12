import 'package:assessment/utils/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../config/styles.dart' as R;




Widget appBarLeading() {
  return Padding(padding:const EdgeInsets.only(top: 5),child: Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      const SizedBox(
        width: 40,
        height: 40,
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/images/person.png'),
        ),
      ),
      10.spaceWidth(),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children:  [
          const Text('Hey Jacobs',style: R.TextStyles.mainHeaderTextStyle,),
          5.spaceHeight(),
          const Text('Welcome back',style: R.TextStyles.mainHeaderSubTextStyle,)
        ],
      )
    ],
  ),);
}
