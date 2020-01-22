import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: 'Flutter WebView Demo',
    theme: new ThemeData(
    primarySwatch: Colors.blue,
    ),
    routes: {
    '/': (_) => new WebviewScaffold(
    url: "https://flutter.dev",
    appBar: new AppBar(
    title: const Text('Widget webview'),
    ),
    withZoom: true,
    withLocalStorage: true,
    hidden: true,
    initialChild: Container(
    color: Colors.redAccent,
    child: const Center(
    child: Text('Waiting.....'),
    ),
    ),
    ),
    },
    );
  }
}