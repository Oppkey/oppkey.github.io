import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:oppkey/Demo/Demo.dart';
import 'dart:html' as html;
import 'dart:js' as js;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutPage extends StatelessWidget {
  List<Widget> pageChildren(double width, BuildContext context) {
    return <Widget>[

      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Better than Marketing",
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
                    "Learn how you can benefit from changes to PR and marketing. Apply the brainpower of hundreds of advocates.",
                    style: TextStyle(fontSize: 32.0, color: Colors.white),
                  ),
                ],
              ),
            ),
           
                //products

                InkWell(
                  onTap: () {
                    String externalUrl =
                      'https://brain.oppkey.com/content/people/';

                    js.context.callMethod("open", [externalUrl]);
                 },                                  
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.nature_people,
                        size: 128,
                        color: Colors.white,
                        ),
                      Text('People',
                      
                        style: TextStyle(
                          fontSize: 32,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),


                SizedBox(
                  height: 30,
                ),


                // learn more
                InkWell(
                  onTap: () {
                    String externalUrl =
                      'https://brain.oppkey.com/content/info/';

                    js.context.callMethod("open", [externalUrl]);
                 },                                  
                  child: Column(
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.rocket,
                        size: 128,
                        color: Colors.white,
                        ),
                      Text('More',
                      
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
          "assets/images/about/urban.jpg",
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