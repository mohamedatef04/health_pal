import 'package:doc_appointment_app/core/helper/safe_emit.dart';
import 'package:doc_appointment_app/features/auth/data/models/user_model.dart';
import 'package:doc_appointment_app/features/auth/data/repos/auth_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit({required this.authRepo}) : super(RegisterInitial());
  final AuthRepo authRepo;

  Future<void> register({
    required UserModel userModel,
  }) async {
    safeEmit(RegisterLoading());
    try {
      final userId = await authRepo.registerWithEmailAndPassword(
        userModel: userModel,
      );
      await authRepo.saveUserData(userModel: userModel);
      safeEmit(RegisterSuccess(userId: userId));
    } catch (e) {
      safeEmit(RegisterFailure(errorMessage: e.toString()));
    }
  }
}
