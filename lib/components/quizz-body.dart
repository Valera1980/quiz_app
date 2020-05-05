import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuizzBody extends StatefulWidget {
  @override
  _QuizzBodyState createState() => _QuizzBodyState();
}

class _QuizzBodyState extends State<QuizzBody> {
  List<Icon> scoreKeeper = [];
  List<String> questions = [
    'Is JAVA object oriented language',
    'Is JavaScript pure functional language',
    'Can you use clojures in C',
    'Has an abstract class instance',
    'Has singleton private constructor',
  ];
  String textMessage = '';
  List<bool> answers = [true, false, false, false, true];
  int counter = 0;
//  int textIndex = 0;
  static String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Text(questions[counter])),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlatButton(
              child: Text('True'),
              color: Colors.green,
              onPressed: () {
                setState(() {
                  print(counter);
                  if(counter < questions.length){
                    if (answers[counter] == true) {
                      scoreKeeper.add(Icon(
                        Icons.check,
                        color: Colors.green,
                      ));
                    } else {
                      scoreKeeper.add(Icon(
                        Icons.close,
                        color: Colors.red,
                      ));
                    }
                  }
                  if(counter < questions.length){
                    counter++;
                  }
                  if(counter == questions.length - 1){
                    counter = questions.length - 1;
                  }
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlatButton(
              child: Text('False'),
              color: Colors.red,
              onPressed: () {
//                setState(() {
//                  counter++;
//                  if (counter < questions.length) {
//                    textIndex = counter;
//                    if (answers[counter] == true) {
//                      scoreKeeper.add(Icon(
//                        Icons.close,
//                        color: Colors.red,
//                      ));
//                    } else {
//                      scoreKeeper.add(Icon(
//                        Icons.check,
//                        color: Colors.green,
//                      ));
//                    }
//                  }
//                });
              },
            ),
          ),
        ),
        Row(
            //TODO add list with checkboxes
            children: scoreKeeper)
      ],
    );
  }
}
