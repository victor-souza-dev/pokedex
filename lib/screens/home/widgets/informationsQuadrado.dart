import 'package:flutter/material.dart';
import 'package:pokemon_project/models/attributes.dart';
import 'package:pokemon_project/style.dart';

class InformationsContainer extends StatelessWidget {
  final Attributes _attributes;
  final String typeElement;

  InformationsContainer(this._attributes, this.typeElement);

  Widget build(BuildContext context) {
    return Container(
      height: 400,
      decoration: BoxDecoration(
        color: Colors.lightBlue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      "Altura",
                      style: TextStyle(
                        fontSize: 34,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      _attributes.heigth.toString() + " m",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      "Tipo",
                      style: TextStyle(
                        fontSize: 34,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: typeElement == "FOGO"
                            ? Colors.orange
                            : typeElement == "ÁGUA" ? Colors.blueAccent : typeElement == "TERRA" ? Colors.yellow : typeElement == "ROCHA" ? Colors.brown : typeElement == "GELO" ? Colors.lightBlueAccent : typeElement == "FANTASMA" ? Colors.black : Colors.lightBlue,
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 13, vertical: 8),
                      child: Row(
                        children: [
                          Text(
                            _attributes.type,
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ]),
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      "Peso",
                      style: TextStyle(
                        fontSize: 34,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      _attributes.weight.toString() + " kg",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      "Habilidade",
                      style: TextStyle(
                        fontSize: 34,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      _attributes.abiliity,
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ]),
        ],
      ),
    );
  }
}
