import 'package:bluestacks/home/tournament/application/tournament_notifier.dart';
import 'package:bluestacks/home/tournament/infrastructure/tournament_remote_service.dart';
import 'package:bluestacks/home/tournament/infrastructure/tournament_repository.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final dioProvider = Provider((ref) => Dio());

final tournamentRemoteServiceProvider = Provider(
  (ref) => TournamentRemoteService(ref.watch(dioProvider)),
);

final tournamentRepositoryProvider = Provider(
  (ref) => TournamentRepository(ref.watch(tournamentRemoteServiceProvider)),
);

final tournamentNotifierProvider =
    StateNotifierProvider<TournamentNotifier, TournamentState>(
  (ref) => TournamentNotifier(
    ref.watch(tournamentRepositoryProvider),
  ),
);
