import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/tournament.dart';

part 'tournament_dto.freezed.dart';
part 'tournament_dto.g.dart';

@freezed
class TournamentDTO with _$TournamentDTO {
  const TournamentDTO._();
  const factory TournamentDTO({
    required String name,
    @JsonKey(name: 'game_name') required String gameName,
    @JsonKey(name: 'cover_url') required String coverUrl,
  }) = _TournamentDTO;

  factory TournamentDTO.fromJson(Map<String, dynamic> json) =>
      _$TournamentDTOFromJson(json);

  TournamentDTO fromDomain(Tournament _) {
    return TournamentDTO(
      name: _.name,
      gameName: _.gameName,
      coverUrl: _.coverUrl,
    );
  }

  Tournament toDomain() {
    return Tournament(
      name: name,
      gameName: gameName,
      coverUrl: coverUrl,
    );
  }
}
