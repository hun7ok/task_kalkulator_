import 'package:flutter/material.dart';

void main() => runApp(MyHomePage());

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Kalkulator(),
    );
  }
}

class Kalkulator extends StatefulWidget {
  @override
  _KalkulatorState createState() => _KalkulatorState();
}

class _KalkulatorState extends State<Kalkulator> {

  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  TextEditingController bil1Controller = TextEditingController();
  TextEditingController bil2Controller = TextEditingController();
  TextEditingController operatorController = TextEditingController();
  TextEditingController hasilController = TextEditingController();
  String bilangan1,bilangan2;
  int hasilnya;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        title: Text(
          "Kalkulator",
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Form(
            child: Column(
              children: <Widget>[
                TextFormField(
                  controller: bil1Controller,
                    keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Bilangan 1',

                  )
                ),
                TextFormField(
                    controller: bil2Controller,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: 'Bilangan 2'
                    )
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      RaisedButton(
                          onPressed: () {
                            setState(() {
                              bilangan1 = bil1Controller.text ;
                              bilangan2= bil2Controller.text  ;
                              hasilnya = int.parse(bilangan1) + int.parse(bilangan2);


                              //print(hasilnya);

                            });
                          },

                          child: Text("+"),
                      ),
                      RaisedButton(
                        onPressed: () {
                          setState(() {
                            bilangan1 = bil1Controller.text ;
                            bilangan2= bil2Controller.text  ;
                            hasilnya = int.parse(bilangan1) - int.parse(bilangan2);

                          });
                        },
                        child: Text("-"),
                      ),
                      RaisedButton(
                        onPressed: () {
                          setState(() {
                            bilangan1 = bil1Controller.text ;
                            bilangan2= bil2Controller.text  ;
                            hasilnya = int.parse(bilangan1) * int.parse(bilangan2);
                          });
                        },
                        child: Text("X"),
                      ),
                      RaisedButton(
                        onPressed: () {
                          bilangan1 = bil1Controller.text ;
                          bilangan2= bil2Controller.text  ;
                          hasilnya = int.parse(bilangan1) % int.parse(bilangan2);
                        },
                        child: Text("/"),
                      ),

                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    Text("Hasilnya : "+hasilnya.toString(),style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                )

              ],
            )
        ),
      ),
    );
  }
}
