import 'package:dartz/dartz.dart';

import '../domain/tournament.dart';
import '../domain/tournament_failure.dart';
import 'tournament_dto.dart';
import 'tournament_remote_service.dart';

class TournamentRepository {
  final TournamentRemoteService _remoteService;

  TournamentRepository(this._remoteService);

  Future<Either<TournamentFailure, List<Tournament>>> fetchTournament() async {
    try {
      final remotePageItems = await _remoteService.fetchTournament();
      return right(remotePageItems.toDomain());
    } catch (e) {
      return left(const TournamentFailure.api(500));
    }
  }
}

extension DTOListToDomainList on List<TournamentDTO> {
  List<Tournament> toDomain() {
    return map((e) => e.toDomain()).toList();
  }
}
