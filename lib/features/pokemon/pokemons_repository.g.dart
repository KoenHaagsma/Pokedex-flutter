// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemons_repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonImpl _$$PokemonImplFromJson(Map<String, dynamic> json) =>
    _$PokemonImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      weight: json['weight'] as int,
      imageUrl: json['imageUrl'] as String,
      types: (json['types'] as List<dynamic>)
          .map((e) => Type.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PokemonImplToJson(_$PokemonImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'weight': instance.weight,
      'imageUrl': instance.imageUrl,
      'types': instance.types,
    };

_$PokemonEntityImpl _$$PokemonEntityImplFromJson(Map<String, dynamic> json) =>
    _$PokemonEntityImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      weight: json['weight'] as int,
      types: (json['types'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$$PokemonEntityImplToJson(_$PokemonEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'weight': instance.weight,
      'types': instance.types,
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

_$TypeImpl _$$TypeImplFromJson(Map<String, dynamic> json) => _$TypeImpl(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$TypeImplToJson(_$TypeImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$pokemonRepositoryHash() => r'1efbc0b2f1d0b496d49cee64f11052ef2c3b1771';

/// See also [pokemonRepository].
@ProviderFor(pokemonRepository)
final pokemonRepositoryProvider =
    AutoDisposeProvider<PokemonRepository>.internal(
  pokemonRepository,
  name: r'pokemonRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$pokemonRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PokemonRepositoryRef = AutoDisposeProviderRef<PokemonRepository>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
