import 'package:flutter/material.dart';
import 'package:weather/screen/decode.dart';
import 'package:weather/screen/weatherstatus.dart';

class information extends StatefulWidget {
  String language;
  information(this.language);
 // const information({Key? key}) : super(key: key);

  @override
  State<information> createState() => _informationState();
}

class _informationState extends State<information> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          centerTitle: true,
          title: Text("WEATHER STATUS",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
        ),
        body: Container(
            padding: const EdgeInsets.all(20),
            child: FutureBuilder<List>(
                future: dataapi.getdata(
                    widget.language), // a previously-obtained Future<String> or null
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return ListView.builder(
                        itemCount: snapshot.data?.length,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          status(snapshot.data![index])));
                            },
                            child: Card(
                              elevation: 10,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  snapshot.data![index]['place'],
                                  style: const TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          );
                        });
                  } else {
                    return Container(
                      color: Colors.white,
                      child: Center(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 50,
                            ),
                            Image.asset(
                              "imag/weather.gif",
                              height: 300,
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            CircularProgressIndicator(),
                          ],
                        ),
                      ),
                    );
                  }
                })));
  }
}
