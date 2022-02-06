import 'package:flutter/material.dart';

class animacaoimplicita extends StatefulWidget {
  @override
  _animacaoimplicitaState createState() => _animacaoimplicitaState();
}

class _animacaoimplicitaState extends State<animacaoimplicita> {
  bool _status = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        AnimatedContainer(
          padding: EdgeInsets.all(25),
          width: _status ? 200 : 300,
          height: _status ? 300 : 200,
          color: _status ? Colors.purpleAccent : Colors.greenAccent,
          curve: Curves.elasticOut,
          child: Image.asset("imagem/logo.png"),
          duration: Duration(seconds: 2),
        ),
        RaisedButton(
          child: Text("Alterar"),
          onPressed: () {
            setState(() {
              _status = !_status;
            });
          },
        ),
      ],
    );
  }
}
