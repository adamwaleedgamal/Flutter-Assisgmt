import 'package:flutter/material.dart';

class CustomProductItem extends StatelessWidget {
  const CustomProductItem({super.key, required this.image, required this.name, required this.price});
  final String image;
  final String name;
  final num price;
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children: [
          SizedBox(height: 10,),
          Expanded(child: Image.network(image)),
          SizedBox(height: 10,),
          FittedBox(
            fit: BoxFit.scaleDown,
              child: Text(name,style: TextStyle(fontSize: 20),)),
          SizedBox(height: 10,),
          Text(price.toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)

        ],
      ),
    );
  }
}
