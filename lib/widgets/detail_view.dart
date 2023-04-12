import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DeatilView extends StatefulWidget {
  String newsUrl;
  DeatilView({super.key, required this.newsUrl});

  @override
  State<DeatilView> createState() => _DeatilViewState();
}

class _DeatilViewState extends State<DeatilView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        initialUrl:widget.newsUrl,
        javascriptMode:JavaScriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          
        },
      ),
    );
  }
}

class WebView {
}
