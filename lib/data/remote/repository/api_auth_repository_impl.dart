import 'package:assessment/core/resources/data_state.dart';
import 'package:assessment/domain/entity/login_body.dart';
import 'package:assessment/domain/entity/login_response.dart';
import 'package:assessment/domain/repository/auth_repository.dart';

class AuthRepositoryImplementation extends AuthRepository{
  @override
  Future<DataState<LoginResponseEntity>> login({required LoginEntity entity}) {
    // TODO: implement login
    throw UnimplementedError();
  }

}