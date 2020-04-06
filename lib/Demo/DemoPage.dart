import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:responsive/Demo/Demo.dart';


class DemoPage extends StatelessWidget {
  List<Widget> pageChildren(double width, BuildContext context) {
    return <Widget>[

      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Talk to Experts",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Column(
                children: <Widget>[
                  Text(
                    "Free advice to solve your new marketing problems.",
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                  Text("Software and services that can help you reach your goals.",
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                ],
              ),
            ),
            Text('email: info@oppkey.com',
            style: TextStyle(color: Colors.white, fontSize: 20)),

          ],
        ),
      ),
            Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Image.asset(
          "assets/images/demo.png",
          width: width,
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1000) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: pageChildren(constraints.biggest.width / 2, context),
        );
      } else {
        return Column(
          children: pageChildren(constraints.biggest.width, context),
        );
      }
    });
  }
}
