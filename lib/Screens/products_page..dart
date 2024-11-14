import 'package:adam_waleed_0522018/Screens/product_details_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Providers/products_provider.dart';
import '../Widgets/custom_product_item.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product Details"),centerTitle: true,),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Consumer(builder:  (context, ProductsProvider value, child) {
          var data = value.productModel?.data;
          if(data==null){
            value.fetchData();
            return CircularProgressIndicator();}
          else{
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisSpacing: 20, crossAxisCount: 2),
              itemCount:data.length ,
              itemBuilder: (context, index) {
                var lol = data[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=> ProductDetailsPage(image: lol['image'], data: lol['name'], desc: lol['description']),));
                  },
                  child: CustomProductItem(
                      image: lol['image'], name: lol['name'], price: lol['price']),);
              },
            );
          }
        },
        ),
      ),
    );
  }
}
