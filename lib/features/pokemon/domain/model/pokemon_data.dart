import 'package:pokedex/features/pokemon/domain/model/pokemon.dart';

class PokemonData {
  PokemonData({
    required this.id,
    required this.name,
    required this.weight,
  });

  factory PokemonData.from(Pokemon pokemon) {
    return PokemonData(
      id: pokemon.id,
      name: pokemon.name,
      weight: pokemon.weight,
    );
  }

  final int id;
  final String name;
  final int weight;
}
