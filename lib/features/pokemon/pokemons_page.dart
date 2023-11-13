import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/features/pokemon/pokemon_detail_page.dart';
import 'package:pokedex/features/pokemon/pokemons_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pokemons_page.g.dart';

@riverpod
Future<List<Pokemon>> fetchPokemonList(FetchPokemonListRef ref) async {
  final pokemonList = await ref.watch(pokemonRepositoryProvider).getPokemonList(
        limit: 151,
        offset: 0,
      );
  ref.keepAlive();
  return pokemonList;
}

class PokemonsPage extends ConsumerWidget {
  const PokemonsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemonRef = ref.watch(fetchPokemonListProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokedex'),
      ),
      body: pokemonRef.when(
        data: (pokemonList) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1,
                crossAxisSpacing: 2,
                mainAxisSpacing: 12,
              ),
              itemCount: pokemonList.length,
              itemBuilder: (context, index) {
                final item = pokemonList[index];
                return GridTile(
                  key: ValueKey(item.id),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (ctx) => PokemonDetailPage(
                              pokemon: item,
                            ),
                          ),
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(item.imageUrl, width: 70, height: 70),
                          Text(
                            '#${item.id}',
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                          Text(item.name.capitalize()),
                          Row(
                            children: [
                              for (final type in item.types)
                                Center(
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                      right: 4,
                                      top: 8,
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 4,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: type.color,
                                    ),
                                    child: Text(
                                      type.name.capitalize(),
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        },
        error: (err, stack) => Text('Error: $err'),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}
