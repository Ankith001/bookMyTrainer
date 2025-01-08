import 'package:bookmytrainer/domain/auth/i_auth_repository.dart';
import 'package:bookmytrainer/domain/auth/models/user_model.dart';
import 'package:bookmytrainer/infrastructure/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState.initial()) {
    // init
    on<_Init>((event, emit) {
      // init event
    });

    on<_CreateUserWithEmailAndPassword>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final res = await state.authRepo.createUserWithEmailAndPassword(
        user: event.user,
        password: event.password,
      );
      if (res) {
        emit(state.copyWith(
          isLoading: false,
          isSuccess: true,
          showMessage: 'Account Created!',
        ));
      } else {
        emit(state.copyWith(
          isLoading: false,
          isFailed: true,
          showMessage: 'Account Creation Failed!',
        ));
      }
    });

    on<_LoginWithEmailAndPassword>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final res = await state.authRepo.loginWithEmailAndPassword(
        user: event.user,
        password: event.password,
      );
      if (res) {
        emit(state.copyWith(
          isLoading: false,
          isSuccess: true,
          showMessage: 'Login Success!',
        ));
      } else {
        emit(state.copyWith(
          isLoading: false,
          isFailed: true,
          showMessage: 'Login Failed!',
        ));
      }
    });

    on<_Logout>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final res = await state.authRepo.logOutUser();
      if (res) {
        emit(state.copyWith(isLoading: false));
      } else {
        emit(state.copyWith(isLoading: false));
      }
    });

    on<_GoogleSignIn>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));
        final res = state.authRepo.signInWithGoogle();
        if (res.toString() == "true") {
          print('object');
          emit(state.copyWith(isLoading: false));
        } else {
          print("failed");
          emit(state.copyWith(isLoading: false));
        }
        emit(state.copyWith(isLoading: false));
      },
    );

// emit from anywhere
    on<_EmitFromAnywhere>((event, emit) {
      emit(event.state);
    });
  }
}
