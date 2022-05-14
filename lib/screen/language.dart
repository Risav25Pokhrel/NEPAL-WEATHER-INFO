import 'package:flutter/material.dart';
import 'package:weather/screen/information.dart';

class language extends StatelessWidget {
  const language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "SELECT THE LANGUAGE",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Row(
          children: [
            SizedBox(
              width: 20,
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => information(
                            "https://nepal-weather-api.herokuapp.com/api/?place=all")));
              },
              icon: Icon(null),
              label: Text(
                "ENGLISH",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              width: 80,
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => information(
                            'https://nepal-weather-api.herokuapp.com/api/?placenp=all')));
              },
              icon: Icon(null),
              label: Text(
                "नेपाली ",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
