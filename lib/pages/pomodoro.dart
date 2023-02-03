import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mobx_pomodoro/components/entradaTempo.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Pomodoro"),
          EntradaTempo(valor: 25, titulo: 'Trabalho'),
          EntradaTempo(valor: 5, titulo: 'Descanso')
        ],
      ),
    );
  }
}