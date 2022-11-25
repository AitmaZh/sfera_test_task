import 'package:flutter/material.dart';

class MainButtonView extends StatelessWidget {
  final Function? function;
  final String? text;

  const MainButtonView({Key? key, this.text, this.function}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ElevatedButton(
          onPressed: (() => function!),
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            backgroundColor: const Color.fromRGBO(116, 127, 228, 1.0),
          ),
          child: Text(
            text!,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 18,
            ),
          )),
    );
  }
}
