import 'package:flutter/material.dart';
import 'package:pokedex/features/pokemon/pokemons_page.dart';
import 'package:pokedex/features/pokemon/pokemons_repository.dart';

class PokemonDetailPage extends StatelessWidget {
  const PokemonDetailPage({super.key, required this.pokemon});

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pokemon.name.capitalize()),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                ),
                height: 100,
                width: 100,
                child: Image.network(pokemon.imageUrl),
              ),
              Text('Weight: ${pokemon.weight}'),
            ],
          ),
        ),
      ),
    );
  }
}
