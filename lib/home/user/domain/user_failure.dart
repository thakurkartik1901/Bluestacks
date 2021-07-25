import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_failure.freezed.dart';

@freezed
class UserFailure with _$UserFailure {
  const UserFailure._();
  const factory UserFailure.api(int? errorCode) = _Api;
}
