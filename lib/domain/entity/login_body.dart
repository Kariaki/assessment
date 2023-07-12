import 'package:assessment/data/remote/model/login_model.dart';

class LoginEntity{
  final String username;
  final String password;

  const LoginEntity({required this.username,required this.password});

  LoginModel toLoginModel(){
    return LoginModel(username: username, password: password);
  }

}