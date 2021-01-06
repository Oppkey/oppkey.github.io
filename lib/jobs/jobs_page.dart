import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:easy_web_view/easy_web_view.dart';
import './technical_marketing_manager.dart';

class JobsPage extends StatelessWidget {
  List<Widget> pageChildren(double width, BuildContext context) {
    return <Widget>[
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Join Our Team of Technology Marketing Experts",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: EasyWebView(
                      height: 500,
                      isMarkdown: true,
                      isHtml: false,
                      src: jobDescription,
                      onLoaded: () {},
                    ),
                  ),
                ],
              ),
            ),
            Text('info@oppkey.com or 415-730-2793',
                style: TextStyle(color: Colors.white, fontSize: 20)),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Image.asset(
          "assets/images/demos.jpg",
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
