import 'package:doc_appointment_app/core/shared/logic/shared_logic_source.dart';

abstract class SharedLogicRepo {
  Future<void> logout();
}

class SharedLogicRepoImpl implements SharedLogicRepo {
  final SharedLogicSource sharedLogicSource;
  SharedLogicRepoImpl(this.sharedLogicSource);
  @override
  Future<void> logout() async {
    try {
      await sharedLogicSource.logout();
    } on Exception catch (e) {
      throw Exception(e.toString());
    }
  }
}
