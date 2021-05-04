import 'package:flutter/material.dart';
import 'package:navigationtuts/main.dart';

class SecondPage extends StatefulWidget {
  final String data;

  const SecondPage({Key key, @required this.data}) : super(key: key);
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'This is the second page !!',
            ),
            Text(widget.data),
            ElevatedButton(
              child: Text("Go to First page"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyHomePage()));
              },
            )
          ],
        ),
      ),
    );
  }
}
