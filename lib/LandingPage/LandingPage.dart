import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LandingPage extends StatelessWidget {
  List<Widget> pageChildren() {
    return <Widget>[
      Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Website \nDeveloper",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  color: Colors.white)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Text(
                "We have taken each and every project handed over to us as a challenge, which has helped us achived a high project success rate.",
                style: TextStyle(fontSize: 16.0, color: Colors.white)),
          ),
          MaterialButton(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
            onPressed: () {},
            child: Text(
              "Our Pakages",
              style: TextStyle(color: Colors.red),
            )),
        ],
      ))
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 800) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: pageChildren(),
        );
      } else {
        return Column(
          children: pageChildren(),
        );
      }
    });
  }
}
