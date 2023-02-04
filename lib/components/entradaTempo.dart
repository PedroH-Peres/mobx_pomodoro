import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class EntradaTempo extends StatelessWidget {
  final String titulo;
  final int valor;

  const EntradaTempo({
    super.key,
    required this.valor,
    required this.titulo,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          '${this.titulo}',
          style: TextStyle(fontSize: 25),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(15),
                  backgroundColor: Colors.red),
              onPressed: () {},
              child: Icon(
                Icons.arrow_downward,
                color: Colors.white,
              ),
            ),
            Text(
              '${this.valor} min',
              style: TextStyle(fontSize: 18),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                    backgroundColor: Colors.red),
                onPressed: () {},
                child: Icon(
                  Icons.arrow_upward,
                  color: Colors.white,
                )),
          ],
        )
      ],
    );
  }
}
