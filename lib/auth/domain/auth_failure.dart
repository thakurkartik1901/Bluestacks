import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const AuthFailure._();
  const factory AuthFailure.server([String? message]) = _Server;
  const factory AuthFailure.accountExistsWithDifferentCredential() =
      _AccountExistsWithDifferentCredential;
  const factory AuthFailure.invalidCredential() = _InvalidCredential;
  const factory AuthFailure.wrongPassword() = _WrongPassword;
}
