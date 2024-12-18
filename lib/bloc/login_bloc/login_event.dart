part of 'login_bloc.dart';

class LoginEvent extends Equatable {

  const LoginEvent();

  @override
  // TODO: implement props
  List<Object?> get props => [];

}

class EmailChanged extends LoginEvent {

  final String email;

  const EmailChanged ({
     required this.email,
});

  @override
  List<Object?> get props => [email];

}

class PasswordChanged extends LoginEvent {

  final String password;

  const PasswordChanged ({
    required this.password,
});

  @override
  List<Object?> get props => [password];

}

class SubmitButton extends LoginEvent {}