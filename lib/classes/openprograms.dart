import 'dart:io';
import 'package:msix/msix.dart';

class OpenPrograms {
  String? buttonName = '';
  OpenPrograms(this.buttonName);

  void openApplications() {
    switch (buttonName) {
      case 'Chrome':
        Process.run(
            'C:/Program Files (x86)/Google/Chrome/Application/chrome.exe', []);
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
      case 'Teams':
        Process.run(
            'C:/Users/dariush/AppData/Local/Microsoft/Teams/Update.exe --processStart "Teams.exe"',
            []);
        break;
      case 'XSplit':
        Process.run(
            'C:/Program Files (x86)/SplitmediaLabs/XSplit Broadcaster/x64/XSplit.Core.exe',
            [], runInShell: true);
        break;
      case 'Memory Analyzer':
        Process.run(
            'C:/Memory Analyzer/mat/MemoryAnalyzer.exe',
            []);
        break;
      case 'Postman':
        Process.run(
            'C:/Users/dariush/AppData/Local/Postman/Postman.exe',
            []);
        break;
      case 'Restart':
        Process.run('shutdown -r -t 0 -f', [], runInShell: true);
        break;
      case 'Shutdown':
        Process.run('shutdown -s -t 0 -f', [], runInShell: true);
        break;
    }
  }
}
