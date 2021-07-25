// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDTO _$UserDTOFromJson(Map<String, dynamic> json) {
  return _UserDTO.fromJson(json);
}

/// @nodoc
class _$UserDTOTearOff {
  const _$UserDTOTearOff();

  _UserDTO call(
      {String name = '',
      String rating = '',
      String played = '',
      String won = '',
      String percentage = ''}) {
    return _UserDTO(
      name: name,
      rating: rating,
      played: played,
      won: won,
      percentage: percentage,
    );
  }

  UserDTO fromJson(Map<String, Object> json) {
    return UserDTO.fromJson(json);
  }
}

/// @nodoc
const $UserDTO = _$UserDTOTearOff();

/// @nodoc
mixin _$UserDTO {
  String get name => throw _privateConstructorUsedError;
  String get rating => throw _privateConstructorUsedError;
  String get played => throw _privateConstructorUsedError;
  String get won => throw _privateConstructorUsedError;
  String get percentage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDTOCopyWith<UserDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDTOCopyWith<$Res> {
  factory $UserDTOCopyWith(UserDTO value, $Res Function(UserDTO) then) =
      _$UserDTOCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String rating,
      String played,
      String won,
      String percentage});
}

/// @nodoc
class _$UserDTOCopyWithImpl<$Res> implements $UserDTOCopyWith<$Res> {
  _$UserDTOCopyWithImpl(this._value, this._then);

  final UserDTO _value;
  // ignore: unused_field
  final $Res Function(UserDTO) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? rating = freezed,
    Object? played = freezed,
    Object? won = freezed,
    Object? percentage = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
      played: played == freezed
          ? _value.played
          : played // ignore: cast_nullable_to_non_nullable
              as String,
      won: won == freezed
          ? _value.won
          : won // ignore: cast_nullable_to_non_nullable
              as String,
      percentage: percentage == freezed
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserDTOCopyWith<$Res> implements $UserDTOCopyWith<$Res> {
  factory _$UserDTOCopyWith(_UserDTO value, $Res Function(_UserDTO) then) =
      __$UserDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String rating,
      String played,
      String won,
      String percentage});
}

/// @nodoc
class __$UserDTOCopyWithImpl<$Res> extends _$UserDTOCopyWithImpl<$Res>
    implements _$UserDTOCopyWith<$Res> {
  __$UserDTOCopyWithImpl(_UserDTO _value, $Res Function(_UserDTO) _then)
      : super(_value, (v) => _then(v as _UserDTO));

  @override
  _UserDTO get _value => super._value as _UserDTO;

  @override
  $Res call({
    Object? name = freezed,
    Object? rating = freezed,
    Object? played = freezed,
    Object? won = freezed,
    Object? percentage = freezed,
  }) {
    return _then(_UserDTO(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
      played: played == freezed
          ? _value.played
          : played // ignore: cast_nullable_to_non_nullable
              as String,
      won: won == freezed
          ? _value.won
          : won // ignore: cast_nullable_to_non_nullable
              as String,
      percentage: percentage == freezed
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDTO extends _UserDTO {
  const _$_UserDTO(
      {this.name = '',
      this.rating = '',
      this.played = '',
      this.won = '',
      this.percentage = ''})
      : super._();

  factory _$_UserDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_UserDTOFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String name;
  @JsonKey(defaultValue: '')
  @override
  final String rating;
  @JsonKey(defaultValue: '')
  @override
  final String played;
  @JsonKey(defaultValue: '')
  @override
  final String won;
  @JsonKey(defaultValue: '')
  @override
  final String percentage;

  @override
  String toString() {
    return 'UserDTO(name: $name, rating: $rating, played: $played, won: $won, percentage: $percentage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserDTO &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.played, played) ||
                const DeepCollectionEquality().equals(other.played, played)) &&
            (identical(other.won, won) ||
                const DeepCollectionEquality().equals(other.won, won)) &&
            (identical(other.percentage, percentage) ||
                const DeepCollectionEquality()
                    .equals(other.percentage, percentage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(played) ^
      const DeepCollectionEquality().hash(won) ^
      const DeepCollectionEquality().hash(percentage);

  @JsonKey(ignore: true)
  @override
  _$UserDTOCopyWith<_UserDTO> get copyWith =>
      __$UserDTOCopyWithImpl<_UserDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserDTOToJson(this);
  }
}

abstract class _UserDTO extends UserDTO {
  const factory _UserDTO(
      {String name,
      String rating,
      String played,
      String won,
      String percentage}) = _$_UserDTO;
  const _UserDTO._() : super._();

  factory _UserDTO.fromJson(Map<String, dynamic> json) = _$_UserDTO.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get rating => throw _privateConstructorUsedError;
  @override
  String get played => throw _privateConstructorUsedError;
  @override
  String get won => throw _privateConstructorUsedError;
  @override
  String get percentage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserDTOCopyWith<_UserDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
