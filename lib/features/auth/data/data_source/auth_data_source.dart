import 'package:doc_appointment_app/features/auth/data/models/user_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class AuthDataSource {
  Future<String> registerWithEmailAndPassword({required UserModel userModel});
  Future<void> saveUserData({
    required UserModel userModel,
  });
  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  });
}

class AuthDataSourceImpl implements AuthDataSource {
  @override
  Future<String> registerWithEmailAndPassword({
    required UserModel userModel,
  }) async {
    final response = await Supabase.instance.client.auth.signUp(
      email: userModel.email ?? '',
      password: userModel.password ?? '',
    );
    return response.user!.id;
  }

  @override
  Future<void> saveUserData({required UserModel userModel}) async {
    await Supabase.instance.client.from('users').insert(userModel.toJson());
  }

  @override
  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    await Supabase.instance.client.auth.signInWithPassword(
      email: email,
      password: password,
    );
  }
}
