import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(flex: 16, child: headerBuild(size)),
            Spacer(),
            Expanded(flex: 19, child: textfieldBuild(size)),
            Spacer(),
            Expanded(flex: 3, child: registerBuild()),
            Spacer(),
            Expanded(flex: 2, child: footerBuild()),
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
          Text('Already a member?'),
          Text(
            'Login',
            style: TextStyle(
              color: Colors.deepOrange,
            ),
          )
        ],
      ),
    );
  }

  Container registerBuild() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      padding: EdgeInsets.symmetric(vertical: 5),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(29),
        color: Colors.orangeAccent,
      ),
      child: Text(
        'Register',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
    );
  }

  Container textfieldBuild(Size size) {
    return Container(
        margin: EdgeInsets.only(left: 20, right: 20, top: 20),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(29), color: Colors.white),
              child: TextField(
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Fullname',
                  hintStyle: TextStyle(
                    fontSize: 12,
                  ),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(29),
                  color: Colors.white54),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Email',
                  prefixIcon: Icon(Icons.mail),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(29),
                  color: Colors.white54),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Phone Number',
                  prefixIcon: Icon(Icons.phone),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(29),
                  color: Colors.white54),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.vpn_key),
                ),
              ),
            ),
          ],
        ));
  }

  Container headerBuild(Size size) {
    return Container(
      width: double.infinity,
      height: size.height * 0.36,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(100),
        ),
        color: Colors.orangeAccent,
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
            flex: 3,
            child: Positioned(
              right: 30,
              bottom: 30,
              child: Text(
                'Register',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
