import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:responsive/Demo/Demo.dart';


class LandingPage extends StatelessWidget {

  List<Widget> pageChildren(double width, BuildContext context) {
    return <Widget> [
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Build Trust",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40.0,
              color: Colors.white), ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Text("Strengthen relationships with hundreds of "
                "thought leaders by working with " 
                "your employees, customers, partners, and evangelists using our scalable platform.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white
                ),),
              ),
              MaterialButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Demo()),
                    );    

                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
                    child: Text("Request Demo",
                    style: TextStyle(color: Colors.red),
                    ),
                  ),
              ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Image.asset("assets/images/flame_success.png",
        width: width,),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1000) {
          return  Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width/2, context),);          
        } else {
          return Column(
            children: pageChildren(constraints.biggest.width, context),
          );
        }
      }
    );
  }
}