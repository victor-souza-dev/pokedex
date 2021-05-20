import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Weaknesses extends StatelessWidget {
  final String weaknesses;

  Weaknesses(this.weaknesses);

  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Fraquezas:",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                ),
              )
            ],
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: weaknesses == "ÁGUA" ? Colors.lightBlueAccent : weaknesses == "GELO" ? Colors.orange : weaknesses == "FANTASMA" ? Colors.black : Colors.blueAccent,
                      ),
                padding:
                  EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                child: Row(
                  children: [
                  Text(
                    weaknesses == "ÁGUA" ? "GELO" : weaknesses == "GELO" ? "FOGO" : weaknesses == "FANTASMA" ? "FANTASMA" : "ÁGUA",
                    style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                ),
              )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: weaknesses == "FOGO" ? Colors.yellow : weaknesses == "ROCHA" ? Colors.lightBlueAccent : weaknesses == "TERRA" ? Colors.lightBlueAccent : Colors.white,
                      ),
                padding:
                  EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                child: Row(
                  children: [
                  Text(
                    weaknesses == "FOGO" ? "TERRA" : weaknesses == "TERRA" ? "GELO" : weaknesses == "ROCHA" ? "GELO" : "",
                    style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                ),
              )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                          color: weaknesses == "FOGO" ? Colors.brown : Colors.white,
                      ),
                padding:
                  EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                child: Row(
                  children: [
                  Text(
                    weaknesses == "FOGO" ? "ROCHA" : "",
                    style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                ),
              )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
