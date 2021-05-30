import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class UrlResult extends StatefulWidget {
  UrlResult({@required this.text});
  final String text;
  @override
  _UrlResultState createState() => _UrlResultState(text);
}

class _UrlResultState extends State<UrlResult> {
  String text;
  _UrlResultState(this.text);

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: text,
      hidden: true,
    );
  }
}
