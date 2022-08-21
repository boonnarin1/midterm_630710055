// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:midterm_630710055/Celsius to Fahrenheit.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {

  final _controller = TextEditingController();
  final to_Fahren = Fahrenheit();

  // state variable
  var _feedbackText = '';
  var _showTestButton = false;

  void handleClickGuess() {
    setState(() {
      _showTestButton = !_showTestButton;
    });

    print('Button clicked!');
    print(_controller.text);
    var guess = double.tryParse(_controller.text);

    if (guess == null) {
      // แจ้ง error
      print('Input error');
      setState(() {
        _feedbackText = 'Input error, please try again';
      });
    } else {
      var re = to_Fahren.doGuess(guess);



        setState(() {
          _feedbackText = '$re';
        });

    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Midterm Exam'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Tempearture Convert '),
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter a tempearture value to convert',
              ),
            ),
            // Callback function
            ElevatedButton(
              onPressed: handleClickGuess,
              child: const Text('Celsius to Fahrenheit') ,
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.blue ,
              ),
            ),
            Text(_feedbackText),
            ElevatedButton(
              onPressed: handleClickGuess,
              child: const Text( 'Celsius to Kelvin') ,
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.blue ,
              ),
            ),
            Text(_feedbackText),
            ElevatedButton(
              onPressed: handleClickGuess,
              child: const Text( 'Kelvin to Celsius') ,
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.blue ,
              ),
            ),
            Text(_feedbackText),
            ElevatedButton(
              onPressed: handleClickGuess,
              child: const Text( 'Kelvin to Fahrenheit') ,
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.blue ,
              ),
            ),
            Text(_feedbackText),
            ElevatedButton(
              onPressed: handleClickGuess,
              child: const Text( 'Fahrenheit to Kelvin') ,
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.blue ,
              ),
            ),
            Text(_feedbackText),
            ElevatedButton(
              onPressed: handleClickGuess,
              child: const Text( 'Fahrenheit to Celsius') ,
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.blue ,
              ),
            ),
            Text(_feedbackText),

          ],
        ),
      ),
    );
  }
}
