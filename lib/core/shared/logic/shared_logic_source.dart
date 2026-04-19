import 'package:supabase_flutter/supabase_flutter.dart';

abstract class SharedLogicSource {
  Future<void> logout();
}

class SharedLogicSourceImpl implements SharedLogicSource {
  final SupabaseClient supabaseClient;
  SharedLogicSourceImpl(this.supabaseClient);
  @override
  Future<void> logout() async {
    await supabaseClient.auth.signOut();
  }
}
