import 'package:flutter/material.dart';
import 'package:pokedex/features/pokemon/presentation/pokemon_detail_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const PokemonDetailPage(pokemonName: 'Pikachu'),
    );
  }
}
