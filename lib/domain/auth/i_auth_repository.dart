import 'package:bookmytrainer/domain/auth/models/user_model.dart';

abstract class IAuthRepository {
  Future<bool> createUserWithEmailAndPassword({
    required UserModel user,
    required String password,
  });

  Future<bool> loginWithEmailAndPassword({
    required UserModel user,
    required String password,
  });

  Future<bool> deleteUser();

  Future<bool> logOutUser();
}
