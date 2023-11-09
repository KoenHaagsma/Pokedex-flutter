import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/features/pokemon/application/provider.dart';

class PokemonDetails extends ConsumerWidget {
  const PokemonDetails({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemonDataValue = ref.watch(pokemonProvider);
    final pokemonName = ref.watch(pokemonNameProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(pokemonName, style: const TextStyle(fontSize: 24)),
        pokemonDataValue.when(
          data: (pokemonData) => Text(
            pokemonData.weight.toString(),
          ),
          error: (e, _) => Text(
            e.toString(),
          ),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
        )
      ],
    );
  }
}
