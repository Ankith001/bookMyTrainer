// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(UserModel user, String password)
        createUserWithEmailAndPassword,
    required TResult Function(UserModel user, String password)
        loginWithEmailAndPassword,
    required TResult Function() logout,
    required TResult Function(AuthState state) emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(UserModel user, String password)?
        createUserWithEmailAndPassword,
    TResult? Function(UserModel user, String password)?
        loginWithEmailAndPassword,
    TResult? Function()? logout,
    TResult? Function(AuthState state)? emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(UserModel user, String password)?
        createUserWithEmailAndPassword,
    TResult Function(UserModel user, String password)?
        loginWithEmailAndPassword,
    TResult Function()? logout,
    TResult Function(AuthState state)? emitFromAnywhere,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_CreateUserWithEmailAndPassword value)
        createUserWithEmailAndPassword,
    required TResult Function(_LoginWithEmailAndPassword value)
        loginWithEmailAndPassword,
    required TResult Function(_Logout value) logout,
    required TResult Function(_EmitFromAnywhere value) emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_CreateUserWithEmailAndPassword value)?
        createUserWithEmailAndPassword,
    TResult? Function(_LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_EmitFromAnywhere value)? emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_CreateUserWithEmailAndPassword value)?
        createUserWithEmailAndPassword,
    TResult Function(_LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult Function(_Logout value)? logout,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl();

  @override
  String toString() {
    return 'AuthEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(UserModel user, String password)
        createUserWithEmailAndPassword,
    required TResult Function(UserModel user, String password)
        loginWithEmailAndPassword,
    required TResult Function() logout,
    required TResult Function(AuthState state) emitFromAnywhere,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(UserModel user, String password)?
        createUserWithEmailAndPassword,
    TResult? Function(UserModel user, String password)?
        loginWithEmailAndPassword,
    TResult? Function()? logout,
    TResult? Function(AuthState state)? emitFromAnywhere,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(UserModel user, String password)?
        createUserWithEmailAndPassword,
    TResult Function(UserModel user, String password)?
        loginWithEmailAndPassword,
    TResult Function()? logout,
    TResult Function(AuthState state)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_CreateUserWithEmailAndPassword value)
        createUserWithEmailAndPassword,
    required TResult Function(_LoginWithEmailAndPassword value)
        loginWithEmailAndPassword,
    required TResult Function(_Logout value) logout,
    required TResult Function(_EmitFromAnywhere value) emitFromAnywhere,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_CreateUserWithEmailAndPassword value)?
        createUserWithEmailAndPassword,
    TResult? Function(_LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_EmitFromAnywhere value)? emitFromAnywhere,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_CreateUserWithEmailAndPassword value)?
        createUserWithEmailAndPassword,
    TResult Function(_LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult Function(_Logout value)? logout,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements AuthEvent {
  const factory _Init() = _$InitImpl;
}

/// @nodoc
abstract class _$$CreateUserWithEmailAndPasswordImplCopyWith<$Res> {
  factory _$$CreateUserWithEmailAndPasswordImplCopyWith(
          _$CreateUserWithEmailAndPasswordImpl value,
          $Res Function(_$CreateUserWithEmailAndPasswordImpl) then) =
      __$$CreateUserWithEmailAndPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user, String password});
}

/// @nodoc
class __$$CreateUserWithEmailAndPasswordImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CreateUserWithEmailAndPasswordImpl>
    implements _$$CreateUserWithEmailAndPasswordImplCopyWith<$Res> {
  __$$CreateUserWithEmailAndPasswordImplCopyWithImpl(
      _$CreateUserWithEmailAndPasswordImpl _value,
      $Res Function(_$CreateUserWithEmailAndPasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? password = null,
  }) {
    return _then(_$CreateUserWithEmailAndPasswordImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateUserWithEmailAndPasswordImpl
    implements _CreateUserWithEmailAndPassword {
  const _$CreateUserWithEmailAndPasswordImpl(
      {required this.user, required this.password});

  @override
  final UserModel user;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.createUserWithEmailAndPassword(user: $user, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserWithEmailAndPasswordImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, password);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserWithEmailAndPasswordImplCopyWith<
          _$CreateUserWithEmailAndPasswordImpl>
      get copyWith => __$$CreateUserWithEmailAndPasswordImplCopyWithImpl<
          _$CreateUserWithEmailAndPasswordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(UserModel user, String password)
        createUserWithEmailAndPassword,
    required TResult Function(UserModel user, String password)
        loginWithEmailAndPassword,
    required TResult Function() logout,
    required TResult Function(AuthState state) emitFromAnywhere,
  }) {
    return createUserWithEmailAndPassword(user, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(UserModel user, String password)?
        createUserWithEmailAndPassword,
    TResult? Function(UserModel user, String password)?
        loginWithEmailAndPassword,
    TResult? Function()? logout,
    TResult? Function(AuthState state)? emitFromAnywhere,
  }) {
    return createUserWithEmailAndPassword?.call(user, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(UserModel user, String password)?
        createUserWithEmailAndPassword,
    TResult Function(UserModel user, String password)?
        loginWithEmailAndPassword,
    TResult Function()? logout,
    TResult Function(AuthState state)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (createUserWithEmailAndPassword != null) {
      return createUserWithEmailAndPassword(user, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_CreateUserWithEmailAndPassword value)
        createUserWithEmailAndPassword,
    required TResult Function(_LoginWithEmailAndPassword value)
        loginWithEmailAndPassword,
    required TResult Function(_Logout value) logout,
    required TResult Function(_EmitFromAnywhere value) emitFromAnywhere,
  }) {
    return createUserWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_CreateUserWithEmailAndPassword value)?
        createUserWithEmailAndPassword,
    TResult? Function(_LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_EmitFromAnywhere value)? emitFromAnywhere,
  }) {
    return createUserWithEmailAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_CreateUserWithEmailAndPassword value)?
        createUserWithEmailAndPassword,
    TResult Function(_LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult Function(_Logout value)? logout,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (createUserWithEmailAndPassword != null) {
      return createUserWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class _CreateUserWithEmailAndPassword implements AuthEvent {
  const factory _CreateUserWithEmailAndPassword(
      {required final UserModel user,
      required final String password}) = _$CreateUserWithEmailAndPasswordImpl;

  UserModel get user;
  String get password;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateUserWithEmailAndPasswordImplCopyWith<
          _$CreateUserWithEmailAndPasswordImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginWithEmailAndPasswordImplCopyWith<$Res> {
  factory _$$LoginWithEmailAndPasswordImplCopyWith(
          _$LoginWithEmailAndPasswordImpl value,
          $Res Function(_$LoginWithEmailAndPasswordImpl) then) =
      __$$LoginWithEmailAndPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user, String password});
}

/// @nodoc
class __$$LoginWithEmailAndPasswordImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginWithEmailAndPasswordImpl>
    implements _$$LoginWithEmailAndPasswordImplCopyWith<$Res> {
  __$$LoginWithEmailAndPasswordImplCopyWithImpl(
      _$LoginWithEmailAndPasswordImpl _value,
      $Res Function(_$LoginWithEmailAndPasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? password = null,
  }) {
    return _then(_$LoginWithEmailAndPasswordImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginWithEmailAndPasswordImpl implements _LoginWithEmailAndPassword {
  const _$LoginWithEmailAndPasswordImpl(
      {required this.user, required this.password});

  @override
  final UserModel user;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.loginWithEmailAndPassword(user: $user, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginWithEmailAndPasswordImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, password);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginWithEmailAndPasswordImplCopyWith<_$LoginWithEmailAndPasswordImpl>
      get copyWith => __$$LoginWithEmailAndPasswordImplCopyWithImpl<
          _$LoginWithEmailAndPasswordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(UserModel user, String password)
        createUserWithEmailAndPassword,
    required TResult Function(UserModel user, String password)
        loginWithEmailAndPassword,
    required TResult Function() logout,
    required TResult Function(AuthState state) emitFromAnywhere,
  }) {
    return loginWithEmailAndPassword(user, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(UserModel user, String password)?
        createUserWithEmailAndPassword,
    TResult? Function(UserModel user, String password)?
        loginWithEmailAndPassword,
    TResult? Function()? logout,
    TResult? Function(AuthState state)? emitFromAnywhere,
  }) {
    return loginWithEmailAndPassword?.call(user, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(UserModel user, String password)?
        createUserWithEmailAndPassword,
    TResult Function(UserModel user, String password)?
        loginWithEmailAndPassword,
    TResult Function()? logout,
    TResult Function(AuthState state)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (loginWithEmailAndPassword != null) {
      return loginWithEmailAndPassword(user, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_CreateUserWithEmailAndPassword value)
        createUserWithEmailAndPassword,
    required TResult Function(_LoginWithEmailAndPassword value)
        loginWithEmailAndPassword,
    required TResult Function(_Logout value) logout,
    required TResult Function(_EmitFromAnywhere value) emitFromAnywhere,
  }) {
    return loginWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_CreateUserWithEmailAndPassword value)?
        createUserWithEmailAndPassword,
    TResult? Function(_LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_EmitFromAnywhere value)? emitFromAnywhere,
  }) {
    return loginWithEmailAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_CreateUserWithEmailAndPassword value)?
        createUserWithEmailAndPassword,
    TResult Function(_LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult Function(_Logout value)? logout,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (loginWithEmailAndPassword != null) {
      return loginWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class _LoginWithEmailAndPassword implements AuthEvent {
  const factory _LoginWithEmailAndPassword(
      {required final UserModel user,
      required final String password}) = _$LoginWithEmailAndPasswordImpl;

  UserModel get user;
  String get password;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginWithEmailAndPasswordImplCopyWith<_$LoginWithEmailAndPasswordImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutImplCopyWith<$Res> {
  factory _$$LogoutImplCopyWith(
          _$LogoutImpl value, $Res Function(_$LogoutImpl) then) =
      __$$LogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogoutImpl>
    implements _$$LogoutImplCopyWith<$Res> {
  __$$LogoutImplCopyWithImpl(
      _$LogoutImpl _value, $Res Function(_$LogoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogoutImpl implements _Logout {
  const _$LogoutImpl();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(UserModel user, String password)
        createUserWithEmailAndPassword,
    required TResult Function(UserModel user, String password)
        loginWithEmailAndPassword,
    required TResult Function() logout,
    required TResult Function(AuthState state) emitFromAnywhere,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(UserModel user, String password)?
        createUserWithEmailAndPassword,
    TResult? Function(UserModel user, String password)?
        loginWithEmailAndPassword,
    TResult? Function()? logout,
    TResult? Function(AuthState state)? emitFromAnywhere,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(UserModel user, String password)?
        createUserWithEmailAndPassword,
    TResult Function(UserModel user, String password)?
        loginWithEmailAndPassword,
    TResult Function()? logout,
    TResult Function(AuthState state)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_CreateUserWithEmailAndPassword value)
        createUserWithEmailAndPassword,
    required TResult Function(_LoginWithEmailAndPassword value)
        loginWithEmailAndPassword,
    required TResult Function(_Logout value) logout,
    required TResult Function(_EmitFromAnywhere value) emitFromAnywhere,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_CreateUserWithEmailAndPassword value)?
        createUserWithEmailAndPassword,
    TResult? Function(_LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_EmitFromAnywhere value)? emitFromAnywhere,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_CreateUserWithEmailAndPassword value)?
        createUserWithEmailAndPassword,
    TResult Function(_LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult Function(_Logout value)? logout,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements AuthEvent {
  const factory _Logout() = _$LogoutImpl;
}

/// @nodoc
abstract class _$$EmitFromAnywhereImplCopyWith<$Res> {
  factory _$$EmitFromAnywhereImplCopyWith(_$EmitFromAnywhereImpl value,
          $Res Function(_$EmitFromAnywhereImpl) then) =
      __$$EmitFromAnywhereImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthState state});

  $AuthStateCopyWith<$Res> get state;
}

/// @nodoc
class __$$EmitFromAnywhereImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$EmitFromAnywhereImpl>
    implements _$$EmitFromAnywhereImplCopyWith<$Res> {
  __$$EmitFromAnywhereImplCopyWithImpl(_$EmitFromAnywhereImpl _value,
      $Res Function(_$EmitFromAnywhereImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_$EmitFromAnywhereImpl(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as AuthState,
    ));
  }

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthStateCopyWith<$Res> get state {
    return $AuthStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc

class _$EmitFromAnywhereImpl implements _EmitFromAnywhere {
  const _$EmitFromAnywhereImpl({required this.state});

  @override
  final AuthState state;

  @override
  String toString() {
    return 'AuthEvent.emitFromAnywhere(state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmitFromAnywhereImpl &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmitFromAnywhereImplCopyWith<_$EmitFromAnywhereImpl> get copyWith =>
      __$$EmitFromAnywhereImplCopyWithImpl<_$EmitFromAnywhereImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(UserModel user, String password)
        createUserWithEmailAndPassword,
    required TResult Function(UserModel user, String password)
        loginWithEmailAndPassword,
    required TResult Function() logout,
    required TResult Function(AuthState state) emitFromAnywhere,
  }) {
    return emitFromAnywhere(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(UserModel user, String password)?
        createUserWithEmailAndPassword,
    TResult? Function(UserModel user, String password)?
        loginWithEmailAndPassword,
    TResult? Function()? logout,
    TResult? Function(AuthState state)? emitFromAnywhere,
  }) {
    return emitFromAnywhere?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(UserModel user, String password)?
        createUserWithEmailAndPassword,
    TResult Function(UserModel user, String password)?
        loginWithEmailAndPassword,
    TResult Function()? logout,
    TResult Function(AuthState state)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (emitFromAnywhere != null) {
      return emitFromAnywhere(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_CreateUserWithEmailAndPassword value)
        createUserWithEmailAndPassword,
    required TResult Function(_LoginWithEmailAndPassword value)
        loginWithEmailAndPassword,
    required TResult Function(_Logout value) logout,
    required TResult Function(_EmitFromAnywhere value) emitFromAnywhere,
  }) {
    return emitFromAnywhere(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_CreateUserWithEmailAndPassword value)?
        createUserWithEmailAndPassword,
    TResult? Function(_LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_EmitFromAnywhere value)? emitFromAnywhere,
  }) {
    return emitFromAnywhere?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_CreateUserWithEmailAndPassword value)?
        createUserWithEmailAndPassword,
    TResult Function(_LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult Function(_Logout value)? logout,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (emitFromAnywhere != null) {
      return emitFromAnywhere(this);
    }
    return orElse();
  }
}

abstract class _EmitFromAnywhere implements AuthEvent {
  const factory _EmitFromAnywhere({required final AuthState state}) =
      _$EmitFromAnywhereImpl;

  AuthState get state;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmitFromAnywhereImplCopyWith<_$EmitFromAnywhereImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isFailed => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  bool get noUse => throw _privateConstructorUsedError;
  String get showMessage => throw _privateConstructorUsedError;
  IAuthRepository get authRepo => throw _privateConstructorUsedError;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isFailed,
      bool isSuccess,
      bool noUse,
      String showMessage,
      IAuthRepository authRepo});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isFailed = null,
    Object? isSuccess = null,
    Object? noUse = null,
    Object? showMessage = null,
    Object? authRepo = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFailed: null == isFailed
          ? _value.isFailed
          : isFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      noUse: null == noUse
          ? _value.noUse
          : noUse // ignore: cast_nullable_to_non_nullable
              as bool,
      showMessage: null == showMessage
          ? _value.showMessage
          : showMessage // ignore: cast_nullable_to_non_nullable
              as String,
      authRepo: null == authRepo
          ? _value.authRepo
          : authRepo // ignore: cast_nullable_to_non_nullable
              as IAuthRepository,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isFailed,
      bool isSuccess,
      bool noUse,
      String showMessage,
      IAuthRepository authRepo});
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isFailed = null,
    Object? isSuccess = null,
    Object? noUse = null,
    Object? showMessage = null,
    Object? authRepo = null,
  }) {
    return _then(_$AuthStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFailed: null == isFailed
          ? _value.isFailed
          : isFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      noUse: null == noUse
          ? _value.noUse
          : noUse // ignore: cast_nullable_to_non_nullable
              as bool,
      showMessage: null == showMessage
          ? _value.showMessage
          : showMessage // ignore: cast_nullable_to_non_nullable
              as String,
      authRepo: null == authRepo
          ? _value.authRepo
          : authRepo // ignore: cast_nullable_to_non_nullable
              as IAuthRepository,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl implements _AuthState {
  const _$AuthStateImpl(
      {required this.isLoading,
      required this.isFailed,
      required this.isSuccess,
      required this.noUse,
      required this.showMessage,
      required this.authRepo});

  @override
  final bool isLoading;
  @override
  final bool isFailed;
  @override
  final bool isSuccess;
  @override
  final bool noUse;
  @override
  final String showMessage;
  @override
  final IAuthRepository authRepo;

  @override
  String toString() {
    return 'AuthState(isLoading: $isLoading, isFailed: $isFailed, isSuccess: $isSuccess, noUse: $noUse, showMessage: $showMessage, authRepo: $authRepo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isFailed, isFailed) ||
                other.isFailed == isFailed) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.noUse, noUse) || other.noUse == noUse) &&
            (identical(other.showMessage, showMessage) ||
                other.showMessage == showMessage) &&
            (identical(other.authRepo, authRepo) ||
                other.authRepo == authRepo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isFailed, isSuccess,
      noUse, showMessage, authRepo);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {required final bool isLoading,
      required final bool isFailed,
      required final bool isSuccess,
      required final bool noUse,
      required final String showMessage,
      required final IAuthRepository authRepo}) = _$AuthStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isFailed;
  @override
  bool get isSuccess;
  @override
  bool get noUse;
  @override
  String get showMessage;
  @override
  IAuthRepository get authRepo;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
