import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class login2 extends StatefulWidget {
  @override
  _login2State createState() => _login2State();
}

class _login2State extends State<login2> {
  @override
  void initState(){
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: <Widget>[
            Opacity(
                opacity: 0.5,
            child: Image.asset(

              "images/pipa2.jpg",
              width:  MediaQuery.of(context).size.width,
             height: MediaQuery.of(context).size.height/3,
               )),
            Positioned(
              top:MediaQuery.of(context).size.height/6,left: MediaQuery.of(context).size.height/8,
              child: Text(
                "Login",
                style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,

                )
              ),
            ),
            Positioned(
              top:  MediaQuery.of(context).size.height/4,
              child: Container(
                
               padding: EdgeInsets.all(32 ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(237, 242, 242,1.0),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(72), topRight: Radius.circular(72))
                ),
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Username',
                        labelStyle: TextStyle(color: Colors.grey, fontSize: 20 ),
                        border: InputBorder.none,

                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16, bottom: 62),
                      child: TextField(
                        obscureText: true,

                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(color: Colors.grey, fontSize: 20),

                          border: InputBorder.none,

                        ),
                      ),
                    ),

                    Container(
                      height: 50,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.all(
                          Radius.circular(32)
                        )
                      ),
                      child: Center(
                        child: Text('Login!',
                        style: TextStyle(
                          color: Colors.white,
                            fontWeight: FontWeight.bold,
                          fontSize: 20

                        ))
                      ),
                    ),

                    Container(height: 8,),
                    Text("Esqueceu sua senha?",
                    style: TextStyle(
                      color: Colors.grey
                    )),
                    Container(height: 70,),
                    Row(

                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.all(Radius.circular(100)),
                          ),
                          child: Center(
                            child: Icon(Icons.face,
                                color: Colors.grey[700]),
                          ),
                        ),
                        Container(width: 40,),
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.all(Radius.circular(100)),
                          ),
                          child: Center(
                            child: Icon(Icons.fingerprint,
                                color: Colors.grey[700]),
                          ),
                        )
                      ],
                    )

                  ],
                ),
              ),
            )
          ],
        ),
      ) ,
    );
  }
}
