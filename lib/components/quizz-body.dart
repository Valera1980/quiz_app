import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuizzBody extends StatefulWidget {
  @override
  _QuizzBodyState createState() => _QuizzBodyState();
}

class _QuizzBodyState extends State<QuizzBody> {
  List<Icon> scoreKeeper = [
//    Icon(
//      Icons.check,
//      color: Colors.green,
//    ),
//    Icon(
//      Icons.check,
//      color: Colors.green,
//    ),
//    Icon(
//      Icons.close,
//      color: Colors.red,
//    ),
//    Icon(
//      Icons.check,
//      color: Colors.green,
//    ),
//    Icon(
//      Icons.close,
//      color: Colors.red,
//    ),
  ];
  List<String> questions = [
    'Is JAVA object oriented language',
    'Is JavaScript pure functional language',
//    'Can you use clojures in C',
//    'Has an abstract class instance',
//    'Has singleton private constructor'
  ];
  List<bool> answers = [
    true,
    false,
//    false,
//    false,
//    true
  ];
  int questionNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Text(questions[questionNumber])),
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
                  if (questionNumber < questions.length ) {
                    if (answers[questionNumber] == true) {
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
                    questionNumber++;
                    print(questionNumber);
                    print('&&&&&&&&&&&&&&77');

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
                setState(() {
                  if (questionNumber < questions.length - 1) {
                    if (answers[questionNumber] == false) {
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
                    questionNumber++;
                  }
                });
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
