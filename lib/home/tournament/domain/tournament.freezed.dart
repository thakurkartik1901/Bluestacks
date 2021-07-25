// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'tournament.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TournamentTearOff {
  const _$TournamentTearOff();

  _Tournament call(
      {required String name,
      required String gameName,
      required String coverUrl}) {
    return _Tournament(
      name: name,
      gameName: gameName,
      coverUrl: coverUrl,
    );
  }
}

/// @nodoc
const $Tournament = _$TournamentTearOff();

/// @nodoc
mixin _$Tournament {
  String get name => throw _privateConstructorUsedError;
  String get gameName => throw _privateConstructorUsedError;
  String get coverUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TournamentCopyWith<Tournament> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TournamentCopyWith<$Res> {
  factory $TournamentCopyWith(
          Tournament value, $Res Function(Tournament) then) =
      _$TournamentCopyWithImpl<$Res>;
  $Res call({String name, String gameName, String coverUrl});
}

/// @nodoc
class _$TournamentCopyWithImpl<$Res> implements $TournamentCopyWith<$Res> {
  _$TournamentCopyWithImpl(this._value, this._then);

  final Tournament _value;
  // ignore: unused_field
  final $Res Function(Tournament) _then;

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
abstract class _$TournamentCopyWith<$Res> implements $TournamentCopyWith<$Res> {
  factory _$TournamentCopyWith(
          _Tournament value, $Res Function(_Tournament) then) =
      __$TournamentCopyWithImpl<$Res>;
  @override
  $Res call({String name, String gameName, String coverUrl});
}

/// @nodoc
class __$TournamentCopyWithImpl<$Res> extends _$TournamentCopyWithImpl<$Res>
    implements _$TournamentCopyWith<$Res> {
  __$TournamentCopyWithImpl(
      _Tournament _value, $Res Function(_Tournament) _then)
      : super(_value, (v) => _then(v as _Tournament));

  @override
  _Tournament get _value => super._value as _Tournament;

  @override
  $Res call({
    Object? name = freezed,
    Object? gameName = freezed,
    Object? coverUrl = freezed,
  }) {
    return _then(_Tournament(
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

class _$_Tournament extends _Tournament {
  const _$_Tournament(
      {required this.name, required this.gameName, required this.coverUrl})
      : super._();

  @override
  final String name;
  @override
  final String gameName;
  @override
  final String coverUrl;

  @override
  String toString() {
    return 'Tournament(name: $name, gameName: $gameName, coverUrl: $coverUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Tournament &&
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
  _$TournamentCopyWith<_Tournament> get copyWith =>
      __$TournamentCopyWithImpl<_Tournament>(this, _$identity);
}

abstract class _Tournament extends Tournament {
  const factory _Tournament(
      {required String name,
      required String gameName,
      required String coverUrl}) = _$_Tournament;
  const _Tournament._() : super._();

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get gameName => throw _privateConstructorUsedError;
  @override
  String get coverUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TournamentCopyWith<_Tournament> get copyWith =>
      throw _privateConstructorUsedError;
}
