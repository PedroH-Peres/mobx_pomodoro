import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_pomodoro/store/contador.store.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

final store = ContadorStore();

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    throw Scaffold(
      appBar: AppBar(
       
        title: Text("Pomodoro"),
      ),
      body: Center(
       
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Observer(builder: ((_) =>  Text(
              '${store.contador}',
              style: Theme.of(context).textTheme.headline4,
            )))
           
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: store.incrementar,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );;
  }

  
}

