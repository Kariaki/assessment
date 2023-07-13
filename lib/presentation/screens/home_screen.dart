import 'package:assessment/config/colors.dart';
import 'package:assessment/presentation/components/base_components.dart';
import 'package:assessment/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../model/crypto_list_model.dart';

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
    List<CryptoListModel> _horizontalListData = [
      CryptoListModel(
          name: 'BTCUSD', percent: '36.77%', image: 'assets/svgs/btcusd.svg'),
      CryptoListModel(
          name: 'ETHUSD', percent: '24.77%', image: 'assets/svgs/eth.svg'),
      CryptoListModel(
          name: 'BTC', percent: '36.07%', image: 'assets/svgs/btc.svg'),
    ];
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
              width: double.infinity,
              height: 168.20,
              decoration: ShapeDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/images/noise.png'),
                  fit: BoxFit.none,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Stack(
                children: [
                  Container(
                    decoration: ShapeDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/rectangle.png'),
                        fit: BoxFit.none,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Wallet',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontFamily: 'Mont',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              height: 40,
                              child: Image.asset(
                                  'assets/images/select_wallet.png'),
                            )
                          ],
                        ),
                        30.spaceHeight(),
                        const Text(
                          'Account Balance',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontFamily: 'Mont',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        20.spaceHeight(),
                        const Text(
                          '\$ 12 480.00',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontFamily: 'e-Ukraine Head',
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            20.spaceHeight(),
            SizedBox(
              height: 140,
              child: Scrollbar(
                  thickness: 5,
                  controller: _scrollController,
                  trackVisibility: true,
                  isAlwaysShown: true,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: _horizontalListData
                          .map((e) => AppComponents.cardComponent1(model: e))
                          .toList(),
                    ),
                  )),
            ),
            20.spaceHeight(),
            ListView(
              physics: const NeverScrollableScrollPhysics(),
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
          AppComponents.mainBottomNavigation(onTap: (index) {}),
    );
  }
}
