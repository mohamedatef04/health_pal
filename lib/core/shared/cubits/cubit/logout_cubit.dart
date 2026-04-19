import 'package:doc_appointment_app/core/shared/logic/shared_logic_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'logout_state.dart';

class LogoutCubit extends Cubit<LogoutState> {
  LogoutCubit(this.sharedLogicRepo) : super(LogoutInitial());

  final SharedLogicRepo sharedLogicRepo;

  Future<void> logout() async {
    emit(LogoutLoading());
    try {
      await sharedLogicRepo.logout();
      emit(LogoutSuccess());
    } on Exception catch (e) {
      emit(LogoutFailure(errorMessage: e.toString()));
    }
  }
}
