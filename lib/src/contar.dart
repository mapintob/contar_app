import 'dart:ui';

import 'package:flutter/material.dart';

class Contar extends StatefulWidget {
  @override
  createState() => _ContarState();
}

class _ContarState extends State<Contar> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Titulo'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de clics:', style: new TextStyle(fontSize: 25)),
            Text(' $_count', style: new TextStyle(fontSize: 35))
          ],
        )),
        floatingActionButton: _botones());
  }

  Widget _botones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(width: 30),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _agregar),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: _quitar),
        Expanded(child: SizedBox(width: 30)),
        FloatingActionButton(child: Icon(Icons.refresh), onPressed: _reiniciar),
      ],
    );
  }

  void _agregar() {
    setState(() => _count++);
  }

  void _quitar() {
    setState(() => _count--);
  }

  void _reiniciar() {
    setState(() => _count = 0);
  }
}
