import 'package:bluestacks/home/user/domain/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDTO with _$UserDTO {
  const UserDTO._();
  const factory UserDTO({
    @Default('') String name,
    @Default('') String rating,
    @Default('') String played,
    @Default('') String won,
    @Default('') String percentage,
  }) = _UserDTO;

  factory UserDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDTOFromJson(json);

  UserDTO fromDomain(User _) {
    return UserDTO(
      name: _.name,
      rating: _.rating,
      played: _.played,
      won: _.won,
      percentage: _.percentage,
    );
  }

  User toDomain() {
    return User(
      name: name,
      rating: rating,
      played: played,
      won: won,
      percentage: percentage,
    );
  }
}
