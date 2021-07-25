import 'package:freezed_annotation/freezed_annotation.dart';

part 'tournament_failure.freezed.dart';

@freezed
class TournamentFailure with _$TournamentFailure {
  const TournamentFailure._();
  const factory TournamentFailure.api(int? errorCode) = _Api;
}
