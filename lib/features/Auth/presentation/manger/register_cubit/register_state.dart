abstract class RegisterState {}

final class RegisterInitial extends RegisterState {}

final class RegisterSuccsess extends RegisterState {}

final class RegisterLoading extends RegisterState {}

final class RegisterFaliare extends RegisterState {
  RegisterFaliare({required this.errMessage});
  final String errMessage;
}
