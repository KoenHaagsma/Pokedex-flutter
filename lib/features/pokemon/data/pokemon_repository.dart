import 'dart:convert';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:pokedex/features/pokemon/data/pokemon_api.dart';
import 'package:pokedex/features/pokemon/data/pokemon_api_exception.dart';
import 'package:pokedex/features/pokemon/domain/model/pokemon.dart';

class HttpPokemonRepository {
  HttpPokemonRepository({required this.api, required this.client});

  final PokemonApi api;
  final http.Client client;

  Future<Pokemon> getPokemonByName({required String pokemonName}) => _getData(
        uri: api.pokemonName(pokemonName),
        builder: (data) {
          return Pokemon.fromJson(data);
        },
      );

  Future<T> _getData<T>({
    required Uri uri,
    required T Function(dynamic data) builder,
  }) async {
    try {
      final response = await client.get(uri);
      switch (response.statusCode) {
        case 200:
          final data = json.decode(response.body);
          return builder(data);
        case 401:
          throw InvalidApiKeyException();
        case 404:
          throw PokemonNotFoundException();
        default:
          throw UnknownException();
      }
    } on SocketException catch (_) {
      throw NoInternetConnectionException();
    }
  }
}

final pokemonRepositoryProvider = Provider((ref) {
  return HttpPokemonRepository(
    api: PokemonApi(),
    client: http.Client(),
  );
});
