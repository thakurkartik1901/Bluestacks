// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

  _Server server([String? message]) {
    return _Server(
      message,
    );
  }

  _AccountExistsWithDifferentCredential accountExistsWithDifferentCredential() {
    return const _AccountExistsWithDifferentCredential();
  }

  _InvalidCredential invalidCredential() {
    return const _InvalidCredential();
  }

  _WrongPassword wrongPassword() {
    return const _WrongPassword();
  }
}

/// @nodoc
const $AuthFailure = _$AuthFailureTearOff();

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) server,
    required TResult Function() accountExistsWithDifferentCredential,
    required TResult Function() invalidCredential,
    required TResult Function() wrongPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? server,
    TResult Function()? accountExistsWithDifferentCredential,
    TResult Function()? invalidCredential,
    TResult Function()? wrongPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Server value) server,
    required TResult Function(_AccountExistsWithDifferentCredential value)
        accountExistsWithDifferentCredential,
    required TResult Function(_InvalidCredential value) invalidCredential,
    required TResult Function(_WrongPassword value) wrongPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_AccountExistsWithDifferentCredential value)?
        accountExistsWithDifferentCredential,
    TResult Function(_InvalidCredential value)? invalidCredential,
    TResult Function(_WrongPassword value)? wrongPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

/// @nodoc
abstract class _$ServerCopyWith<$Res> {
  factory _$ServerCopyWith(_Server value, $Res Function(_Server) then) =
      __$ServerCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$ServerCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$ServerCopyWith<$Res> {
  __$ServerCopyWithImpl(_Server _value, $Res Function(_Server) _then)
      : super(_value, (v) => _then(v as _Server));

  @override
  _Server get _value => super._value as _Server;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_Server(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Server extends _Server {
  const _$_Server([this.message]) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'AuthFailure.server(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Server &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$ServerCopyWith<_Server> get copyWith =>
      __$ServerCopyWithImpl<_Server>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) server,
    required TResult Function() accountExistsWithDifferentCredential,
    required TResult Function() invalidCredential,
    required TResult Function() wrongPassword,
  }) {
    return server(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? server,
    TResult Function()? accountExistsWithDifferentCredential,
    TResult Function()? invalidCredential,
    TResult Function()? wrongPassword,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Server value) server,
    required TResult Function(_AccountExistsWithDifferentCredential value)
        accountExistsWithDifferentCredential,
    required TResult Function(_InvalidCredential value) invalidCredential,
    required TResult Function(_WrongPassword value) wrongPassword,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_AccountExistsWithDifferentCredential value)?
        accountExistsWithDifferentCredential,
    TResult Function(_InvalidCredential value)? invalidCredential,
    TResult Function(_WrongPassword value)? wrongPassword,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class _Server extends AuthFailure {
  const factory _Server([String? message]) = _$_Server;
  const _Server._() : super._();

  String? get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ServerCopyWith<_Server> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AccountExistsWithDifferentCredentialCopyWith<$Res> {
  factory _$AccountExistsWithDifferentCredentialCopyWith(
          _AccountExistsWithDifferentCredential value,
          $Res Function(_AccountExistsWithDifferentCredential) then) =
      __$AccountExistsWithDifferentCredentialCopyWithImpl<$Res>;
}

/// @nodoc
class __$AccountExistsWithDifferentCredentialCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$AccountExistsWithDifferentCredentialCopyWith<$Res> {
  __$AccountExistsWithDifferentCredentialCopyWithImpl(
      _AccountExistsWithDifferentCredential _value,
      $Res Function(_AccountExistsWithDifferentCredential) _then)
      : super(_value, (v) => _then(v as _AccountExistsWithDifferentCredential));

  @override
  _AccountExistsWithDifferentCredential get _value =>
      super._value as _AccountExistsWithDifferentCredential;
}

/// @nodoc

class _$_AccountExistsWithDifferentCredential
    extends _AccountExistsWithDifferentCredential {
  const _$_AccountExistsWithDifferentCredential() : super._();

  @override
  String toString() {
    return 'AuthFailure.accountExistsWithDifferentCredential()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AccountExistsWithDifferentCredential);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) server,
    required TResult Function() accountExistsWithDifferentCredential,
    required TResult Function() invalidCredential,
    required TResult Function() wrongPassword,
  }) {
    return accountExistsWithDifferentCredential();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? server,
    TResult Function()? accountExistsWithDifferentCredential,
    TResult Function()? invalidCredential,
    TResult Function()? wrongPassword,
    required TResult orElse(),
  }) {
    if (accountExistsWithDifferentCredential != null) {
      return accountExistsWithDifferentCredential();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Server value) server,
    required TResult Function(_AccountExistsWithDifferentCredential value)
        accountExistsWithDifferentCredential,
    required TResult Function(_InvalidCredential value) invalidCredential,
    required TResult Function(_WrongPassword value) wrongPassword,
  }) {
    return accountExistsWithDifferentCredential(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_AccountExistsWithDifferentCredential value)?
        accountExistsWithDifferentCredential,
    TResult Function(_InvalidCredential value)? invalidCredential,
    TResult Function(_WrongPassword value)? wrongPassword,
    required TResult orElse(),
  }) {
    if (accountExistsWithDifferentCredential != null) {
      return accountExistsWithDifferentCredential(this);
    }
    return orElse();
  }
}

abstract class _AccountExistsWithDifferentCredential extends AuthFailure {
  const factory _AccountExistsWithDifferentCredential() =
      _$_AccountExistsWithDifferentCredential;
  const _AccountExistsWithDifferentCredential._() : super._();
}

/// @nodoc
abstract class _$InvalidCredentialCopyWith<$Res> {
  factory _$InvalidCredentialCopyWith(
          _InvalidCredential value, $Res Function(_InvalidCredential) then) =
      __$InvalidCredentialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InvalidCredentialCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$InvalidCredentialCopyWith<$Res> {
  __$InvalidCredentialCopyWithImpl(
      _InvalidCredential _value, $Res Function(_InvalidCredential) _then)
      : super(_value, (v) => _then(v as _InvalidCredential));

  @override
  _InvalidCredential get _value => super._value as _InvalidCredential;
}

/// @nodoc

class _$_InvalidCredential extends _InvalidCredential {
  const _$_InvalidCredential() : super._();

  @override
  String toString() {
    return 'AuthFailure.invalidCredential()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InvalidCredential);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) server,
    required TResult Function() accountExistsWithDifferentCredential,
    required TResult Function() invalidCredential,
    required TResult Function() wrongPassword,
  }) {
    return invalidCredential();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? server,
    TResult Function()? accountExistsWithDifferentCredential,
    TResult Function()? invalidCredential,
    TResult Function()? wrongPassword,
    required TResult orElse(),
  }) {
    if (invalidCredential != null) {
      return invalidCredential();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Server value) server,
    required TResult Function(_AccountExistsWithDifferentCredential value)
        accountExistsWithDifferentCredential,
    required TResult Function(_InvalidCredential value) invalidCredential,
    required TResult Function(_WrongPassword value) wrongPassword,
  }) {
    return invalidCredential(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_AccountExistsWithDifferentCredential value)?
        accountExistsWithDifferentCredential,
    TResult Function(_InvalidCredential value)? invalidCredential,
    TResult Function(_WrongPassword value)? wrongPassword,
    required TResult orElse(),
  }) {
    if (invalidCredential != null) {
      return invalidCredential(this);
    }
    return orElse();
  }
}

abstract class _InvalidCredential extends AuthFailure {
  const factory _InvalidCredential() = _$_InvalidCredential;
  const _InvalidCredential._() : super._();
}

/// @nodoc
abstract class _$WrongPasswordCopyWith<$Res> {
  factory _$WrongPasswordCopyWith(
          _WrongPassword value, $Res Function(_WrongPassword) then) =
      __$WrongPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$WrongPasswordCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$WrongPasswordCopyWith<$Res> {
  __$WrongPasswordCopyWithImpl(
      _WrongPassword _value, $Res Function(_WrongPassword) _then)
      : super(_value, (v) => _then(v as _WrongPassword));

  @override
  _WrongPassword get _value => super._value as _WrongPassword;
}

/// @nodoc

class _$_WrongPassword extends _WrongPassword {
  const _$_WrongPassword() : super._();

  @override
  String toString() {
    return 'AuthFailure.wrongPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WrongPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) server,
    required TResult Function() accountExistsWithDifferentCredential,
    required TResult Function() invalidCredential,
    required TResult Function() wrongPassword,
  }) {
    return wrongPassword();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? server,
    TResult Function()? accountExistsWithDifferentCredential,
    TResult Function()? invalidCredential,
    TResult Function()? wrongPassword,
    required TResult orElse(),
  }) {
    if (wrongPassword != null) {
      return wrongPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Server value) server,
    required TResult Function(_AccountExistsWithDifferentCredential value)
        accountExistsWithDifferentCredential,
    required TResult Function(_InvalidCredential value) invalidCredential,
    required TResult Function(_WrongPassword value) wrongPassword,
  }) {
    return wrongPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_AccountExistsWithDifferentCredential value)?
        accountExistsWithDifferentCredential,
    TResult Function(_InvalidCredential value)? invalidCredential,
    TResult Function(_WrongPassword value)? wrongPassword,
    required TResult orElse(),
  }) {
    if (wrongPassword != null) {
      return wrongPassword(this);
    }
    return orElse();
  }
}

abstract class _WrongPassword extends AuthFailure {
  const factory _WrongPassword() = _$_WrongPassword;
  const _WrongPassword._() : super._();
}
