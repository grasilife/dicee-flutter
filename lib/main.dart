import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      leftDiceNumber = 4;
                      print('更新视图');
                    });
                  },
                  child: Image.asset('images/dice$leftDiceNumber.png'))),
          Expanded(
              child: TextButton(
                  onPressed: () {
                    print('事件触发2');
                  },
                  child: Image.asset('images/dice1.png'))),
        ],
      ),
    );
  }
}
