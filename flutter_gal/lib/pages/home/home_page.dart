import 'package:flutter/material.dart';
import 'package:flutter_gal/pages/home/widgets/home_btn.dart';
import 'package:flutter_gal/router/router.dart';

class HomePage extends StatelessWidget {
  const HomePage({key}) : super(key: key);

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
                    HomeBtn(
                        text: 'Editor',
                        iconName: Icons.edit,
                        onPressed: () {
                          MyRouter.pushNoParams(context, MyRouter.editorPage);
                        }),
                    HomeBtn(
                        text: 'Setting',
                        iconName: Icons.settings,
                        onPressed: () {
                          MyRouter.pushNoParams(context, MyRouter.settingPage);
                        }),
                    HomeBtn(
                        text: 'Document',
                        iconName: Icons.book,
                        onPressed: () {
                          print('123');
                        }),
                    HomeBtn(
                        text: 'Stars',
                        iconName: Icons.star,
                        onPressed: () {
                          print('123');
                        }),
                  ])
            ]),
      ),
    );
  }
}
