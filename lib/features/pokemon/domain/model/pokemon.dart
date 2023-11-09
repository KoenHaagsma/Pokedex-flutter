import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon.freezed.dart';
part 'pokemon.g.dart';

@freezed
class Pokemon with _$Pokemon {
  factory Pokemon({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'weight') required int weight,
  }) = _Pokemon;

  factory Pokemon.fromJson(Map<String, dynamic> json) =>
      _$PokemonFromJson(json);
}

@freezed
class PokemonMinimal with _$PokemonMinimal {
  factory PokemonMinimal({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'url') required String url,
  }) = _PokemonMinimal;

  factory PokemonMinimal.fromJson(Map<String, dynamic> json) =>
      _$PokemonMinimalFromJson(json);
}

@freezed
class PokemonList with _$PokemonList {
  factory PokemonList({
    @JsonKey(name: 'results') required List<PokemonMinimal> results,
  }) = _PokemonList;

  factory PokemonList.fromJson(Map<String, dynamic> json) =>
      _$PokemonListFromJson(json);
}
