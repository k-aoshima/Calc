import 'dart:ffi';

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

class KeyWidget extends StatelessWidget{

  double _buttonWidth = 0;
  double _buttonHeight = 0;
  Color _buttonColor = Colors.black;
  Color _textClor = Colors.black;
  KeyType _keyType = KeyType.Normal;
  String _text = '';
  final Function(String, KeyType)? onPressedCallback;

  KeyWidget(KeyType keyType, this.onPressedCallback, [String text = '']){    

    _keyType = keyType;
    _text = text;

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
  

  String _getText(String text){
    if(text == ''){
      switch(_keyType){
        case KeyType.Period:
          return '.';
        case KeyType.Zero:
          return '0';
        case KeyType.AC:
          return 'AC';
        case KeyType.PlusMinus:
          return '+/-';
        case KeyType.Persent: 
          return '%';
        case KeyType.Division:
          return '÷';
        case KeyType.Equal:
          return '=';
        case KeyType.Minus:
          return '-';
        case KeyType.Plus:
          return '+';
        case KeyType.Multiplication:
          return '×';
        default:
          return text;
      }
    }
    else{
      return text;
    }
  }

  

  @override
  Widget build(BuildContext context) {

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
            onPressedCallback!(_text, _keyType);
          },
          child: Text(
            _getText(_text),
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