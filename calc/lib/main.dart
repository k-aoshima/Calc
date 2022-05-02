import 'package:flutter/material.dart';
import 'key_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme:  ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}



class _MyHomePageState extends State<MyHomePage> {

  
  String _result = '0';
  double _calcuration = 0;
  double _memory = 0;
  bool _reset = false;
  bool _periodFlag = false;
  String _clearText = '';

  KeyType _calcType = KeyType.Normal;


  void keyPress(String text, KeyType keyType){

    switch(keyType){
      case KeyType.Normal:
      case KeyType.Zero:
        
        if(_reset){
          _result = text;
          _reset = false;
          _calcuration = double.parse(text);
        }
        else{
          _result += text;
          _calcuration = double.parse(_result);
        }

      break;
      case KeyType.AC:

        setState(() {
          _result = '0';
          _reset = true;
          _clearText = 'AC';
        });
        
        return;
      case KeyType.Minus:
      case KeyType.Plus:
      case KeyType.Division:
      case KeyType.Multiplication:
        _memory = _calcuration;
        _calcType = keyType;
        _reset = true;
        return;
        
      case KeyType.Period:
        _periodFlag = true;
        
        break;
      case KeyType.PlusMinus:
        if(_result.contains('-')){
          _calcuration = double.parse(_result.replaceAll('-', ''));
        }else{
          _calcuration = double.parse('-' + _result);
        }
        break;
      case KeyType.Persent:
        _calcuration = _calcuration * 0.01;
        break;
        
      case KeyType.Equal:
        _calcuration = calcuration(_memory, _calcuration);
        _calcType = KeyType.Normal;
        break;
      
    }

    setState(() {
      
      _clearText = 'C';
      _result = _calcuration.toString();
      int periodPos = _result.indexOf('.');
      String buff = _result.substring(periodPos + 1, _result.length).replaceAll('0', '');
      if(buff.isEmpty){
        _result = _result.substring(0, periodPos);
      }
      if(_periodFlag & !_result.contains('.')){
        _result = _result + '.';
        _periodFlag = false;
      }
    });
  }

  double calcuration(double previous_section, double later_section){
    
    switch(_calcType){
      
      case KeyType.Minus:
        return previous_section - later_section;
      case KeyType.Plus:
        return previous_section + later_section;
      case KeyType.Division:
        return previous_section / later_section;
      case KeyType.Multiplication:
        return previous_section * later_section;
      default:
        return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(child: GestureDetector(
        onTap: ()=>FocusScope.of(context).unfocus(),
        child: Align(
          alignment: AlignmentDirectional(-0.15, -0.1),
          child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 50, 10, 30),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsetsDirectional.fromSTEB(0,0,15,0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children:[
                        Text(
                          _result,
                          style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                            )
                        )
                      ],
                    ),
                  ),
                  // 1段目
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // AC
                        KeyWidget(KeyType.AC, keyPress, _clearText),
                        // +/-
                        KeyWidget(KeyType.PlusMinus, keyPress),
                        // %
                        KeyWidget(KeyType.Persent, keyPress),
                        // ÷
                        KeyWidget(KeyType.Division, keyPress),
                      ],
                    ),
                  ),

                  // 2段目
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 7, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // 7
                        KeyWidget(KeyType.Normal, keyPress, '7'),
                        // 8
                        KeyWidget(KeyType.Normal, keyPress, '8'),
                        // 9
                        KeyWidget(KeyType.Normal, keyPress, '9'),
                        // ×
                        KeyWidget(KeyType.Multiplication, keyPress),
                      ],
                    ),
                  ),

                  // 3段目
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 7, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // 4
                        KeyWidget(KeyType.Normal, keyPress, '4'),
                        // 5
                        KeyWidget(KeyType.Normal, keyPress, '5'),
                        // 6
                        KeyWidget(KeyType.Normal, keyPress, '6'),
                        // -
                        KeyWidget(KeyType.Minus, keyPress),
                      ],
                    ),
                  ),

                  // 4段目
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 7, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // 1
                        KeyWidget(KeyType.Normal, keyPress, '1'),
                        // 2
                        KeyWidget(KeyType.Normal, keyPress, '2'),
                        // 3
                        KeyWidget(KeyType.Normal, keyPress, '3'),
                        // +
                        KeyWidget(KeyType.Plus, keyPress),
                      ],
                    ),
                  ),

                  // 5段目
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 7, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // 0
                        KeyWidget(KeyType.Zero, keyPress, '0'),
                        // .
                        KeyWidget(KeyType.Period, keyPress),
                        // =
                        KeyWidget(KeyType.Equal, keyPress),
                      ],
                    ),
                  ),
                ],
              )
          ),
        ),
      )),
      
    );
  }
}
