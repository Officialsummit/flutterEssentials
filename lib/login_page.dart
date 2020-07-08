import 'package:flutter/material.dart';
import 'package:lets_begin/bg_image.dart';
import 'package:lets_begin/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            BgImage(),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                    child: Card(
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Please login..",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Form(
                            child: Column(
                          children: <Widget>[
                            SizedBox(height: 10.0),
                            TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Enter Username",
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                  )),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  hintText: "Enter Password",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)))),
                            )
                          ],
                        )),
                      ),
                      RaisedButton(
                          child: Text("Sign in"),
                          color: Colors.greenAccent,
                          textColor: Colors.black,
                          onPressed: () {
                            Navigator.pushNamed(context, "/home");
                          }),
                    ],
                  ),
                )),
              ),
            ),
          ],
        ));
  }
}
