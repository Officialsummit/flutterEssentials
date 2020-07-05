import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: "Lets Begin Flutter", home: HomePage()));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lets Go 2020!"),
      ),
      body: Container(
        color: Colors.greenAccent,
        child: Center(child: Text("This is flutter practice")),
      ),
    );
  }
}
