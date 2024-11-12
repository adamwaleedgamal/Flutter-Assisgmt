import 'package:flutter/material.dart';
import '../Screens/news_details.dart';

class NewsItem extends StatelessWidget {
  final String image;
  final String name;
  final String description;
  final String price;


  const NewsItem({
    super.key,
    required this.image,
    required this.name,
    required this.description,
    required this.price

  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NewsItem(
              image: image,
              name: name,
              price: price,
              description: description,
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          shadowColor: Colors.black,
          elevation: 35,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Image.network(image),
                SizedBox(height: 10),
                Text(
                  price,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(description),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
