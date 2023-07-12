import 'package:assessment/config/colors.dart';
import 'package:assessment/presentation/components/base_components.dart';
import 'package:assessment/utils/extensions.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ScrollController _scrollController;

  @override
  void initState() {
    // TODO: implement initState
    _scrollController = ScrollController();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppComponents.mainAppbar(),
      body: SingleChildScrollView(
        child: AppComponents.pagePadding(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            20.spaceHeight(),
            Container(
              height: 168,
              width: double.infinity,
              color: Colors.redAccent,
            ),
            20.spaceHeight(),
            SizedBox(
              height: 140,
              child: Scrollbar(
                thickness: 5,
                controller: _scrollController,
                trackVisibility: true,
                isAlwaysShown:true,
                child:  Padding(padding: EdgeInsets.only(bottom: 5),child: ListView(

                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    AppComponents.cardComponent1(),
                    AppComponents.cardComponent1(),
                    AppComponents.cardComponent1(),
                    AppComponents.cardComponent1(),
                    AppComponents.cardComponent1(),
                  ],
                ),)
              ),
            ),
            20.spaceHeight(),
            ListView(physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                AppComponents.cardComponent2(),
                AppComponents.cardComponent2(),
                AppComponents.cardComponent2(),
              ],
            )
          ],
        )),
      ),
      bottomNavigationBar:
          AppComponents.mainBottomNavigation(onTap: (index) {

          }),
    );
  }
}
