import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class WebViewPage extends StatefulWidget {
  const WebViewPage({required this.url, required this.webTitle});
  final String url;
  final String webTitle;

  @override
  _WebViewPageState createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  double _progress = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.webTitle,
            ),
            Text(
              widget.url,
              style: TextStyle(color: Theme.of(context).textTheme.subtitle2?.color?.withOpacity(0.75), height: 1.4, fontSize: 10),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          InAppWebView(
            initialUrlRequest: URLRequest(
              url: Uri.parse(widget.url),
            ),
            initialOptions: InAppWebViewGroupOptions(
              android: AndroidInAppWebViewOptions(
                forceDark: AndroidForceDark.FORCE_DARK_AUTO,
              ),
              crossPlatform: InAppWebViewOptions(
                useShouldOverrideUrlLoading: true,
                useOnLoadResource: true,
                disableContextMenu: true,
              ),
            ),
            onProgressChanged: (_controller, progress) {
              setState(() {
                _progress = progress / 100;
              });
            },
          ),
          if (_progress < 1)
            SizedBox(
              height: 4,
              child: LinearProgressIndicator(
                value: _progress,
                backgroundColor: Theme.of(context).accentColor.withOpacity(0.2),
              ),
            )
          else
            const SizedBox.shrink(),
        ],
      ),
    );
  }
}
