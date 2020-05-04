import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuizzBody extends StatefulWidget {
  @override
  _QuizzBodyState createState() => _QuizzBodyState();
}

class _QuizzBodyState extends State<QuizzBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Text('Some question')),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlatButton(
              child: Text('Btn one'),
              color: Colors.black54,
              onPressed: (){
                print('One');
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlatButton(
              child: Text('Btn two'),
              color: Colors.green,
              onPressed: () {
                print('Two');
              },
            ),
          ),
        ),
        Expanded(
          //TODO add list with checkboxes
          child: Text('This is list'),
        )
      ],
    );
  }
}
