// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tournament_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TournamentDTO _$_$_TournamentDTOFromJson(Map<String, dynamic> json) {
  return _$_TournamentDTO(
    name: json['name'] as String,
    gameName: json['game_name'] as String,
    coverUrl: json['cover_url'] as String,
  );
}

Map<String, dynamic> _$_$_TournamentDTOToJson(_$_TournamentDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'game_name': instance.gameName,
      'cover_url': instance.coverUrl,
    };
