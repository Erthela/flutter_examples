import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_project/new_page_ui.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lime,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Column(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'You have pushed the button this many times:',
                  ),
                  Text(
                    '$_counter',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('1'),
                          ),
                          CupertinoButton(
                              child: Text('1.1'),
                              onPressed: () {},
                              color: Color.fromRGBO(59, 224, 75, 1.0),
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              child: Text('3'),
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              child: Text('4'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      semanticChildCount: 10,
                      children: [
                        ...List.generate(
                          10,
                          (index) => Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text(index.toString()),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Stack(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          color: Color.fromRGBO(0, 255, 0, 1),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          color: Color.fromRGBO(255, 0, 0, 1),
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              width: 40,
                              height: 70,
                              color: Color.fromRGBO(0, 255, 255, 1),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                            right: 0,
                            child: Container(
                              width: 20,
                              height: 20,
                              color: Color.fromRGBO(0, 0, 255, 1),
                            ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      height: 250,
                      width: double.infinity,
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        semanticChildCount: 10,
                        children: [
                          ...List.generate(
                            10,
                            (index) => Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text(index.toString()),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Visibility(
        visible: _counter < 30,
        child: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
        replacement: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => NewPage()));
          },
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
