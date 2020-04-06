import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:responsive/Demo/Demo.dart';
import 'dart:html' as html;
import 'dart:js' as js;

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
                    "Apply the brainpower of 1000 advocates",
                    style: TextStyle(fontSize: 16.0, color: Colors.white),
                  ),
                  Text("How you can benefit from changes to PR and marketing.",
                    style: TextStyle(fontSize: 16.0, color: Colors.white),
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
                        Icons.face,
                        size: 128,
                        color: Colors.white,
                        ),
                      Text('people',
                      
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
                        Icons.poll,
                        size: 128,
                        color: Colors.white,
                        ),
                      Text('Learn More',
                      
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
          "assets/images/send.png",
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
