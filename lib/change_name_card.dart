import 'package:flutter/material.dart';
class ChangeNameCard extends StatelessWidget {
  const ChangeNameCard({
    Key key,
    @required String text,
    @required TextEditingController nameController,
  }) : _text = text, _nameController = nameController, super(key: key);

  final String _text;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset(
          "assets/android.jpeg",
          fit: BoxFit.cover,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          _text,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 80,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: _nameController,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                hintText: "Enter something please!",
                labelText: "Write",
                border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.all(Radius.circular(16.0)))),
          ),
        )
      ],
    );
  }
}
