import 'package:flutter/material.dart';
import 'package:responsive/Navbar/GoBack/GoBack.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1000) {
          return DesktopNavbar();
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        // constraints: BoxConstraints(maxWidth: 1200),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
          Text("Oppkey \nCommunity Experts",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 30
            ),
          ),
          Row(children: <Widget>[
            GoBack(),
            SizedBox(width: 30,),

            
            // About
            /* FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => About()),
                );                
              },
              child: Text("About", 
              style: TextStyle(color: Colors.white),
              ),
              focusColor: Color(0xffF04D22),
            ),
            SizedBox(width: 30,), */

            // Case Studies
            /* FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CaseStudies()),
                );                
              },
              focusColor: Color(0xffF04D22),
              child: Text("Case Studies", 
              style: TextStyle(color:Colors.white),
              ),
            ), */
            

          ],)
        ],
        ),
      ),
    );
  }
}


class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40 ),
      child: Column(
        children: <Widget>[
          Text("Oppkey \nCommunity Experts",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 30
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            GoBack(),
            SizedBox(width: 30,),

            // About
 /*             FlatButton(
              onPressed: () {
               Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => About()),
                );
              },
              child: Text("About", 
              style: TextStyle(color:Colors.white),
              ),
              focusColor: Color(0xffF04D22),
            ),

            // spacing between row elements
            SizedBox(width: 10,),

            // Case Studies
            FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CaseStudies()),
                );
              },
              child: Text("Case Studies", 
              style: TextStyle(color:Colors.white),
              ),
              focusColor: Color(0xffF04D22),
            ),
            SizedBox(width: 10,), */

          ],),
        ],
      ),
    );
  }
}