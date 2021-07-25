// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'language_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LanguageStateTearOff {
  const _$LanguageStateTearOff();

  _LanguageState call({String currentLanguage = 'en', required Locale locale}) {
    return _LanguageState(
      currentLanguage: currentLanguage,
      locale: locale,
    );
  }
}

/// @nodoc
const $LanguageState = _$LanguageStateTearOff();

/// @nodoc
mixin _$LanguageState {
  String get currentLanguage => throw _privateConstructorUsedError;
  Locale get locale => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LanguageStateCopyWith<LanguageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageStateCopyWith<$Res> {
  factory $LanguageStateCopyWith(
          LanguageState value, $Res Function(LanguageState) then) =
      _$LanguageStateCopyWithImpl<$Res>;
  $Res call({String currentLanguage, Locale locale});
}

/// @nodoc
class _$LanguageStateCopyWithImpl<$Res>
    implements $LanguageStateCopyWith<$Res> {
  _$LanguageStateCopyWithImpl(this._value, this._then);

  final LanguageState _value;
  // ignore: unused_field
  final $Res Function(LanguageState) _then;

  @override
  $Res call({
    Object? currentLanguage = freezed,
    Object? locale = freezed,
  }) {
    return _then(_value.copyWith(
      currentLanguage: currentLanguage == freezed
          ? _value.currentLanguage
          : currentLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc
abstract class _$LanguageStateCopyWith<$Res>
    implements $LanguageStateCopyWith<$Res> {
  factory _$LanguageStateCopyWith(
          _LanguageState value, $Res Function(_LanguageState) then) =
      __$LanguageStateCopyWithImpl<$Res>;
  @override
  $Res call({String currentLanguage, Locale locale});
}

/// @nodoc
class __$LanguageStateCopyWithImpl<$Res>
    extends _$LanguageStateCopyWithImpl<$Res>
    implements _$LanguageStateCopyWith<$Res> {
  __$LanguageStateCopyWithImpl(
      _LanguageState _value, $Res Function(_LanguageState) _then)
      : super(_value, (v) => _then(v as _LanguageState));

  @override
  _LanguageState get _value => super._value as _LanguageState;

  @override
  $Res call({
    Object? currentLanguage = freezed,
    Object? locale = freezed,
  }) {
    return _then(_LanguageState(
      currentLanguage: currentLanguage == freezed
          ? _value.currentLanguage
          : currentLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$_LanguageState extends _LanguageState {
  const _$_LanguageState({this.currentLanguage = 'en', required this.locale})
      : super._();

  @JsonKey(defaultValue: 'en')
  @override
  final String currentLanguage;
  @override
  final Locale locale;

  @override
  String toString() {
    return 'LanguageState(currentLanguage: $currentLanguage, locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LanguageState &&
            (identical(other.currentLanguage, currentLanguage) ||
                const DeepCollectionEquality()
                    .equals(other.currentLanguage, currentLanguage)) &&
            (identical(other.locale, locale) ||
                const DeepCollectionEquality().equals(other.locale, locale)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentLanguage) ^
      const DeepCollectionEquality().hash(locale);

  @JsonKey(ignore: true)
  @override
  _$LanguageStateCopyWith<_LanguageState> get copyWith =>
      __$LanguageStateCopyWithImpl<_LanguageState>(this, _$identity);
}

abstract class _LanguageState extends LanguageState {
  const factory _LanguageState(
      {String currentLanguage, required Locale locale}) = _$_LanguageState;
  const _LanguageState._() : super._();

  @override
  String get currentLanguage => throw _privateConstructorUsedError;
  @override
  Locale get locale => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LanguageStateCopyWith<_LanguageState> get copyWith =>
      throw _privateConstructorUsedError;
}
