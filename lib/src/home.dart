import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Titulo'),
        ),
        body: Center(child: Text('Numero de clics: $_count')),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              //_count = _count + 1;
              print('Valor de count: $_count');
            },
            child: const Icon(Icons.add)));
  }
}
