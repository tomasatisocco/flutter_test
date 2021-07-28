import 'package:flutter/material.dart';

class StackFavoriteWidget extends StatelessWidget {
  const StackFavoriteWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Stack(
          children: <Widget>[
            Image(
              image: AssetImage('assetes/dawn.jpg'),
            ),
            Positioned(
              top: 0.0,
              right: 0.0,
              child: FractionalTranslation(
                translation: Offset(0.0, -0.3),
                child: CircleAvatar(
                  radius: 24.0,
                  backgroundColor: Colors.white30,
                  child: Icon(
                    Icons.star,
                    size: 24.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 10.0,
              right: 10.0,
              child: CircleAvatar(
                radius: 48.0,
                backgroundImage: AssetImage('assets/eagle.jpg'),
              ),
            ),
            Positioned(
              bottom: 16.0,
              right: 16.0,
              child: Text(
                'Bald Eagle',
                style: TextStyle(
                  fontSize: 32.0,
                  color: Colors.white30,
                  fontWeight: FontWeight.bold,
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}