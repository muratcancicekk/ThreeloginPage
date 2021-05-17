import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginpage/register.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(flex: 5, child: headerBuild(size)),
            Spacer(),
            Expanded(flex: 4, child: textfiealdBuild()),
            Spacer(),
            Expanded(flex: 1, child: loginBuild()),
            Spacer(),
            Expanded(flex: 1, child: footerBuild()),
          ],
        ),
      ),
    );
  }

  Container footerBuild() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Dont have an Account?',
          ),
          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RegisterPage(),
              ),
            ),
            child: Text(
              'Register',
              style: TextStyle(color: Colors.orangeAccent),
            ),
          )
        ],
      ),
    );
  }

  Container loginBuild() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25), color: Colors.orangeAccent),
      child: Text(
        'Login',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Container textfiealdBuild() {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(20),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 5),
            padding: EdgeInsets.only(left: 20),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(29),
            ),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Email',
                prefixIcon: Icon(Icons.email),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(29),
            ),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Password',
                prefixIcon: Icon(Icons.vpn_key),
              ),
            ),
          ),
          Container(
              alignment: Alignment.centerRight, child: Text('Forgot Password?'))
        ],
      ),
    );
  }

  Container headerBuild(Size size) {
    return Container(
      width: double.infinity,
      height: size.height * 0.4,
      decoration: BoxDecoration(
        color: Colors.orangeAccent,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100)),
      ),
      child: Stack(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              alignment: Alignment.center,
              child: Image.asset(
                'logo.png',
                height: size.height * 0.18,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Positioned(
              right: 30,
              bottom: 30,
              child: Container(
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
