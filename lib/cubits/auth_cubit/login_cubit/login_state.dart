part of 'login_cubit.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {}

class LoginFailuer extends LoginState {
  final String errMassage;

  LoginFailuer({required this.errMassage});
}
