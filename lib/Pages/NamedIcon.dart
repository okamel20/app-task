import 'package:flutter/material.dart';

class NamedIcon extends StatelessWidget {
  final IconData iconData;
  final String text;
  final VoidCallback onTap;
  final int notificationCount;

  const NamedIcon({
    Key key,
    this.onTap,
    @required this.text,
    @required this.iconData,
    this.notificationCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 10),
        width: 70,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(iconData),
                Text(text, overflow: TextOverflow.ellipsis),
              ],
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                alignment: Alignment.center,
                child: Text(
                  '$notificationCount',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
