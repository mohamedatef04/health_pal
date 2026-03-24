import 'package:doc_appointment_app/core/helper/custom_exception.dart';
import 'package:doc_appointment_app/features/auth/data/data_source/auth_data_source.dart';
import 'package:doc_appointment_app/features/auth/data/models/user_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthRepo {
  final AuthDataSource authDataSource;

  AuthRepo({required this.authDataSource});

  Future<String> registerWithEmailAndPassword({
    required UserModel userModel,
  }) async {
    try {
      return await authDataSource.registerWithEmailAndPassword(
        userModel: userModel,
      );
    } on AuthException catch (e) {
      throw CustomException(e.message);
    } catch (e) {
      throw CustomException(e.toString());
    }
  }

  Future<void> saveUserData({required UserModel userModel}) async {
    try {
      await authDataSource.saveUserData(userModel: userModel);
    } catch (e) {
      throw CustomException(e.toString());
    }
  }

  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      await authDataSource.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on AuthException catch (e) {
      throw CustomException(e.message);
    } catch (e) {
      throw CustomException(e.toString());
    }
  }
}
