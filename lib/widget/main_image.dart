import 'package:flutter/material.dart';

class MainImage extends StatefulWidget {
  @override
  _MainImageState createState() => _MainImageState();
}

class _MainImageState extends State<MainImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(.1),
              Colors.black.withOpacity(.3),
            ],
          ),
        ),
      ),
    );
  }
}
