import 'package:flutter/material.dart';

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
      appBar: AppBar(
        title: Text(widget.title),
      ),
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
                        Padding(padding: EdgeInsetsDirectional.fromSTEB(0, 0, 7, 0),
                          child: SizedBox(
                            width: 80,
                            height: 80,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xA6FFFFFF)
                              ),
                              onPressed: (){
                              },
                              child: Text(
                                'AC',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                        ),
                        // +/-
                        Padding(padding: EdgeInsetsDirectional.fromSTEB(0, 0, 7, 0),
                          child: SizedBox(
                            width: 80,
                            height: 80,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xA6FFFFFF)
                              ),
                              onPressed: (){
                              },
                              child: Text(
                                '+/-',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                        ),
                        // %
                        Padding(padding: EdgeInsetsDirectional.fromSTEB(0, 0, 7, 0),
                          child: SizedBox(
                            width: 80,
                            height: 80,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xA6FFFFFF)
                              ),
                              onPressed: (){
                              },
                              child: Text(
                                '%',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                        ),
                        // ÷
                        Padding(padding: EdgeInsetsDirectional.fromSTEB(0, 0, 7, 0),
                          child: SizedBox(
                            width: 80,
                            height: 80,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 67, 30, 236)
                              ),
                              onPressed: (){
                              },
                              child: Text(
                                '÷',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                        ),
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
                        Padding(padding: EdgeInsetsDirectional.fromSTEB(0, 0, 7, 0),
                          child: SizedBox(
                            width: 80,
                            height: 80,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0x3EFFFFFF)
                              ),
                              onPressed: (){
                              },
                              child: Text(
                                '7',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                        ),
                        // 8
                        Padding(padding: EdgeInsetsDirectional.fromSTEB(0, 0, 7, 0),
                          child: SizedBox(
                            width: 80,
                            height: 80,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0x3EFFFFFF)
                              ),
                              onPressed: (){
                              },
                              child: Text(
                                '8',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                        ),
                        // 9
                        Padding(padding: EdgeInsetsDirectional.fromSTEB(0, 0, 7, 0),
                          child: SizedBox(
                            width: 80,
                            height: 80,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0x3EFFFFFF)
                              ),
                              onPressed: (){
                              },
                              child: Text(
                                '9',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                        ),
                        // ×
                        Padding(padding: EdgeInsetsDirectional.fromSTEB(0, 0, 7, 0),
                          child: SizedBox(
                            width: 80,
                            height: 80,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 67, 30, 236)
                              ),
                              onPressed: (){
                              },
                              child: Text(
                                '×',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                        ),
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
                        Padding(padding: EdgeInsetsDirectional.fromSTEB(0, 0, 7, 0),
                          child: SizedBox(
                            width: 80,
                            height: 80,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0x3EFFFFFF)
                              ),
                              onPressed: (){
                              },
                              child: Text(
                                '4',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                        ),
                        // 5
                        Padding(padding: EdgeInsetsDirectional.fromSTEB(0, 0, 7, 0),
                          child: SizedBox(
                            width: 80,
                            height: 80,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0x3EFFFFFF)
                              ),
                              onPressed: (){
                              },
                              child: Text(
                                '5',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                        ),
                        // 6
                        Padding(padding: EdgeInsetsDirectional.fromSTEB(0, 0, 7, 0),
                          child: SizedBox(
                            width: 80,
                            height: 80,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0x3EFFFFFF)
                              ),
                              onPressed: (){
                              },
                              child: Text(
                                '6',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                        ),
                        // -
                        Padding(padding: EdgeInsetsDirectional.fromSTEB(0, 0, 7, 0),
                          child: SizedBox(
                            width: 80,
                            height: 80,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 67, 30, 236)
                              ),
                              onPressed: (){
                              },
                              child: Text(
                                '-',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                        ),
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
                        Padding(padding: EdgeInsetsDirectional.fromSTEB(0, 0, 7, 0),
                          child: SizedBox(
                            width: 80,
                            height: 80,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0x3EFFFFFF)
                              ),
                              onPressed: (){
                              },
                              child: Text(
                                '1',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                        ),
                        // 2
                        Padding(padding: EdgeInsetsDirectional.fromSTEB(0, 0, 7, 0),
                          child: SizedBox(
                            width: 80,
                            height: 80,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0x3EFFFFFF)
                              ),
                              onPressed: (){
                              },
                              child: Text(
                                '2',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                        ),
                        // 3
                        Padding(padding: EdgeInsetsDirectional.fromSTEB(0, 0, 7, 0),
                          child: SizedBox(
                            width: 80,
                            height: 80,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0x3EFFFFFF)
                              ),
                              onPressed: (){
                              },
                              child: Text(
                                '3',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                        ),
                        // +
                        Padding(padding: EdgeInsetsDirectional.fromSTEB(0, 0, 7, 0),
                          child: SizedBox(
                            width: 80,
                            height: 80,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 67, 30, 236)
                              ),
                              onPressed: (){
                              },
                              child: Text(
                                '+',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                        ),
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
                        // 1
                        Padding(padding: EdgeInsetsDirectional.fromSTEB(0, 0, 7, 0),
                          child: SizedBox(
                            width: 167,
                            height: 80,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0x3EFFFFFF)
                              ),
                              onPressed: (){
                              },
                              child: Text(
                                '0',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                        ),
                        // .
                        Padding(padding: EdgeInsetsDirectional.fromSTEB(0, 0, 7, 0),
                          child: SizedBox(
                            width: 80,
                            height: 80,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0x3EFFFFFF)
                              ),
                              onPressed: (){
                              },
                              child: Text(
                                '.',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                        ),
                        // =
                        Padding(padding: EdgeInsetsDirectional.fromSTEB(0, 0, 7, 0),
                          child: SizedBox(
                            width: 80,
                            height: 80,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 67, 30, 236)
                              ),
                              onPressed: (){
                              },
                              child: Text(
                                '=',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
          ),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
  }
}
