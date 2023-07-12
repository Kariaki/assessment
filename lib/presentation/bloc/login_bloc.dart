import 'package:assessment/core/resources/data_state.dart';
import 'package:assessment/data/fake/repository/fake_auth_repository_impl.dart';
import 'package:assessment/domain/entity/login_body.dart';
import 'package:assessment/domain/repository/auth_repository.dart';
import 'package:assessment/domain/usecase/login_usecase.dart';
import 'login/login_bloc_event.dart';
import 'login/login_bloc_state.dart';
import 'package:bloc/bloc.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {

  LoginState get initialState => LoginInitial();

  LoginBloc(super.initialState);

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is LoginButtonPressed) {
      yield LoginLoading();
      final loginEntity =
          LoginEntity(username: event.email, password: event.password);
      final result = await LoginUseCase().call(loginEntity);
      if (result is DataSuccess) {
        yield LoginSuccess();
      } else if (result is DataFailed) {
        final errorResult = result as DataFailed;
        yield LoginError(errorResult.toString());
      }
    }
  }

}
