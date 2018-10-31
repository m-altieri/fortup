import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: "Fortup Demo",
  home: LoginScreen(),
  theme: ThemeData(
    fontFamily: "Burbank Big Condensed",
    brightness: Brightness.dark,
//    primaryColor: Colors.blue[800], // Very light grey
//    accentColor: Colors.grey, // Very light grey
  ),
));

class LoginScreen extends StatefulWidget {

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    print("primaryColor: " + Theme.of(context).primaryColor.toString() +
        "accentColor: " + Theme.of(context).accentColor.toString() +
        "scaffoldBackgroundColor: " + Theme.of(context).scaffoldBackgroundColor.toString());
    Widget header = Container(
      child: Column(
        children: [
          Text(
            "FortUp",
            style: TextStyle(
              fontSize: 24.0,
              color: Theme.of(context).accentColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              width: 100.0,
//            height: 100.0,
              child: Image.asset("images/logo.png",
                  fit: BoxFit.cover),
            ),
          ),
        ],
      ),
    );

    Widget loginInput = Container(
      child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: "Username",),
            ),
            TextField(
              decoration: InputDecoration(hintText: "Password",),
              obscureText: true,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  child: Text("Reset"),
                ),
                RaisedButton(
                  child: Text("Login"),
                ),
              ],
            ),
          ]
      ),
    );

    return new Scaffold(
//      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        title: Text("Login Screen"),
      ),
      body: Container(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: <Widget>[
            header,
            loginInput,
          ],
        ),
      ),
    );
  }
}