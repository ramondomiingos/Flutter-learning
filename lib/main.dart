import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Projeto inicial '),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Color green = Color(0xFF1E8161);
  final String url_image = "http://pbs.twimg.com/profile_images/996908496732946432/sVPsfsCw_200x200.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        elevation: 0,
        backgroundColor: green,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: (){},
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: (){})
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top:12),
            width:MediaQuery.of(context).size.width,
           // height: MediaQuery.of(context).size.height/2,
            decoration:  BoxDecoration(
                color: green,
                borderRadius: BorderRadius.only(
                    bottomRight:Radius.circular(16),bottomLeft: Radius.circular(16) )
            ),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                children: <Widget>[
                      Text('Followers',
                          style: TextStyle(
                              color:Colors.white),
                      ),
                      Text('12',
                            style: TextStyle(
                                color:Colors.white, fontWeight : FontWeight.bold),
                          )
                       ],
                      ),
                    ),

                    Container(
                      width: 120,
                      height: 120,
                      //image: NetworkImage(url_image),
                        decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.fill,
                                image: new NetworkImage(
                                    url_image)
                            )
                        )
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Column(
                        children: <Widget>[
                          Text('Following',
                          style: TextStyle(
                            color:Colors.white
                          ),),
                          Text('8',
                          style: TextStyle(
                            color: Colors.white, fontWeight : FontWeight.bold
                          ))
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top:10),
                  child: Text("ID: 123234234234", style: TextStyle(
                    color:Colors.white
                  ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:16, bottom: 32),
                  child: Text("Ramon Domingos",
                      style : TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight : FontWeight.bold
                  )
               ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:20, right: 20, bottom : 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Icon(Icons.group_add, color: Colors.white),
                          Text('Friends',
                                        style:
                                        TextStyle
                                          (color: Colors.white))
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Icon(Icons.videocam, color: Colors.white),
                          Text('Videos',
                              style:
                              TextStyle
                                (color: Colors.white))
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Icon(Icons.group, color: Colors.white),
                          Text('Groups',
                              style:
                              TextStyle
                                (color: Colors.white))
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Icon(Icons.favorite_border, color: Colors.white),
                          Text('Like',
                              style:
                              TextStyle
                                (color: Colors.white))
                        ],
                      )
                    ],
          ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(32),

            child: Column(

              children: <Widget>[

                Row(

                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[

                    Column(
                      children: <Widget>[
                        Icon(Icons.table_chart, color: Colors.grey),
                        Text("Leaders",
                        style: TextStyle(color:Colors.grey,fontWeight: FontWeight.bold))
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.assignment_ind, color: Colors.grey),
                        Text("Level up",
                            style: TextStyle(color:Colors.grey,fontWeight: FontWeight.bold))
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.card_giftcard, color: Colors.grey),
                        Text("Gift",
                            style: TextStyle(color:Colors.grey,fontWeight: FontWeight.bold))
                      ],
                    )
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[

                    Column(
                      children: <Widget>[
                        Icon(Icons.code, color: Colors.grey),
                        Text("Qrcode",
                            style: TextStyle(color:Colors.grey,fontWeight: FontWeight.bold))
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.blur_on, color: Colors.grey),
                        Text("Bonus",
                            style: TextStyle(color:Colors.grey,fontWeight: FontWeight.bold))
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.graphic_eq, color: Colors.grey),
                        Text("Visitors",
                            style: TextStyle(color:Colors.grey,fontWeight: FontWeight.bold))
                      ],
                    )
                  ],
                ),

              ],
            ),

          )
        ],
      ),
    );
  }
}
