import 'package:doc_appointment_app/core/shared/cubits/cubit/logout_cubit.dart';
import 'package:doc_appointment_app/core/shared/logic/shared_logic_repo.dart';
import 'package:doc_appointment_app/core/shared/logic/shared_logic_source.dart';
import 'package:doc_appointment_app/features/auth/data/data_source/auth_data_source.dart';
import 'package:doc_appointment_app/features/auth/data/repos/auth_repo.dart';
import 'package:doc_appointment_app/features/auth/presentation/cubits/check_role/check_role_cubit.dart';
import 'package:doc_appointment_app/features/auth/presentation/cubits/register/register_cubit.dart';
import 'package:doc_appointment_app/features/auth/presentation/cubits/sign_in/sign_in_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerLazySingleton<AuthDataSource>(
    () => AuthDataSourceImpl(),
  );
  getIt.registerLazySingleton<AuthRepo>(
    () => AuthRepo(authDataSource: getIt()),
  );
  getIt.registerFactory<RegisterCubit>(
    () => RegisterCubit(authRepo: getIt<AuthRepo>()),
  );
  getIt.registerFactory<SignInCubit>(
    () => SignInCubit(authRepo: getIt<AuthRepo>()),
  );
  getIt.registerFactory<CheckRoleCubit>(
    () => CheckRoleCubit(authRepo: getIt<AuthRepo>()),
  );
  getIt.registerLazySingleton<SupabaseClient>(
    () => Supabase.instance.client,
  );
  getIt.registerLazySingleton<SharedLogicSource>(
    () => SharedLogicSourceImpl(getIt<SupabaseClient>()),
  );
  getIt.registerLazySingleton<SharedLogicRepo>(
    () => SharedLogicRepoImpl(getIt<SharedLogicSource>()),
  );
  getIt.registerFactory<LogoutCubit>(
    () => LogoutCubit(getIt<SharedLogicRepo>()),
  );
}
