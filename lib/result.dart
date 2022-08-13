import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    var phrase = 'Test completado!!! :D';

    if (resultScore <= 15) {
      phrase = 'Que haces en este pais?';
    } else if (resultScore <= 25) {
      phrase = 'Te falta barrio mano';
    } else if (resultScore <= 35) {
      phrase = 'Tas good sigue asi';
    } else {
      phrase = '100% mexicano awebo que si';
    }
    return phrase;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
