import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widget Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Widgets Demo'),
      ),
      body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                Text('Hello, Flutter!'),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Elevated Button'),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Text('Outlined Button'),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.all(10.0),
                  color: Colors.blueAccent,
                  child: Text('Container with Padding and Margin'),
                ),
                Row(
                  children: [
                    Icon(Icons.star),
                    Text('Row with Icon and Text'),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.red,
                    ),
                    Positioned(
                      left: 20,
                      top: 20,
                      child: Container(
                        width: 50,
                        height: 50,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ), 
                  GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  children: [
                    Container(color: Colors.blue, height: 100),
                    Container(color: Colors.red, height: 100),
                    Container(color: Colors.green, height: 100),
                    Container(color: Colors.yellow, height: 100),
                  ],
                ),         
              ],
            ),
          ),
        ],
      ),
    );
  }
}
