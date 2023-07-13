import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../config/colors.dart';
import 'base_components.dart';


class MainBottomNavigation extends StatefulWidget {
  final Function(int) onTap;
  const MainBottomNavigation({Key? key,required this.onTap}) : super(key: key);

  @override
  State<MainBottomNavigation> createState() => _MainBottomNavigationState();
}

class _MainBottomNavigationState extends State<MainBottomNavigation> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 90,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        child: BottomNavigationBar(
          backgroundColor: AppColors.bottomNavColor,
          currentIndex: _currentIndex,
          iconSize: 30,
          onTap: (index){
            setState(() {
              _currentIndex=index;
            });
            widget.onTap(index);
          },
          showSelectedLabels: false, // Hide labels of selected items
          showUnselectedLabels: false, // Hide labels of unselected items
          items: [
            BottomNavigationBarItem(
                icon: AppIcons.graphIcon,
                label: ''
            ),
            BottomNavigationBarItem(
                icon:AppIcons.activityIcon,
                label: ''
            ),
            BottomNavigationBarItem(
                icon:AppIcons.settingsIcon,
                label: ''
            ),
          ],
        ),
      ),
    );
  }
}
