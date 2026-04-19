import 'package:doc_appointment_app/features/auth/data/repos/auth_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'check_role_state.dart';

class CheckRoleCubit extends Cubit<CheckRoleState> {
  CheckRoleCubit({required this.authRepo}) : super(CheckRoleInitial());

  final AuthRepo authRepo;

  Future<bool> checkRole({required String userId}) async {
    emit(CheckRoleLoading());
    try {
      final isPatient = await authRepo.isPatient(userId: userId);
      emit(CheckRoleSuccess());
      return isPatient;
    } catch (e) {
      emit(CheckRoleFailure(errorMessage: e.toString()));
      return false;
    }
  }
}
