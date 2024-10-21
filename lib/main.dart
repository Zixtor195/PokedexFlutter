import 'package:flutter/material.dart';
import 'user_interfaces/pokemon_details_screen.dart';
import 'user_interfaces/pokemon_list_screen.dart';

void main() {
  runApp(const MyPokedexApp());
}

class MyPokedexApp extends StatelessWidget {
  const MyPokedexApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex',
      home: PokemonDetailsScreen(),
    );
  }
}
