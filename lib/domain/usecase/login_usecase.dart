import 'dart:ffi';

import 'package:assessment/core/resources/data_state.dart';
import 'package:assessment/core/usecase/usecase.dart';
import 'package:assessment/data/remote/repository/api_auth_repository_impl.dart';
import 'package:assessment/domain/entity/login_body.dart';
import 'package:assessment/domain/entity/login_response.dart';
import 'package:assessment/domain/repository/auth_repository.dart';
import 'package:dio/dio.dart';
import '../../data/fake/repository/fake_auth_repository_impl.dart';

class LoginUseCase implements UseCase<DataState<LoginResponseEntity>, LoginEntity> {
  final AuthRepository _repository = AuthRepositoryImplementation();

  @override
  Future<DataState<LoginResponseEntity>> call(LoginEntity params) {
    return _repository.login(entity: params);
  }
}
