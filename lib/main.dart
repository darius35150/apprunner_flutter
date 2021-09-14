import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Runner',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'App Runner 2.0'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _openApplication(String buttonName) {
    setState(() {
      switch (buttonName) {
        case 'Chrome':
          Process.run(
              'C:/Program Files (x86)/Google/Chrome/Application/chrome.exe',
              []);
          break;
        case 'Firefox':
          Process.run('C:/Program Files/Mozilla Firefox/firefox.exe', []);
          break;
        case 'Eclipse19':
          Process.run('C:/eclipse.2019/eclipse.exe', []);
          break;
        case 'Eclipse20':
          Process.run('C:/eclipse_20/eclipse.exe', []);
          break;
        case 'VS Code':
          Process.run(
              'C:/Users/dariush/AppData/Local/Programs/Microsoft VS Code/Code.exe',
              []);
          break;
        case 'Notepad++':
          Process.run('C:/Program Files (x86)/Notepad++/notepad++.exe', []);
          break;
        case 'GitHub':
          Process.run(
              'C:/Users/dariush/AppData/Local/GitHubDesktop/GitHubDesktop.exe',
              []);
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: Wrap(
        runAlignment: WrapAlignment.spaceEvenly,
        children: [
          Row(
          children: [
            Padding(
              child: ElevatedButton(
                onPressed: () {
                  _openApplication('Chrome');
                },
                child: const Text('Chrome')
              ),
              padding: const EdgeInsets.fromLTRB(25, 25, 25, 0)
            ),
            Padding(
              child: ElevatedButton(
                onPressed: () {
                  _openApplication('Firefox');
                },
                child: const Text('Firefox')
              ),
              padding: const EdgeInsets.fromLTRB(25, 25, 25, 0)
            ),
            Padding(
            child: ElevatedButton(
                onPressed: () {
                  _openApplication('Eclipse19');
                },
                child: const Text('Eclipse19')
              ),
              padding: const EdgeInsets.fromLTRB(25, 25, 25, 0)
            ),
            Padding(
            child: ElevatedButton(
              onPressed: () {
                _openApplication('Eclipse20');
              },
              child: const Text('Eclipse20')
            ),
            padding: const EdgeInsets.fromLTRB(25, 25, 25, 0)
            ),
          ElevatedButton(
              onPressed: () {
                _openApplication('VS Code');
              },
              child: const Text('VS Code')),
          ElevatedButton(
              onPressed: () {
                _openApplication('Notepad++');
              },
              child: const Text('Notepad++')),
          ElevatedButton(
              onPressed: () {
                _openApplication('GitHub');
              },
              child: const Text('GitHub')),
          ElevatedButton(
              onPressed: () {
                _openApplication('XSplit');
              },
              child: const Text('XSplit')),
          ElevatedButton(
              onPressed: () {
                _openApplication('Teams');
              },
              child: const Text('Teams')),
          ElevatedButton(
              onPressed: () {
                _openApplication('Memory Analyzer');
              },
              child: const Text('Memory Analyzer')),
          ElevatedButton(
              onPressed: () {
                _openApplication('Postman');
              },
              child: const Text('Postman'))
        ]
        )
      ])
    );
  }
}
