import 'package:flutter/material.dart';
import 'dart:math';
void main(){
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.cyan,
          appBar: AppBar(
            centerTitle: true,
            title: Text('ASK ANY QUESTION....?'),
            backgroundColor: Colors.cyan,
          ),
          body: BallPage(),
        ),
      ),    
    ),
  );
}

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  var changeBall = 1;

  void changeBallAns(){
    setState(() {
      changeBall =Random().nextInt(5)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
                  child: Image.asset('assets/images/ball$changeBall.png'),
                onPressed: (){
                    setState(() {
                      changeBallAns();
                    });
                },
              ),
          ),
        ],
      ),
    );
  }
}
