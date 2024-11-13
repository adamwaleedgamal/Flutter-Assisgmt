import 'package:adam_waleed_0522018/Widget/item.dart';
import 'package:adam_waleed_0522018/pages/ShopApp/productdet.dart';
import 'package:adam_waleed_0522018/pages/signin.dart';
import 'package:adam_waleed_0522018/provider/ShopApp/data_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var p=Provider.of<Providershop>(context);
    p.fech();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("Products"),
        leading: Icon(Icons.menu),
        actions: [IconButton(onPressed: () => Login, icon:  Icon(Icons.arrow_back))],
        centerTitle: true,
      ),
      body:GestureDetector(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
          return GestureDetector(child: Item(image: p.obj?.data[index]["image"]),onTap: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder:
                        (context)=>Productdet(image: p.obj?.data[index]["image"],
                        des: p.obj?.data[index]["name"],
                        title: p.obj?.data[index]["description"])));
             },
          );
        },
        ),
      ),

    );
  }
}
