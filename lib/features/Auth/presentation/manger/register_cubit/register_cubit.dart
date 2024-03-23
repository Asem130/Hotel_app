import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotels/features/Auth/presentation/manger/register_cubit/register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  Future<void> userRegister(
      {required String email, required String passward}) async {
    emit(RegisterLoading());
    try {
      var auth = FirebaseAuth.instance;
      UserCredential user = await auth.createUserWithEmailAndPassword(
          email: email, password: passward);
      emit(RegisterSuccsess());
    } on FirebaseAuthException catch (ex) {
      if (ex.code == 'weak-password') {
        emit(RegisterFaliare(errMessage: 'weak password'));
      } else if (ex.code == 'email-already-in-use') {
        emit(RegisterFaliare(errMessage: 'email already in use'));
      }
    } on Exception catch (e) {
      emit(RegisterFaliare(errMessage: e.toString()));
    }
  }
}
