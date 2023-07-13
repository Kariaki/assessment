import 'package:assessment/config/string_resources.dart';
import 'package:assessment/presentation/bloc/login/login_bloc_event.dart';
import 'package:assessment/presentation/bloc/login/login_bloc_state.dart';
import 'package:assessment/presentation/bloc/login_bloc.dart';
import 'package:assessment/presentation/components/base_components.dart';
import 'package:assessment/presentation/components/buttons.dart';
import 'package:assessment/presentation/screens/home_screen.dart';
import 'package:assessment/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  String? emailError;
  String? passwordError;
  bool _isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final LoginBloc loginBloc = BlocProvider.of<LoginBloc>(context);
    return Scaffold(
        appBar: AppComponents.loginAppbar(onBackPress: () {}),
        body: BlocConsumer<LoginBloc, LoginState>(
          listener: (context, state) {
            setState(() {
              _isLoading = state is LoginLoading;
            });
            if (state is LoginSuccess) {
              context.push(const HomeScreen());
              return;
            }
            if(state is LoginError){
              final error = state as LoginError;
              ScaffoldMessenger.of(context).showSnackBar(
                   SnackBar(content: Text(error.message)));
              return;
            }
          },
          builder: (context, state) {
            return AppComponents.pagePadding(
                child: SingleChildScrollView(
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  20.spaceHeight(),
                  Container(
                    width: double.infinity,
                    height: 300,
                    padding: const EdgeInsets.all(20),
                    decoration: ShapeDecoration(
                      color: const Color(0xFF213345),
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
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    StringResource.emailAddress,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontFamily: 'Mont',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  8.spaceHeight(),
                                  SizedBox(
                                    height: 45,
                                    child: TextField(
                                      controller: emailController,
                                      style: TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                          filled: true,
                                          fillColor: const Color(0xB20E2033),
                                          hintText: StringResource.emailHint,
                                          hintStyle: const TextStyle(
                                            color: Color(0xFF8B8B8B),
                                            fontSize: 12,
                                            fontFamily: 'Noto Sans Bengali UI',
                                            fontWeight: FontWeight.w400,
                                          ),
                                          errorBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              borderSide: const BorderSide(
                                                  color: Colors.transparent)),
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              borderSide: const BorderSide(
                                                  color: Colors.transparent)),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              borderSide: const BorderSide(
                                                  color: Colors.transparent)),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: Colors.transparent),
                                              borderRadius:
                                                  BorderRadius.circular(50))),
                                    ),
                                  ),
                                  24.spaceHeight(),
                                 const  Text(
                                    StringResource.password,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontFamily: 'Mont',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  8.spaceHeight(),
                                  SizedBox(
                                    height: 45,
                                    child: TextField(

                                      style: TextStyle(color: Colors.white),
                                      controller: passwordController,
                                      decoration: InputDecoration(
                                          filled: true,

                                          fillColor: const Color(0xB20E2033),

                                          hintText: StringResource.passwordHint,
                                          suffix: InkWell(
                                            onTap: () {},
                                            child: AppIcons.eye,
                                          ),
                                          hintStyle: const TextStyle(
                                            color: Color(0xFF8B8B8B),
                                            fontSize: 12,
                                            fontFamily: 'Noto Sans Bengali UI',
                                            fontWeight: FontWeight.w400,
                                          ),
                                          errorBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              borderSide: const BorderSide(
                                                  color: Colors.transparent)),
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              borderSide: const BorderSide(
                                                  color: Colors.transparent)),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              borderSide: const BorderSide(
                                                  color: Colors.transparent)),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: Colors.transparent),
                                              borderRadius:
                                                  BorderRadius.circular(50))),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 32),
                            PrimaryButton(
                                isLoading: _isLoading,
                                onPressed: () {
                                  final email = emailController.text.toString();
                                  final password =
                                      passwordController.text.toString();
                                  final checkState =
                                      handleState(email, password);
                                  if (!checkState) {
                                    return;
                                  }

                                  loginBloc.add(LoginButtonPressed(
                                      email: email, password: password));
                                },
                                title: StringResource.login),
                          ],
                        ),
                      ],
                    ),
                  ),
                  20.spaceHeight(),
                  SizedBox(
                    height: 30,
                    child: Row(
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
                      IconButton(onPressed: () {}, icon: AppIcons.googleIcon),
                      10.spaceWidth(),
                      IconButton(onPressed: () {}, icon: AppIcons.appleIcon)
                    ],
                  ),
                  10.spaceHeight(),
                  const SizedBox(
                    width: 181,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: StringResource.dontHaveAnAccount,
                            style: TextStyle(
                              color: Color(0xFF8B8B8B),
                              fontSize: 12,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text: StringResource.signUp,
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
              ),
            ));
          },
        ));
  }

  bool handleState(email, password) {
    if (email.isEmpty) {
      setState(() {
        emailError = 'This field can not be blank';
      });
      return false;
    }
    if (password.isEmpty) {
      setState(() {
        passwordError = 'This field can not be blank';
      });
      return false;
    }
    if (password.toString().length < 8) {
      setState(() {
        passwordError = 'Password should be at least 8 characters';
      });
      return false;
    }
    return true;
  }
}
