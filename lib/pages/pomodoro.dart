import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_pomodoro/components/cronometro.dart';
import 'package:mobx_pomodoro/components/entradaTempo.dart';
import 'package:provider/provider.dart';

import '../store/pomodoro.store.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(child: Cronometro()),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 40),
            child: Observer(builder: (_) =>Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                EntradaTempo(
                  valor: store.tempoTrabalho,
                  titulo: 'Trabalho',
                  inc: store.iniciado && store.estaTrabalhando() ? null : store.incrementarTempoTrabalho,
                  dec: store.iniciado && store.estaTrabalhando() ? null : store.decrementarTempoTrabalho,
                ),
                EntradaTempo(
                  valor: store.tempoDescanso,
                  titulo: 'Descanso',
                  inc: store.iniciado && store.estaDescansando() ? null : store.incrementarTempoDescanso,
                  dec: store.iniciado && store.estaDescansando() ? null : store.decrementarTempoDescanso,
                )
              ],
            ),),
          )
        ],
      ),
    );
  }
}
