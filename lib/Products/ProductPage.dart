import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:oppkey/Demo/Demo.dart';
import 'dart:html' as html;
import 'dart:js' as js;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class ProductPage extends StatelessWidget {
  List<Widget> pageChildren(double width, BuildContext context) {
    return <Widget>[

      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Products and Services",
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
                    "Software for scalable community promotion and management. Services to drive smart marketing campaigns.",
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                String externalUrl =
                    'https://brain.oppkey.com/content/products/';

                js.context.callMethod("open", [externalUrl]);
              },
              child: Column(
                children: <Widget>[
                  FaIcon(
                    FontAwesomeIcons.seedling,
                    size: 128,
                    color: Colors.white,
                  ),
                  Text('Products',

                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                String externalUrl =
                    'https://brain.oppkey.com/content/services/';

                js.context.callMethod("open", [externalUrl]);
              },
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.blur_on,
                    size: 128,
                    color: Colors.white,
                  ),
                  Text('Services',

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

      // start of main graphic

      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Image.asset(
          "assets/images/products.jpg",
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
