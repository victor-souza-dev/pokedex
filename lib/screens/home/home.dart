import 'package:flutter/material.dart';
import 'package:pokemon_project/models/attributes.dart';
import 'package:pokemon_project/screens/home/widgets/informations.dart';
import 'package:pokemon_project/screens/home/widgets/informationsQuadrado.dart';
import 'package:pokemon_project/screens/home/widgets/weaknesses.dart';

class Home extends StatelessWidget {
  final Attributes _attributes = Attributes(
      description:
          "Charizard - Ele cospe fogo que é quente o suficiente para derreter pedregulhos. Pode causar incêndios florestais ao soprar chamas.",
      photo: "assets/images/charizard.png",
      heigth: 1.7,
      weight: 90.5,
      type: "fogo".toUpperCase(),
      abiliity: "Chama");
  final Attributes _attributes2 = Attributes(
      description:
          "Haunter - Sua língua é feita de gás. Se lambido, sua vítima começa a tremer constantemente até que a morte venha.",
      photo: "assets/images/haunter.png",
      heigth: 1.6,
      weight: 0.1,
      type: "Fantasma".toUpperCase(),
      abiliity: "Leveza");
  final Attributes _attributes3 = Attributes(
      description:
          "Onix - À medida que cava no solo, ele absorve muitos objetos duros. É isso que torna seu corpo tão sólido.",
      photo: "assets/images/onix.png",
      heigth: 8.8,
      weight: 210,
      type: "rocha".toUpperCase(),
      abiliity: "Robusto");
  final Attributes _attributes4 = Attributes(
      description:
          "Gyarados - Possui uma natureza extremamente agressiva. O Hyper Beam que dispara de sua boca incinera totalmente todos os alvos.",
      photo: "assets/images/gyarados.png",
      heigth: 6.5,
      weight: 235,
      type: "água".toUpperCase(),
      abiliity: "Intimidação");

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Pokémons"),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Informations(_attributes),
          SizedBox(
            height: 20,
          ),
          InformationsContainer(_attributes, _attributes.type),
          SizedBox(height: 50,),
          Weaknesses(_attributes.type),

          SizedBox(height: 100,),
          Informations(_attributes2),
          SizedBox(
            height: 20,
          ),
          InformationsContainer(_attributes2, _attributes2.type),
          SizedBox(height: 50,),
          Weaknesses(_attributes2.type),

          SizedBox(height: 100,),
          Informations(_attributes3),
          SizedBox(
            height: 20,
          ),
          InformationsContainer(_attributes3, _attributes3.type),
          SizedBox(height: 50,),
          Weaknesses(_attributes3.type),

          SizedBox(height: 100,),
          Informations(_attributes4),
          SizedBox(
            height: 20,
          ),
          InformationsContainer(_attributes4, _attributes4.type),
          SizedBox(height: 50,),
          Weaknesses(_attributes4.type),
        ]),
      ),
    );
  }
}
