import 'package:flutter/material.dart';

enum KeyType{
  Normal,
  Zero,
  AC,
  Persent,
  Minus,
  Plus,
  Period,
  PlusMinus,
  Division,
  Equal,
  Multiplication
}

class KeyWidget{

  double _buttonWidth = 0;
  double _buttonHeight = 0;
  Color _buttonColor = Colors.black;
  Color _textClor = Colors.black;

  KeyWidget(KeyType keyType){
    switch(keyType){
      case KeyType.Normal:
      case KeyType.Period:
        _buttonWidth = 80;
        _buttonHeight = 80;
        _buttonColor = Color(0x3EFFFFFF);
        _textClor = Colors.white;
      break;
      case KeyType.Zero:
        _buttonWidth = 167;
        _buttonHeight = 80;
        _buttonColor = Color(0x3EFFFFFF);
        _textClor = Colors.white;
      break;
      case KeyType.AC:
      case KeyType.PlusMinus:
      case KeyType.Persent:
        _buttonWidth = 80;
        _buttonHeight = 80;
        _buttonColor = Color(0xA6FFFFFF);
        _textClor = Colors.black;
      break;

      case KeyType.Division:
      case KeyType.Equal:
      case KeyType.Minus:
      case KeyType.Plus:
      case KeyType.Multiplication:
        _buttonWidth = 80;
        _buttonHeight = 80;
        _buttonColor = Color.fromARGB(255, 67, 30, 236);
        _textClor = Colors.white;
      break;

      default:
      break;
    }
  }

  Widget KeyButton(String text) {
    return Padding(
    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 7, 0),
      child: SizedBox(
        width: _buttonWidth,
        height: _buttonHeight,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: _buttonColor,
          ),
          onPressed: (){
          },
          child: Text(
            text,
            style: TextStyle(
              fontSize: 30,
              color: _textClor,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ),
    );
  }
}