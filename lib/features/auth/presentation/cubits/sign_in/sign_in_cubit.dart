import 'package:doc_appointment_app/core/helper/safe_emit.dart';
import 'package:doc_appointment_app/features/auth/data/repos/auth_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit({required this.authRepo}) : super(SignInInitial());
  final AuthRepo authRepo;

  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    safeEmit(SignInLoading());
    try {
      await authRepo.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      safeEmit(SignInSuccess());
    } catch (e) {
      safeEmit(SignInFailure(errorMessage: e.toString()));
    }
  }
}
