import 'package:flutter/material.dart';

class Item extends StatelessWidget {
 var image;
 Item({required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: Column(
        children: [
          Container(
            width: 200,
            height: 200,
            child: Card(
              child: Image.network(image)
            ),
          )
        ],
      ),
    );
  }
}
