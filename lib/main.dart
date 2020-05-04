import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ScaffoldsMain());
}

class ScaffoldsMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('QUIZZ APP'),
      ),
      body: Column(
        children: <Widget>[Text('app init')],
      ),
    ));
  }
}
