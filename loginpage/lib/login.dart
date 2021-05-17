import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginpage/loginpage.dart';

class FirstScreen extends StatefulWidget {
  FirstScreen({Key key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.orangeAccent),
        child: InkWell(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LoginPage(),
              )),
          child: Center(
            child: Text('asljkd'),
          ),
        ),
      ),
    );
  }
}
