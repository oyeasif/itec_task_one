part of 'login_bloc.dart';

enum LoginStatus {initial, loading, success, failure}

class LoginState extends Equatable {
  final String email, password;
  final LoginStatus loginStatus;

  const LoginState({this.email = '', this.password = '', this.loginStatus = LoginStatus.initial,});

  LoginState copyWith({String? email, String? password, LoginStatus? loginStatus}) {
    return LoginState(
        email: email ?? this.email,
        password: password ?? this.password,
        loginStatus: loginStatus ?? this.loginStatus,
    );
  }

  @override
  List<Object?> get props => [email, password, loginStatus];
}
