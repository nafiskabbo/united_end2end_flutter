import 'package:flutter/material.dart';
import 'package:united_end2end/core/utils/primitive_utils.dart';
import 'package:united_end2end/core/utils/view_utils.dart';
import 'package:united_end2end/core/widgets/scaffold/app_bar_scaffold.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebviewScreen extends StatefulWidget {
  static const argTitle = 'title';
  static const argUrl = 'url';

  final Map<String, String> queryParams;

  const WebviewScreen({super.key, required this.queryParams});

  @override
  State<WebviewScreen> createState() => _WebviewScreenState();
}

class _WebviewScreenState extends State<WebviewScreen> {
  var loadingPercentage = 0;
  late final WebViewController controller;
  late final String title;
  late final String url;

  @override
  void initState() {
    title = widget.queryParams[WebviewScreen.argTitle].orEmpty;
    url = widget.queryParams[WebviewScreen.argUrl].orEmpty;
    controller = WebViewController()
      ..setBackgroundColor(context.surfaceColor)
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (url) {
            setState(() {
              loadingPercentage = 0;
            });
          },
          onProgress: (progress) {
            setState(() {
              loadingPercentage = progress;
            });
          },
          onPageFinished: (url) {
            setState(() {
              loadingPercentage = 100;
            });
          },
          onNavigationRequest: (navigation) {
            // if (navigation.url != url) {
            //   return NavigationDecision.prevent;
            // }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(url));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppBarScaffold(
      pageTitle: title,
      child: Stack(
        children: [
          WebViewWidget(controller: controller),
          if (loadingPercentage < 100)
            LinearProgressIndicator(
              value: loadingPercentage / 100.0,
            ),
        ],
      ),
    );
  }
}
