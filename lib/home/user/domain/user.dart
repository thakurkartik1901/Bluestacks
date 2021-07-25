import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';

@freezed
class User with _$User {
  const User._();
  const factory User({
    required String name,
    required String rating,
    required String played,
    required String won,
    required String percentage,
  }) = _User;
}
