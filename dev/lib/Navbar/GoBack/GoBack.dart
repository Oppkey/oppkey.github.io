import 'package:flutter/material.dart';

class GoBack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return FlatButton(
          onPressed: () {
            Navigator.pop(context);
            print('go home');
          },
          child: Text(
            'Back',
            style: TextStyle(color: Colors.white),
          ),
          focusColor: Color(0xffF04D22),
        );
      },
    );
  }
}
