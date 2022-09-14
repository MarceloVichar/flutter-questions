import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int nota;
  final void Function() quandoReiniciarQuestinario;

  const Resultado(this.nota, this.quandoReiniciarQuestinario, {Key key})
      : super(key: key);

  String get fraseResultado {
    if (nota < 20) {
      return 'Valeu a tentativa';
    }
    if (nota < 23) {
      return 'Voce é bom!';
    }
    if (nota < 26) {
      return 'Oloco meu, aí sim bicho!';
    } else {
      return 'Chuck Norris';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 28),
          ),
        ),
        ElevatedButton(
          onPressed: quandoReiniciarQuestinario,
          child: const Text(
            'Reiniciar',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ],
    );
  }
}
