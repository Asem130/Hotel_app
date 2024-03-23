abstract class LoginState {}

final class LoginInitial extends LoginState {}

final class LoginSuccsess extends LoginState {}

final class LoginLoading extends LoginState {}

final class LoginFaliare extends LoginState {
  LoginFaliare({required this.errMessage});
  final String errMessage;
}
