import 'package:flutter/material.dart';
import 'package:weather/screen/information.dart';
import 'package:weather/screen/language.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "WEATHER",
    home: start(),
  ));
}

class start extends StatelessWidget {
  const start({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Material(
            elevation: 5,
            child: Center(
              child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const language()));
                  },
                  icon: Icon(Icons.open_in_new_rounded),
                  label: Text(
                    " START",
                  )),
            )));
  }
}
