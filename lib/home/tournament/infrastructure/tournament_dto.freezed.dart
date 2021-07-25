// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'tournament_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TournamentDTO _$TournamentDTOFromJson(Map<String, dynamic> json) {
  return _TournamentDTO.fromJson(json);
}

/// @nodoc
class _$TournamentDTOTearOff {
  const _$TournamentDTOTearOff();

  _TournamentDTO call(
      {required String name,
      @JsonKey(name: 'game_name') required String gameName,
      @JsonKey(name: 'cover_url') required String coverUrl}) {
    return _TournamentDTO(
      name: name,
      gameName: gameName,
      coverUrl: coverUrl,
    );
  }

  TournamentDTO fromJson(Map<String, Object> json) {
    return TournamentDTO.fromJson(json);
  }
}

/// @nodoc
const $TournamentDTO = _$TournamentDTOTearOff();

/// @nodoc
mixin _$TournamentDTO {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'game_name')
  String get gameName => throw _privateConstructorUsedError;
  @JsonKey(name: 'cover_url')
  String get coverUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TournamentDTOCopyWith<TournamentDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TournamentDTOCopyWith<$Res> {
  factory $TournamentDTOCopyWith(
          TournamentDTO value, $Res Function(TournamentDTO) then) =
      _$TournamentDTOCopyWithImpl<$Res>;
  $Res call(
      {String name,
      @JsonKey(name: 'game_name') String gameName,
      @JsonKey(name: 'cover_url') String coverUrl});
}

/// @nodoc
class _$TournamentDTOCopyWithImpl<$Res>
    implements $TournamentDTOCopyWith<$Res> {
  _$TournamentDTOCopyWithImpl(this._value, this._then);

  final TournamentDTO _value;
  // ignore: unused_field
  final $Res Function(TournamentDTO) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? gameName = freezed,
    Object? coverUrl = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gameName: gameName == freezed
          ? _value.gameName
          : gameName // ignore: cast_nullable_to_non_nullable
              as String,
      coverUrl: coverUrl == freezed
          ? _value.coverUrl
          : coverUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TournamentDTOCopyWith<$Res>
    implements $TournamentDTOCopyWith<$Res> {
  factory _$TournamentDTOCopyWith(
          _TournamentDTO value, $Res Function(_TournamentDTO) then) =
      __$TournamentDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      @JsonKey(name: 'game_name') String gameName,
      @JsonKey(name: 'cover_url') String coverUrl});
}

/// @nodoc
class __$TournamentDTOCopyWithImpl<$Res>
    extends _$TournamentDTOCopyWithImpl<$Res>
    implements _$TournamentDTOCopyWith<$Res> {
  __$TournamentDTOCopyWithImpl(
      _TournamentDTO _value, $Res Function(_TournamentDTO) _then)
      : super(_value, (v) => _then(v as _TournamentDTO));

  @override
  _TournamentDTO get _value => super._value as _TournamentDTO;

  @override
  $Res call({
    Object? name = freezed,
    Object? gameName = freezed,
    Object? coverUrl = freezed,
  }) {
    return _then(_TournamentDTO(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gameName: gameName == freezed
          ? _value.gameName
          : gameName // ignore: cast_nullable_to_non_nullable
              as String,
      coverUrl: coverUrl == freezed
          ? _value.coverUrl
          : coverUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TournamentDTO extends _TournamentDTO {
  const _$_TournamentDTO(
      {required this.name,
      @JsonKey(name: 'game_name') required this.gameName,
      @JsonKey(name: 'cover_url') required this.coverUrl})
      : super._();

  factory _$_TournamentDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_TournamentDTOFromJson(json);

  @override
  final String name;
  @override
  @JsonKey(name: 'game_name')
  final String gameName;
  @override
  @JsonKey(name: 'cover_url')
  final String coverUrl;

  @override
  String toString() {
    return 'TournamentDTO(name: $name, gameName: $gameName, coverUrl: $coverUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TournamentDTO &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.gameName, gameName) ||
                const DeepCollectionEquality()
                    .equals(other.gameName, gameName)) &&
            (identical(other.coverUrl, coverUrl) ||
                const DeepCollectionEquality()
                    .equals(other.coverUrl, coverUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(gameName) ^
      const DeepCollectionEquality().hash(coverUrl);

  @JsonKey(ignore: true)
  @override
  _$TournamentDTOCopyWith<_TournamentDTO> get copyWith =>
      __$TournamentDTOCopyWithImpl<_TournamentDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TournamentDTOToJson(this);
  }
}

abstract class _TournamentDTO extends TournamentDTO {
  const factory _TournamentDTO(
      {required String name,
      @JsonKey(name: 'game_name') required String gameName,
      @JsonKey(name: 'cover_url') required String coverUrl}) = _$_TournamentDTO;
  const _TournamentDTO._() : super._();

  factory _TournamentDTO.fromJson(Map<String, dynamic> json) =
      _$_TournamentDTO.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'game_name')
  String get gameName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'cover_url')
  String get coverUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TournamentDTOCopyWith<_TournamentDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
