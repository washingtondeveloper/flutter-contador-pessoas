import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _counter = 0;
  var _msg = 'Pode Entrar';

  void _myCounter(delta) {
    setState(() {
      _counter += delta;

      if (_counter > 10) {
        _msg = 'Esta Lotado!!';
      } else if (_counter < 0) {
        _msg = 'Esta Doido?';
      } else {
        _msg = 'Pode Entrar';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Image.asset("images/restaurant.jpg", height: 1000.0, fit: BoxFit.cover),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            myLabel('Pessoas $_counter'),
            Padding(
              padding: EdgeInsets.only(bottom: 33.0, top: 33.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  myButton('- 1', () => _myCounter(-1)),
                  myButton('+ 1', () => _myCounter(1)),
                ],
              ),
            ),
            myLabel(_msg)
          ],
        ),
      ],
    ));
  }
}

Widget myButton(text, Function) {
  return FlatButton(
    child: Text(text, style: TextStyle(fontSize: 33.0, color: Colors.white)),
    onPressed: () => Function(),
  );
}

Widget myLabel(text) {
  return Text(text, style: TextStyle(fontSize: 33.0, color: Colors.white));
}
