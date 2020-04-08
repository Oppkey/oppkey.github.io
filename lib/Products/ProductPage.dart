import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:oppkey/Demo/Demo.dart';
import 'dart:html' as html;
import 'dart:js' as js;


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
                    "Software for marketing campaigns. Scalable community promotion and management.",
                    style: TextStyle(fontSize: 32.0, color: Colors.white),
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

                  Image.asset('assets/images/product.png',
                  width: 100,),
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
                  Image.asset('assets/images/captain.png',
                  width: 100,),
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
          "assets/images/human.jpg",
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
