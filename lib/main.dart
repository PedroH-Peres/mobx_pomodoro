import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_pomodoro/pages/pomodoro.dart';
import 'package:mobx_pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<PomodoroStore>(create: ((context) => PomodoroStore()),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Pomodoro',
        theme: ThemeData( 
          primarySwatch: Colors.blue,
        ),
        home: const Pomodoro(),
      ),
    );
  }
}




  
