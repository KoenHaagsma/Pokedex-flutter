class PokemonApi {
  PokemonApi();

  static const String _apiBaseUrl = "pokeapi.co";
  static const String _apiPath = "/api/v2/";

  Uri pokemonName(String pokemonName) => _buildUri(
        endpoint: 'pokemon/$pokemonName',
        parametersBuilder: () => {},
      );

  Uri _buildUri({
    required String endpoint,
    required Map<String, dynamic> Function() parametersBuilder,
  }) {
    return Uri(
      scheme: 'https',
      host: _apiBaseUrl,
      path: '$_apiPath/$endpoint',
      queryParameters: parametersBuilder(),
    );
  }
}
