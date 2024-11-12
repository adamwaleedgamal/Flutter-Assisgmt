import 'package:flutter/material.dart';

class Productdet extends StatelessWidget {
  var image;
  var title;
  var des;
  Productdet({required this.image,required this.des,required this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Image.network(image),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(width:300,child: Text(title)),
                ),
                Container(width:300,child: Text(des)),
              ],
            
            ),
          ),
        ],
      ),
    );
  }
}
