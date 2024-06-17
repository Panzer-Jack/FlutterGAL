import 'package:flutter/material.dart';
import 'package:flutter_gal/pages/home/home_page.dart';

class MyRouter {
  static const homePage = 'gal://';

  Widget _getPage(String url, dynamic params) {
    if (url.startsWith('https://') || url.startsWith('http://')) {
      // return WebViewPage(url, params: params);
    } else {
      switch (url) {
        case homePage:
          return HomePage();
      }
    }
    return null;
  }

  MyRouter.pushNoParams(BuildContext context, String url) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => _getPage(url, null)));
  }

  MyRouter.push(BuildContext context, String url, dynamic params) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return _getPage(url, params);
    }));
  }
}
