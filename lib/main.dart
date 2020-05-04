import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/components/quizz-body.dart';

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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: QuizzBody(),
        ),
      )
    ));
  }
}
