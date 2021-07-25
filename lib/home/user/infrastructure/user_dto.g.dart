// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDTO _$_$_UserDTOFromJson(Map<String, dynamic> json) {
  return _$_UserDTO(
    name: json['name'] as String? ?? '',
    rating: json['rating'] as String? ?? '',
    played: json['played'] as String? ?? '',
    won: json['won'] as String? ?? '',
    percentage: json['percentage'] as String? ?? '',
  );
}

Map<String, dynamic> _$_$_UserDTOToJson(_$_UserDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'rating': instance.rating,
      'played': instance.played,
      'won': instance.won,
      'percentage': instance.percentage,
    };
