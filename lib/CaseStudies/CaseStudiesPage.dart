import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:responsive/Demo/Demo.dart';
import 'dart:html' as html;
import 'dart:js' as js;

class CaseStudiesPage extends StatelessWidget {
  List<Widget> pageChildren(double width, BuildContext context) {
    return <Widget>[

      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Learn From Success",
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
                    "Stories of heroic results.",
                    style: TextStyle(fontSize: 16.0, color: Colors.white),
                  ),
                  Text("Increase registrations. Increase traffic. Engage. Create.",
                    style: TextStyle(fontSize: 16.0, color: Colors.white),
                  ),
                ],
              ),
            ),

            InkWell(
              onTap: () {
                String externalUrl =
                    'https://brain.oppkey.com/content/casestudies/';

                js.context.callMethod("open", [externalUrl]);
              },
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.account_box,
                    size: 128,
                    color: Colors.white,
                  ),
                  Text('Case Studies',

                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
            Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Image.asset(
          "assets/images/hero.png",
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
