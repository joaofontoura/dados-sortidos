import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dados'),
          backgroundColor: Colors.red,
        ),
        backgroundColor: Colors.red,
        body: DadoPagina(),
      ),
    ),
  );
}

class DadoPagina extends StatefulWidget {
  @override
  _DadoPaginaState createState() => _DadoPaginaState();
}

class _DadoPaginaState extends State<DadoPagina> {
  int numEsquerdo = 1;
  int numDireito = 2;
  int total = 0;

  void numRandomDado() {
    numEsquerdo = Random().nextInt(6) + 1;
    numDireito = Random().nextInt(6) + 1;
  }

  Widget build(BuildContext context) {
    total = numDireito + numEsquerdo;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            'Total : $total',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.white,
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      numRandomDado();
                    });
                  },
                  child: Image.asset('images/dado$numEsquerdo.png'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      numRandomDado();
                    });
                  },
                  child: Image.asset('images/dado$numDireito.png'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
