import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../domain/tournament.dart';
import '../infrastructure/tournament_repository.dart';

part 'tournament_notifier.freezed.dart';

@freezed
class TournamentState with _$TournamentState {
  const TournamentState._();
  const factory TournamentState({
    @Default([]) List<Tournament> tournaments,
    @Default(false) bool isLoading,
  }) = _Initial;
}

class TournamentNotifier extends StateNotifier<TournamentState> {
  final TournamentRepository _tournamentRepository;

  TournamentNotifier(this._tournamentRepository)
      : super(const TournamentState());

  Future<void> fetchTournaments() async {
    state = state.copyWith(isLoading: true);
    final successOrFailure = await _tournamentRepository.fetchTournament();
    successOrFailure.fold(
      (l) => state = state.copyWith(
        isLoading: false,
      ),
      (r) => state = state.copyWith(
        tournaments: [...state.tournaments, ...r],
        isLoading: false,
      ),
    );
  }
}
