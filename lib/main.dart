import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

TextEditingController _controller = TextEditingController();
TextEditingController _controller2 = TextEditingController();

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Collect and Display"),
      ),
        body: Column(
      children: [
        Container(
          height: 20,
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Name:  " + _controller.text,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
        Container(
          height: 20,
        ),
         Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Age:  " + _controller2.text,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),

        Container(
          height: 60,
        ),
        TextField(
          controller: _controller,
          decoration: InputDecoration(
            labelText: "Name",
            labelStyle: TextStyle(fontSize: 25),

            border: OutlineInputBorder(),
            hintText: 'Enter your name',
          ),
        ),
        Container(
          height: 30,
        ),
        TextField(
          keyboardType: TextInputType.number,
          controller: _controller2,
          decoration: InputDecoration(
            labelText: "Age",
            labelStyle: TextStyle(fontSize: 25),
            border: OutlineInputBorder(),
            hintText: 'Enter your name',

          ),
        ),

        Container(
          height: 30,
        ),
        IconButton(
            icon: Icon(
              Icons.print,
              size: 40,
              color: Colors.red,
            ),
            onPressed: () {
              setState(() {});
            })
      ],
    ));
  }
}
