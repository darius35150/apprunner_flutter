import 'package:flutter/material.dart';
import 'package:desktop_window/desktop_window.dart';
import 'classes/openprograms.dart';
// import 'package:msix/msix.dart';

Future<void> main() async {
  runApp(const MyApp());

  DesktopWindow.setFullScreen(false);
  await DesktopWindow.setWindowSize(const Size(710, 750));
  await DesktopWindow.setMaxWindowSize(const Size(710, 750));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Runner',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
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
    setState(() {
      var openApps = OpenPrograms(buttonName);
      openApps.openApplications();
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
              SizedBox(
                  width: 50,
                  height: 50,
                  child: Padding(
                      child: ElevatedButton(
                          onPressed: () {
                            _openApplication('Chrome');
                          },
                          child: const Text('Chrome')),
                      padding: const EdgeInsets.fromLTRB(15, 65, 15, 25))),
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
            ]),
        persistentFooterButtons: <Widget>[
          TextButton(
              child: const Text("Restart"),
              onPressed: () {
                _openApplication('Restart');
              }),
          TextButton(
              onPressed: () {
                _openApplication('Shutdown');
              },
              child: const Text("Shutdown"))
        ]);
  }
}
