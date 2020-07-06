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
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 400,
            height: 600,
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center
                    ,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(8),
                        height: 100,
                        width: 100,
                        color: Colors.red,
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        height: 100,
                        width: 100,
                        color:Colors.yellow
                      ),
                       Container(
                        padding: EdgeInsets.all(8),
                        height: 100,
                        width: 100,
                        color:Colors.blue
                      )
                    ],
              
                
              
              ),
            ),
          ),
        ));
  }
}
