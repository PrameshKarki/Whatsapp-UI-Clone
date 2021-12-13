import "package:flutter/material.dart";

// *Import pages
import 'pages/Home.dart';

void main() => runApp(Root());

class Root extends StatefulWidget {
  @override
  _RootState createState() => _RootState();
}

class _RootState extends State<Root> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff075E54),
        accentColor: Color(0xff25D366),
        textTheme: ThemeData.light().textTheme.copyWith(
            headline1: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
            bodyText1: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            bodyText2: TextStyle(fontSize: 13)),
      ),
      initialRoute: "/",
      routes: {"/": (ctx) => Home()},
    );
  }
}
