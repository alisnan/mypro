import 'package:flutter/material.dart';

void main() => runApp(CalculatorApp());

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Calculator',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String _output = '';
  double _num1 = 0;
  double _num2 = 0;
  String _operator = '';
  bool _shouldClearOutput = false;

  void _handleButtonClick(String buttonText) {
    setState(() {
      if (buttonText == 'C') {
        _clearOutput();
      } else if (buttonText == '=') {
        _calculateResult();
      } else if (buttonText == '.') {
        _addDecimalPoint();
      } else if (buttonText == '+' ||
          buttonText == '-' ||
          buttonText == '×' ||
          buttonText == '÷') {
        _setOperator(buttonText);
      } else {
        _appendToOutput(buttonText);
      }
    });
  }

  void _clearOutput() {
    _output = '0';
    _num1 = 0;
    _num2 = 0;
    _operator = '';
    _shouldClearOutput = false;
  }

  void _calculateResult() {
    double result;
    result = _num1 + _num2;
    _num2 = double.parse(_output);

    switch (_operator) {
      case '+':
        result = _num1 + _num2;
        break;
      case '-':
        result = _num1 - _num2;
        break;
      case '×':
        result = _num1 * _num2;
        break;
      case '÷':
        result = _num1 / _num2;
        break;
    }
_output = result.toStringAsFixed(0);
_num1 = 0;
_num2 = 0;
_operator = '';
_shouldClearOutput = true;
  }

  void _addDecimalPoint() {
    if (_output.contains('.')) {
      return;
    }

    _appendToOutput('.');
  }

  void _setOperator(String operator) {
    _num1 = double.parse(_output);
    _operator = operator;
    _shouldClearOutput = true;
  }

  void _appendToOutput(String text) {
    if (_shouldClearOutput) {
      _output = '';
      _shouldClearOutput = false;
    }

    _output += text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              height: 20,
              width: 50,
              
              padding: EdgeInsets.all(16),
              alignment: Alignment.bottomRight,
              child: Text(
                _output,
                style: TextStyle(fontSize: 48),
              ),
            ),
          ),
          Divider(height: 1, color: Colors.blue),
          Wrap(
            children: [
              _buildButton('7'),
              _buildButton('8'),
              _buildButton('9'),
              _buildButton('÷'),
              _buildButton('4'),
              _buildButton('5'),
              _buildButton('6'),
              _buildButton('×'),
              _buildButton('1'),
              _buildButton('2'),
              _buildButton('3'),
              _buildButton('-'),
              _buildButton('0'),
              _buildButton('.'),
              _buildButton('='),
              _buildButton('+'),
              _buildButton('C'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildButton(String buttonText) {
    return SizedBox(
      width: 90,
      height: 90,
      child: TextButton(
        child: Text(
          buttonText,
          style: TextStyle(fontSize: 24),
        ),
        onPressed: () => _handleButtonClick(buttonText),
      ),
    );
  }
}