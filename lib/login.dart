import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(LoginApp());

class LoginApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Login Chanllenge',
      theme: ThemeData(
        primaryColor: Colors.deepPurple
      ),
      home:LoginPage(),
    );
  }
}
class LoginPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return _LoginPageState();
  }
}
class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            color: Colors.blue,
            )
          ]
        ),
      ),
    );
  }
}