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
      theme: ThemeData(
        
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      
      _counter++;
    });
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
                  Padding(padding: EdgeInsetsDirectional.fromSTEB(0,0,10,0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children:[
                        Text(
                          'HelloWorld',
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
                        KeyWidget(KeyType.AC).KeyButton('AC'),
                        // +/-
                        KeyWidget(KeyType.PlusMinus).KeyButton('+/-'),
                        // %
                        KeyWidget(KeyType.Persent).KeyButton('%'),
                        // ÷
                        KeyWidget(KeyType.Division).KeyButton('÷'),
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
                        KeyWidget(KeyType.Normal).KeyButton('7'),
                        // 8
                        KeyWidget(KeyType.Normal).KeyButton('8'),
                        // 9
                        KeyWidget(KeyType.Normal).KeyButton('9'),
                        // ×
                        KeyWidget(KeyType.Multiplication).KeyButton('×'),
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
                        KeyWidget(KeyType.Normal).KeyButton('4'),
                        // 5
                        KeyWidget(KeyType.Normal).KeyButton('5'),
                        // 6
                        KeyWidget(KeyType.Normal).KeyButton('6'),
                        // -
                        KeyWidget(KeyType.Minus).KeyButton('-'),
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
                        KeyWidget(KeyType.Normal).KeyButton('1'),
                        // 2
                        KeyWidget(KeyType.Normal).KeyButton('2'),
                        // 3
                        KeyWidget(KeyType.Normal).KeyButton('3'),
                        // +
                        KeyWidget(KeyType.Plus).KeyButton('+'),
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
                        KeyWidget(KeyType.Zero).KeyButton('0'),
                        // .
                        KeyWidget(KeyType.Period).KeyButton('.'),
                        // =
                        KeyWidget(KeyType.Equal).KeyButton('='),
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
