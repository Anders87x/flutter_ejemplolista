import 'package:flutter_ejemplolista/models/pokemon_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class Poke {

  Future<List<Pokemon>> getPokemon() async {
    final resp = await http.get( 'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json' );
    final decodedData = json.decode(resp.body);
    final poke = new Pokemons.fromJsonList(decodedData['pokemon']);
    return poke.items;
  }

}

