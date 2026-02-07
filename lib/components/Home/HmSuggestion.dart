import 'package:flutter/material.dart';

class Hmsuggestion extends StatefulWidget {
  Hmsuggestion({Key? key}) : super(key: key);

  @override
  _HmsuggestionState createState() => _HmsuggestionState();
}

class _HmsuggestionState extends State<Hmsuggestion> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 100,
        alignment: Alignment.center,
        color: Colors.blue,
        child: Text("推荐", style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
