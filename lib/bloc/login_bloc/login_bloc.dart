
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart' as http;
import 'package:itec_task_one/res/app_url.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {

  LoginBloc() : super(const LoginState()) {

    on<EmailChanged>(onEmailChanged);
    on<PasswordChanged>(onPasswordChanged);
    on<SubmitButton>(onSubmit);

  }

  void onEmailChanged (EmailChanged event, Emitter<LoginState> emit) {
    emit(state.copyWith(email: event.email));
  }

  void onPasswordChanged (PasswordChanged event, Emitter<LoginState> emit) {
    emit(state.copyWith(password: event.password));
  }

  void onSubmit (SubmitButton event , Emitter<LoginState> emit) async {

    emit(
      state.copyWith(loginStatus: LoginStatus.loading,
      ),
    );
    
    try {
      final response = await http.post(Uri.parse(AppUrl.loginUrl),
      body: {
        'email' : state.email,
        'password' : state.password,
      });
      if(response.statusCode == 200){
        emit(
          state.copyWith(loginStatus: LoginStatus.success,
          ),
        );
        log('Login Successfully');
      }
      else {
        emit(
          state.copyWith(loginStatus: LoginStatus.failure,
          ),
        );
        log('Login failed');
      }

      log(response.statusCode.toString());
    }
    catch(e){
      e.toString();
      emit(
        state.copyWith(loginStatus: LoginStatus.failure,
        ),
      );
    }
    
  }
}
