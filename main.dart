import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Homepage());
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String abc = "Head";
  String xyz = "Tail";
  bool a = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Turn The Coin"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              a ? abc : xyz,
              style: TextStyle(fontSize: 30 ),
            ),
            Image.asset(
              a ? "images/head.jpg" : "images/tail.jpg",
            ),
            
            
            ElevatedButton(
              onPressed: () {
                a = !a;
                print(a);
                setState(() {});
              },
              child: Text("Turn"),
            )
          ],
        ),
      ),
    );
  }
}
