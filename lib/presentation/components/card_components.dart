import 'package:assessment/config/colors.dart';
import 'package:assessment/presentation/model/crypto_list_model.dart';
import 'package:assessment/utils/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../config/styles.dart' as R;

class HorizontalCardComponent extends StatefulWidget {
  final CryptoListModel model;
  const HorizontalCardComponent({Key? key,required this.model}) : super(key: key);

  @override
  State<HorizontalCardComponent> createState() =>
      _HorizontalCardComponentState();
}

class _HorizontalCardComponentState extends State<HorizontalCardComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 116,
      height: 132,
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: ShapeDecoration(
        color: const Color(0xFF213345),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28),
        ),
      ),
     child: Column(
       mainAxisAlignment: MainAxisAlignment.start,
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         SvgPicture.asset(widget.model.image),
         18.spaceHeight(),
         Text(
           widget.model.name,
           style: TextStyle(
             color: Colors.white24,
             fontSize: 13,
             fontFamily: 'Mont',
           ),
         ),
         const SizedBox(height: 4),
         Text(
           widget.model.percent,
           style: TextStyle(
             color: Colors.white,
             fontSize: 20,
             fontFamily: 'e-Ukraine Head',
             fontWeight: FontWeight.w500,
           ),
         ),
       ],
     ),
    );
  }
}


class ListItemComponent extends StatefulWidget {
  const ListItemComponent({Key? key}) : super(key: key);

  @override
  State<ListItemComponent> createState() => _ListItemComponentState();
}

class _ListItemComponentState extends State<ListItemComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 82,
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: R.CardStyles.mainCardStyle,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 175,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 175,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'EMA Cross 50  200 ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Mont',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text: '+',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: ' ADX ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Mont',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text: '(',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: 'Long',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Mont',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text: ')',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Distribution Bot',
                  style: TextStyle(
                    color: Color(0xFF8B8B8B),
                    fontSize: 12,
                    fontFamily: 'Mont',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 52),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
            decoration: ShapeDecoration(
              color: Color(0x1993FFCD),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 6,
                  height: 6,
                  decoration: const ShapeDecoration(
                    color: AppColors.activeColor,
                    shape: OvalBorder(),
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  'Active',
                  style: TextStyle(
                    color: AppColors.activeColor,
                    fontSize: 12,
                    fontFamily: 'Mont',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

