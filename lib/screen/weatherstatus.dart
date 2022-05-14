import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class status extends StatelessWidget {
  final Map Wstatus;
  status(this.Wstatus);
  //const status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent,
          centerTitle: true,
          title: Text(
            Wstatus['place'],
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(15),
          child: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              children: <Widget>[
                FlipCard(
                  direction: FlipDirection.HORIZONTAL,
                  front: card1("MIN TEMP.", "imag/min.gif"),
                  back: backinfo(
                      Wstatus['min'] == '' ? "NO DATA" : Wstatus['min'],
                      Colors.blue),
                ),
                FlipCard(
                  direction: FlipDirection.VERTICAL,
                  front: card1("MAX TEMP.", 'imag/max.gif'),
                  back: backinfo(
                      Wstatus['max'] == '' ? "NO DATA" : Wstatus['max'],
                      Colors.yellow),
                ),
                FlipCard(
                  direction: FlipDirection.HORIZONTAL,
                  front: card1("RAIN STATUS", 'imag/rain.gif'),
                  back: backinfo(
                      Wstatus['rain'] == '' ? "NO DATA" : Wstatus['rain'],
                      Colors.grey),
                ),
              ]),
        ));
  }
}

class card1 extends StatelessWidget {
  String title1;
  String image;
  card1(this.title1, this.image);

  //const card1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      child: Center(
        child: Column(children: [
          Image.asset(
            image,
            height: 100,
            width: 100,
          ),
          Text(
            title1,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ]),
      ),
    );
  }
}

class backinfo extends StatelessWidget {
  String back;
  MaterialColor clrs;
  backinfo(this.back, this.clrs);
  // const backinfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        color: clrs,
        elevation: 20,
        child: Center(
          child: Text(
            back,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
        ));
  }
}
