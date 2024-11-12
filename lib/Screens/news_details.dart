import 'package:flutter/material.dart';

class NewsDetailPage extends StatelessWidget {
  final String name;
  final String description;
final String image;
final String price;

  const NewsDetailPage({
    super.key,
    required this.name,
    required this.description,
    required this.image,
    required this.price

  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details" , style: TextStyle(fontSize: 40,color: const Color.fromARGB(255, 209, 203, 11)) ,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          shadowColor: Colors.black,
          elevation: 35,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Text(
                  description,
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                SizedBox(height: 20),
                Text(image), // Show the content from JSON
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}





