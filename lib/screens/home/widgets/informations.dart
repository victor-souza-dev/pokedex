import 'package:flutter/material.dart';
import 'package:pokemon_project/models/attributes.dart';

class Informations extends StatelessWidget {
  final Attributes _attributes;
  Informations(this._attributes);

  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset(
            _attributes.photo,
            width: 300,
            fit: BoxFit.fitWidth,
          ),
          SizedBox(height: 50,),
          Text(
            _attributes.description,
            style: TextStyle(
              fontSize: 24,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/bola_azul.png",
                  width: 35, fit: BoxFit.cover),
              SizedBox(
                width: 30,
              ),
              Image.asset(
                "assets/images/bola_vermelha.png",
                width: 35,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ],
      ),
    );
  }
  }
