import 'package:assessment/core/resources/data_state.dart';
import 'package:assessment/domain/entity/login_body.dart';
import 'package:assessment/domain/entity/login_response.dart';

abstract class AuthRepository{

  Future<DataState<LoginResponseEntity>> login({required LoginEntity entity});

}