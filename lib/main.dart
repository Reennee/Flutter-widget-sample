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
                Align(
                  alignment: Alignment.center,
                  child: Text('Aligned Text'),
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(
                    minWidth: 100,
                    minHeight: 50,
                    maxWidth: 150,
                    maxHeight: 100,
                  ),
                  child: Container(
                    color: Colors.orange,
                    child: Text('ConstrainedBox'),
                  ),
                ),
                FittedBox(
                  child: Text('FittedBox'),
                ),
                RotatedBox(
                  quarterTurns: 1,
                  child: Text('RotatedBox'),
                ),
                SizedBox(
                  width: 100,
                  height: 50,
                  child: Container(color: Colors.purple),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Padding Widget'),
                )
                Chip(
                  label: Text('Chip Widget'),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.pink,
                  child: Transform.rotate(
                    angle: 0.1,
                    child: Text('Transform Widget'),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.info),
                  title: Text('ListTile with Icon'),
                )      
              ],
            ),
          ),
        ],
      ),
    );
  }
}
