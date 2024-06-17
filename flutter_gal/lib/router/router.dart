import 'package:flutter/material.dart';
import 'package:flutter_gal/pages/home/home_page.dart';
import 'package:flutter_gal/pages/setting/setting_page.dart';
import 'package:flutter_gal/pages/editor/editor_page.dart';

class MyRouter {
  static const homePage = 'gal://';
  static const editorPage = 'gal://setting';
  static const settingPage = 'gal://setting';

  Widget _getPage(String url, dynamic params) {
    if (url.startsWith('https://') || url.startsWith('http://')) {
      // return WebViewPage(url, params: params);
    } else {
      switch (url) {
        case homePage:
          return HomePage();
        case editorPage:
          return EditorPage();
        case settingPage:
          return SettingPage();
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
