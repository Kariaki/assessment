import 'package:assessment/domain/entity/login_response.dart';

class LoginResponse{
  final String message;

  const LoginResponse({required this.message});

  factory LoginResponse.fromJson(Map<String,dynamic>json){
    return LoginResponse(message: json['message']);
  }

  LoginResponseEntity toLoginResponseEntity(){
    return LoginResponseEntity(message: message);
  }
}