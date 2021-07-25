import 'package:dio/dio.dart';

import '../../../core/infrastructure/cache_service.dart';
import 'tournament_dto.dart';

class TournamentRemoteService {
  final Dio _dio;

  TournamentRemoteService(this._dio);

  Future<List<TournamentDTO>> fetchTournament() async {
    try {
      final String? cursor = CacheService.get('cursor');
      final String url =
          'https://tournaments-dot-game-tv-prod.uc.r.appspot.com/tournament/api/tournaments_list_v2?limit=10&status=all${cursor != null && cursor.isNotEmpty ? '&cursor=$cursor' : ''}';
      final response = await _dio.getUri(
        Uri.parse(url),
      );
      final extractedData = response.data['data'];
      CacheService.put('cursor', extractedData['cursor'].toString());
      final convertedData = (extractedData['tournaments'] as List<dynamic>)
          .map((e) => TournamentDTO.fromJson(e as Map<String, dynamic>))
          .toList();
      return convertedData;
    } catch (e) {
      rethrow;
    }
  }
}
