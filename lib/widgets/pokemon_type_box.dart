import 'package:flutter/material.dart';

class PokemonTypeBox extends StatelessWidget {
  const PokemonTypeBox({super.key});

  @override
  Widget build(BuildContext context) {
    const pokemonTypeTextStyle = TextStyle(
        fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white);

    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(15),
      ),
      child: SizedBox(
        width: 150,
        height: 30,
        child: Center(
          child: Text('Fire', style: pokemonTypeTextStyle),
        ),
      ),
    );
  }
}
