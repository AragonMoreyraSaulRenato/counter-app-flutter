import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final TextStyle _styleText = new TextStyle(fontSize: 25.0);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Titulo'),
          centerTitle: true,
          elevation: 2.0,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Numero de tabs:', style: _styleText),
              Text('$_conteo', style: _styleText),
            ],
          ),
        ),
        floatingActionButton: _crearBotones());
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0),
        FloatingActionButton(
          child: Icon(Icons.exposure_zero),
          onPressed: () => _onPressed("reset"),
        ),
        Expanded(child: SizedBox(width: 5.0)),
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: () => _onPressed("sub"),
        ),
        SizedBox(width: 5.0),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => _onPressed("add"),
        ),
      ],
    );
  }

  void _onPressed(String type) {
    setState(() {
      switch (type) {
        case "add":
          _conteo++;
          break;
        case "sub":
          _conteo--;
          break;
        default:
          _conteo = 0;
          break;
      }
    });
  }
}
