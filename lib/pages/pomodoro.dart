import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mobx_pomodoro/components/cronometro.dart';
import 'package:mobx_pomodoro/components/entradaTempo.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(child: Cronometro()),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                EntradaTempo(valor: 25, titulo: 'Trabalho'),
                EntradaTempo(valor: 5, titulo: 'Descanso')
              ],
            ),
          )
        ],
      ),
    );
  }
}
