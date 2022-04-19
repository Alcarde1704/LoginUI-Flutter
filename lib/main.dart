import 'package:flutter/material.dart';

void main() => runApp(_MyAppState());

class _MyAppState extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter login UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Login'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    final emailField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Password",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final loginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {},
        child: Text("Login",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                    height: 155.0,
                    child: Image.network(
                        "data:image/jpeg;base64,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")),
                SizedBox(height: 45.0),
                emailField,
                SizedBox(height: 25.0),
                passwordField,
                SizedBox(
                  height: 35.0,
                ),
                loginButon,
                SizedBox(
                  height: 15.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
