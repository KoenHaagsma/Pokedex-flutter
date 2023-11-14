import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/app/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pokemons_repository.freezed.dart';
part 'pokemons_repository.g.dart';

@riverpod
PokemonRepository pokemonRepository(PokemonRepositoryRef ref) {
  return PokemonRepository(ref.watch(dioProvider));
}

class PokemonRepository {
  PokemonRepository(this._dio);

  final Dio _dio;

  Future<List<Pokemon>> getPokemonList(
      {required int limit, required int offset}) async {
    Response response = await _dio.get('/pokemon?limit=$limit&offset=$offset');
    final List<dynamic> results = response.data['results'];

    final List<PokemonEntity> pokemonEntityList = await Future.wait(
      results.map((pokemon) async {
        final String url = pokemon['url'];
        final String id = url.split('/')[6];
        Response response = await _dio.get('pokemon/$id');
        return PokemonEntity.fromJson(response.data);
      }),
    );

    final List<Pokemon> pokemonList = await Future.wait(
      pokemonEntityList.map(
        (pokemon) async {
          final String name = pokemon.name;
          final int weight = pokemon.weight;
          final int height = pokemon.height;
          final int id = pokemon.id;
          final List<Map<String, dynamic>> stats = pokemon.stats;
          final List<Map<String, dynamic>> types = pokemon.types;

          Response response = await _dio.get('pokemon-form/$id');
          final String imageUrl = response.data['sprites']['front_default'];

          final typeList = types.map((type) {
            final String name = type['type']['name'];
            return Type(name: name);
          }).toList();

          final statList = stats.map((stat) {
            final int baseStat = stat['base_stat'];
            final int effort = stat['effort'];
            final Map<String, dynamic> statMap = stat['stat'];
            return Stat(
              baseStat: baseStat,
              effort: effort,
              stat: statMap,
            );
          }).toList();

          return Pokemon(
            id: id,
            name: name,
            weight: weight,
            height: height,
            imageUrl: imageUrl,
            stats: statList,
            types: typeList,
          );
        },
      ),
    );
    print(pokemonList);
    return pokemonList;
  }
}

@freezed
class Pokemon with _$Pokemon {
  const factory Pokemon({
    required int id,
    required String name,
    required int weight,
    required int height,
    required List<Stat> stats,
    required String imageUrl,
    required List<Type> types,
  }) = _Pokemon;

  factory Pokemon.fromJson(Map<String, dynamic> json) =>
      _$PokemonFromJson(json);
}

@freezed
class PokemonEntity with _$PokemonEntity {
  const factory PokemonEntity({
    required int id,
    required String name,
    required int weight,
    required int height,
    required List<Map<String, dynamic>> stats,
    required List<Map<String, dynamic>> types,
  }) = _PokemonEntity;

  factory PokemonEntity.fromJson(Map<String, dynamic> json) =>
      _$PokemonEntityFromJson(json);
}

@freezed
class PokemonMinimal with _$PokemonMinimal {
  const factory PokemonMinimal({
    required String name,
    required String url,
  }) = _PokemonMinimal;

  factory PokemonMinimal.fromJson(Map<String, dynamic> json) =>
      _$PokemonMinimalFromJson(json);
}

@freezed
class Stat with _$Stat {
  const factory Stat({
    required int baseStat,
    required int effort,
    required Map<String, dynamic> stat,
  }) = _Stat;

  factory Stat.fromJson(Map<String, dynamic> json) => _$StatFromJson(json);
}

@freezed
class Type with _$Type {
  const factory Type({
    required String name,
  }) = _Type;

  factory Type.fromJson(Map<String, dynamic> json) => _$TypeFromJson(json);

  const Type._();

  Color get color {
    switch (name) {
      case 'normal':
        return Colors.grey;
      case 'fire':
        return Colors.red;
      case 'water':
        return Colors.blue;
      case 'grass':
        return Colors.green;
      case 'electric':
        return Colors.amber;
      case 'ice':
        return Colors.cyanAccent;
      case 'fighting':
        return Colors.orange;
      case 'poison':
        return Colors.purple;
      case 'ground':
        return Colors.orangeAccent;
      case 'flying':
        return Colors.indigo;
      case 'psychic':
        return Colors.pink;
      case 'bug':
        return Colors.lightGreen;
      case 'rock':
        return Colors.grey;
      case 'ghost':
        return Colors.indigoAccent;
      case 'dark':
        return Colors.brown;
      case 'dragon':
        return Colors.indigo;
      case 'steel':
        return Colors.blueGrey;
      case 'fairy':
        return Colors.pinkAccent;
      default:
        return Colors.grey;
    }
  }
}
