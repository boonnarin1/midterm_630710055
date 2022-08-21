// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:midterm_630710055/Celsius to Fahrenheit.dart';
import 'package:midterm_630710055/Celsius to Kelvin.dart';
import 'package:midterm_630710055/Kelvin to Celsius.dart';
import 'package:midterm_630710055/Kelvin to Fahrenheit.dart';
import 'package:midterm_630710055/Fahrenheit to Celsius.dart';
import 'package:midterm_630710055/Fahrenheit to Kelvin.dart';
class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {

  final _controller = TextEditingController();
  final to_Fahren = cTo_Fahrenheit();
  final to_kavin = cTo_Kelvin();
  final k_To_Celsius = kTo_Celsius();
  final k_To_Fahrenheit = kTo_Fahrenheit();
  final f_To_Celsius = fTo_Celsius();
  final f_To_Kelvin = fTo_Kelvin();

  // state variable
  var _feedbackText = '';
  var _showTestButton = false;

  void handleClickGuess1() {
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
      } else if (guess != null) {
        var re = to_Fahren.doGuess(guess);
        setState(() {
          _feedbackText = '$guess Celsius= $re Fahren';
        });
      }
    }
  void handleClickGuess2(){
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
    } else if (guess != null) {
      var re = to_kavin.doGuess(guess);
      setState(() {
        _feedbackText = '$guess Celsius= $re kelvin';
      });
    }
  }
  void handleClickGuess3() {
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
    } else if (guess != null) {
      var re = k_To_Celsius.doGuess(guess);
      setState(() {
        _feedbackText = '$guess kelvin = $re Celsius';
      });
    }
  }
  void handleClickGuess4() {
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
    } else if (guess != null) {
      var re = k_To_Fahrenheit.doGuess(guess);
      setState(() {
        _feedbackText = '$guess kelvin = $re Fahrenheit';
      });
    }
  }
  void handleClickGuess5() {
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
    } else if (guess != null) {
      var re = f_To_Celsius.doGuess(guess);
      setState(() {
        _feedbackText = '$guess Fahrenheit = $re Celsius';
      });
    }
  }

  void handleClickGuess6() {
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
    } else if (guess != null) {
      var re = f_To_Kelvin.doGuess(guess);
      setState(() {
        _feedbackText = '$guess Fahrenheit = $re Kelvin';
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
              onPressed: handleClickGuess1,
              child: const Text('Celsius to Fahrenheit') ,
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.blue ,
              ),
            ),
            //Text(_feedbackText),
            ElevatedButton(
              onPressed: handleClickGuess2,
              child: const Text( 'Celsius to Kelvin') ,
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.blue ,
              ),
            ),
            //Text(_feedbackText),
            ElevatedButton(
              onPressed: handleClickGuess3,
              child: const Text( 'Kelvin to Celsius') ,
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.blue ,
              ),
            ),
            //Text(_feedbackText),
            ElevatedButton(
              onPressed: handleClickGuess4,
              child: const Text( 'Kelvin to Fahrenheit') ,
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.blue ,
              ),
            ),
            //Text(_feedbackText),
            ElevatedButton(
              onPressed: handleClickGuess5,
              child: const Text( 'Fahrenheit to Celsius') ,
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.blue ,
              ),
            ),
            //Text(_feedbackText),
            ElevatedButton(
              onPressed: handleClickGuess6,
              child: const Text( 'Fahrenheit to Kelvin ') ,
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
