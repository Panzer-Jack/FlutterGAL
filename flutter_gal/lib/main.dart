import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gal/pages/home/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeRight,
    DeviceOrientation.landscapeLeft,
  ]).then((_) {
    runApp(HomePage());
  });
}
