import 'package:assessment/config/string_resources.dart';
import 'package:assessment/presentation/components/base_components.dart';
import 'package:assessment/presentation/components/buttons.dart';
import 'package:assessment/utils/extensions.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppComponents.loginAppbar(onBackPress: (){}),
      body: AppComponents.pagePadding(child: Column(
        children: [
          20.spaceHeight(),
          Container(
            width: double.infinity,
            height: 300,
            padding: const EdgeInsets.all(20),
            decoration: ShapeDecoration(
              color: Color(0xFF213345),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 172,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 74,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Email Address',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'Mont',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 8),
                               SizedBox(
                                 height: 45,
                                 child:  TextField(

                                   decoration: InputDecoration(
                                       filled: true,
                                       fillColor: Color(0xB20E2033),
                                       hintText: StringResource.emailHint,
                                       hintStyle: TextStyle(
                                         color: Color(0xFF8B8B8B),
                                         fontSize: 12,
                                         fontFamily: 'Noto Sans Bengali UI',
                                         fontWeight: FontWeight.w400,
                                       ),
                                       enabledBorder: OutlineInputBorder(
                                           borderRadius: BorderRadius.circular(50),
                                           borderSide: const BorderSide(color: Colors.transparent)),
                                       border: OutlineInputBorder(
                                           borderRadius: BorderRadius.circular(50),
                                           borderSide: const BorderSide(color: Colors.transparent)),
                                       focusedBorder: OutlineInputBorder(
                                           borderSide: const BorderSide(color: Colors.transparent),
                                           borderRadius: BorderRadius.circular(50))
                                   ),
                                 ),
                               ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 24),
                          Container(
                            width: double.infinity,
                            height: 74,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Password',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'Mont',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Container(
                                  width: double.infinity,
                                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 16),
                                  decoration: ShapeDecoration(
                                    color: Color(0xB20E2033),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Not less than 8 characters',
                                        style: TextStyle(
                                          color: Color(0xFF8B8B8B),
                                          fontSize: 12,
                                          fontFamily: 'Noto Sans Bengali UI',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      const SizedBox(width: 107),
                                      Container(
                                        width: 13,
                                        height: 13,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(),
                                        child: Stack(children: [

                                        ]),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 32),
                    PrimaryButton(onPressed: (){}, title: StringResource.login),
                  ],
                ),

              ],
            ),
          ),

          20.spaceHeight(),
        SizedBox(
          height: 30,
          child:   Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 101,
                height: 1,
                decoration: BoxDecoration(color: Color(0xFF213345)),
              ),
              const SizedBox(width: 20),
              Text(
                'OR',
                style: TextStyle(
                  color: Color(0xFF8B8B8B),
                  fontSize: 16,
                  fontFamily: 'Mont',
                  fontWeight: FontWeight.w600,

                ),
              ),
              const SizedBox(width: 20),
              Container(
                width: 100,
                height: 1,
                decoration: BoxDecoration(color: Color(0xFF213345)),
              ),
            ],
          ),
        ),
          20.spaceHeight(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: (){}, icon: AppIcons.googleIcon),
              10.spaceWidth(),
              IconButton(onPressed: (){}, icon: AppIcons.appleIcon)
            ],
          ),
          10.spaceHeight(),
          SizedBox(
            width: 181,
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Don’t have an account?',
                    style: TextStyle(
                      color: Color(0xFF8B8B8B),
                      fontSize: 12,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: ' Sign up',
                    style: TextStyle(
                      color: Color(0xFFE9B96B),
                      fontSize: 12,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
