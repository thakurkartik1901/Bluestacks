import 'package:freezed_annotation/freezed_annotation.dart';

part 'tournament.freezed.dart';

@freezed
class Tournament with _$Tournament {
  const Tournament._();
  const factory Tournament({
    required String name,
    required String gameName,
    required String coverUrl,
  }) = _Tournament;
}
