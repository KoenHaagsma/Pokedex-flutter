import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/features/pokemon/data/pokemon_repository.dart';
import 'package:pokedex/features/pokemon/domain/model/pokemon_data.dart';

final pokemonNameProvider = StateProvider<String>((ref) => '');

final pokemonProvider = FutureProvider.autoDispose<PokemonData>((ref) async {
  final pokemonName = ref.watch(pokemonNameProvider);
  final pokemon = await ref
      .watch(pokemonRepositoryProvider)
      .getPokemonByName(pokemonName: pokemonName);
  return PokemonData.from(pokemon);
});

final pokemonListProvider = FutureProvider.autoDispose<PokemonListData>(
  (ref) async {
    final pokemonList = await ref
        .watch(pokemonRepositoryProvider)
        .getPokemonList(limit: 100, offset: 0);
    return PokemonListData.from(pokemonList);
  },
);
