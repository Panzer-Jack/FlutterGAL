import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gal/pages/home/widgets/home_btn.dart';

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '导航',
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        colorScheme: const ColorScheme.dark(),
        appBarTheme:
            AppBarTheme(systemOverlayStyle: SystemUiOverlayStyle.light),
      ),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _HomePage(),
    );
  }
}

class _HomePage extends StatelessWidget {
  const _HomePage({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '一个基于Flutter开发的视觉小说引擎',
                style: const TextStyle(
                  fontSize: 40,
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 100)),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    HomeBtn(text: 'Editor', iconName: Icons.edit),
                    HomeBtn(text: 'Setting', iconName: Icons.settings),
                    HomeBtn(text: 'Document', iconName: Icons.book),
                    HomeBtn(text: 'Stars', iconName: Icons.star),
                  ])
            ]),
      ),
    );
  }
}
