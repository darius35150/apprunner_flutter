import 'dart:io';

import 'package:flutter/material.dart';
import 'package:desktop_window/desktop_window.dart';
// import 'classes/styles/buttonstyles.dart';


Future<void> main() async {
  runApp(const MyApp());
  DesktopWindow.setFullScreen(false);
  await DesktopWindow.setWindowSize(const Size(675, 750));
  await DesktopWindow.setMaxWindowSize(const Size(700, 750));
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
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _openApplication(String buttonName) {
    setState(() async {
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
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4),
            children: [
              Padding(
                  child: ElevatedButton(
                      onPressed: () {
                        _openApplication('Chrome');
                      },
                      child: const Text('Chrome')),
                  padding: const EdgeInsets.fromLTRB(15, 65, 15, 25)),
              Padding(
                  child: ElevatedButton(
                      onPressed: () {
                        _openApplication('Firefox');
                      },
                      child: const Text('Firefox')),
                  padding: const EdgeInsets.fromLTRB(15, 65, 15, 25)),
              Padding(
                  child: ElevatedButton(
                      onPressed: () {
                        _openApplication('Eclipse19');
                      },
                      child: const Text('Eclipse19')),
                  padding: const EdgeInsets.fromLTRB(15, 65, 15, 25)),
              Padding(
                  child: ElevatedButton(
                      onPressed: () {
                        _openApplication('Eclipse20');
                      },
                      child: const Text('Eclipse20')),
                  padding: const EdgeInsets.fromLTRB(15, 65, 15, 25)),
              Padding(
                  child: ElevatedButton(
                      onPressed: () {
                        _openApplication('VS Code');
                      },
                      child: const Text('VS Code')),
                  padding: const EdgeInsets.fromLTRB(15, 65, 15, 25)),
              Padding(
                  child: ElevatedButton(
                      onPressed: () {
                        _openApplication('Notepad++');
                      },
                      child: const Text('Notepad++')),
                  padding: const EdgeInsets.fromLTRB(15, 65, 15, 25)),
              Padding(
                  child: ElevatedButton(
                      onPressed: () {
                        _openApplication('GitHub');
                      },
                      child: const Text('GitHub')),
                  padding: const EdgeInsets.fromLTRB(15, 65, 15, 25)),
              Padding(
                  child: ElevatedButton(
                      onPressed: () {
                        _openApplication('XSplit');
                      },
                      child: const Text('XSplit')),
                  padding: const EdgeInsets.fromLTRB(15, 65, 15, 25)),
              Padding(
                  child: ElevatedButton(
                      onPressed: () {
                        _openApplication('Teams');
                      },
                      child: const Text('Teams')),
                  padding: const EdgeInsets.fromLTRB(15, 65, 15, 25)),
              Padding(
                  child: ElevatedButton(
                      onPressed: () {
                        _openApplication('Memory Analyzer');
                      },
                      child: const Text('Memory Analyzer')),
                  padding: const EdgeInsets.fromLTRB(15, 65, 15, 25)),
              Padding(
                  child: ElevatedButton(
                      onPressed: () {
                        _openApplication('Postman');
                      },
                      child: const Text('Postman')),
                  padding: const EdgeInsets.fromLTRB(15, 65, 15, 25)),
            ]));
  }
}
