part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required bool isLoading,
    required bool isFailed,
    required bool isSuccess,
    required bool noUse,
    required String showMessage,
    required IAuthRepository authRepo,
  }) = _AuthState;
  factory AuthState.initial() => AuthState(
        showMessage: '',
        isFailed: false,
        isLoading: false,
        isSuccess: false,
        noUse: false,
        authRepo: AuthRepository(),
      );
}
