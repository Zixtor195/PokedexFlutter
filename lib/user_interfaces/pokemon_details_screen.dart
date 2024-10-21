import 'package:flutter/material.dart';

import '../widgets/pokemon_type_box.dart';

const Color appBarColor = Color.fromARGB(255, 248, 160, 96);

class PokemonDetailsScreen extends StatelessWidget {
  const PokemonDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const Color ScaffoldColor = Color.fromARGB(255, 43, 41, 44);

    const titleTextStyle = TextStyle(
        fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white);

    return Scaffold(
      backgroundColor: ScaffoldColor,
      appBar: AppBar(
        backgroundColor: appBarColor,
        leading: Icon(Icons.arrow_back, color: Colors.white),
        title: Text('Pokedex', style: titleTextStyle),
        actions: [
          Text('#006', style: titleTextStyle),
          SizedBox(width: 15),
        ],
      ),
      body: _PokemonDetailsScreenBody(),
    );
  }
}

class _PokemonDetailsScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const pokemonNameTextStyle = TextStyle(
        fontSize: 40, fontWeight: FontWeight.normal, color: Colors.white);

    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: appBarColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(70.0),
              bottomRight: Radius.circular(70.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
            child: Image.asset('assets/images/charizard.png'),
          ),
        ),
        SizedBox(height: 30),
        Text('Charizard', style: pokemonNameTextStyle),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PokemonTypeBox(),
            SizedBox(width: 40),
            PokemonTypeBox(),
          ],
        )
      ],
    );
  }
}
