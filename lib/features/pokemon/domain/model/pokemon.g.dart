// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonImpl _$$PokemonImplFromJson(Map<String, dynamic> json) =>
    _$PokemonImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      weight: json['weight'] as int,
    );

Map<String, dynamic> _$$PokemonImplToJson(_$PokemonImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'weight': instance.weight,
    };

_$PokemonMinimalImpl _$$PokemonMinimalImplFromJson(Map<String, dynamic> json) =>
    _$PokemonMinimalImpl(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$PokemonMinimalImplToJson(
        _$PokemonMinimalImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

_$PokemonListImpl _$$PokemonListImplFromJson(Map<String, dynamic> json) =>
    _$PokemonListImpl(
      results: (json['results'] as List<dynamic>)
          .map((e) => PokemonMinimal.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PokemonListImplToJson(_$PokemonListImpl instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
