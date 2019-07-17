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
      backgroundColor: Colors.deepPurple,
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(14),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextFormField(
                      autofocus: true,

                      keyboardType: TextInputType.number,
                      style: new  TextStyle(color: Colors.white, fontSize: 30),
                      decoration: InputDecoration(
                        labelText: "CPF",
                        labelStyle: TextStyle(color: Colors.white, fontSize: 20),
                        border: InputBorder.none,
                      ),
                    ),
                    Divider(),
                    TextFormField(

                      obscureText: true,
                      keyboardType: TextInputType.text,
                      style: new  TextStyle(color: Colors.white, fontSize: 30),
                      decoration: InputDecoration(
                          labelText: "Senha",
                          border: InputBorder.none,
                          labelStyle: TextStyle(color: Colors.white, fontSize: 20)
                      ),
                    )
                  ],
                ),
              ),
            )
          ]
        ),
      ),
    );
  }
}