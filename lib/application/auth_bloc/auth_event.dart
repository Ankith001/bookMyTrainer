part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.init() = _Init;

  const factory AuthEvent.createUserWithEmailAndPassword({
    required UserModel user,
    required String password,
  }) = _CreateUserWithEmailAndPassword;

  const factory AuthEvent.loginWithEmailAndPassword({
    required UserModel user,
    required String password,
  }) = _LoginWithEmailAndPassword;

  const factory AuthEvent.logout() = _Logout;

  const factory AuthEvent.emitFromAnywhere({required AuthState state}) =
      _EmitFromAnywhere;
}
