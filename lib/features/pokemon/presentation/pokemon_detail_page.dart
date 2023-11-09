import 'package:flutter/material.dart';
import 'package:pokedex/features/pokemon/presentation/pokemon_details.dart';
import 'package:pokedex/features/pokemon/presentation/pokemon_searchbox.dart';

class PokemonDetailPage extends StatelessWidget {
  const PokemonDetailPage({super.key, required this.pokemonName});
  final String pokemonName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search for a Pokemon'),
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
          child: const SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Spacer(),
                PokemonSearchBox(),
                Spacer(),
                PokemonDetails(),
                Spacer(),
              ],
            ),
          )),
    );
  }
}
