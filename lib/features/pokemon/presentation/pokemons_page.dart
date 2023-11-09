import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/features/pokemon/application/provider.dart';

class PokemonsPage extends ConsumerWidget {
  const PokemonsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemonList = ref.watch(pokemonListProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokedex'),
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF4A6572),
              Color(0xFF344955),
            ],
          ),
        ),
        child: pokemonList.when(
          data: (pokemonList) => ListView.builder(
            itemCount: pokemonList.pokemonList.results.length,
            itemBuilder: (ctx, index) => ListTile(
              title: Text(pokemonList.pokemonList.results[index].name),
              subtitle: Text(pokemonList.pokemonList.results[index].url),
            ),
          ),
          error: (e, _) => Text(
            e.toString(),
          ),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
