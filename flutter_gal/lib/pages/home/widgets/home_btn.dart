import 'package:flutter/material.dart';

class HomeBtn extends StatelessWidget {
  const HomeBtn(
      {key, @required this.text, @required this.iconName, this.onPressed})
      : super(key: key);
  final String text;
  final IconData iconName;
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Container(
        margin: const EdgeInsets.only(left: 16, right: 16),
        height: 200,
        width: 200,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(Color.fromRGBO(200, 200, 200, 0.2)),
            foregroundColor: MaterialStateProperty.all(Colors.white70),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                iconName,
                size: 120,
              ),
              Text(
                text,
                style: TextStyle(fontSize: 24),
              )
            ],
          ),
        ),
      ),
    );
  }
}
