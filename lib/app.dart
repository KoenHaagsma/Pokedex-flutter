import 'package:flutter/material.dart';
import 'package:pokedex/features/pokemon/pokemons_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: PokemonsPage(),
    );
  }
}
