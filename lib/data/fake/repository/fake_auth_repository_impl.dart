import 'package:assessment/core/resources/data_state.dart';
import 'package:assessment/domain/entity/login_body.dart';
import 'package:assessment/domain/entity/login_response.dart';
import 'package:assessment/domain/repository/auth_repository.dart';

class FakeAuthRepositoryImpl extends AuthRepository{

  final  username = 'kariaki@gmail.com';
  final password = 'password';
  @override
  Future<DataState<LoginResponseEntity>> login({required LoginEntity entity}) async{

    await Future.delayed(const Duration(seconds: 5));
    if(entity.username==username && entity.password==password){
      return const DataSuccess(LoginResponseEntity(message: 'success'));
    }
    return const DataFailed('Incorrect username or password');
  }


}