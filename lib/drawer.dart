import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text(
                  "Sumit Chhetri",
                  style: TextStyle(fontSize: 20),
                ),
                accountEmail: Text("xettrisumit@gmail.com",
                    style: TextStyle(fontSize: 10)),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1488161628813-04466f872be2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=80"),
                ),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Account"),
                subtitle: Text(
                  "personal",
                  style: TextStyle(fontSize: 8),
                ),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Setting"),
                subtitle: Text(
                  "personal",
                  style: TextStyle(fontSize: 8),
                ),
              )
            ],
          
        ),
      );
  }
}
