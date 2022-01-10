import 'package:flutter/material.dart';
import 'package:fruit_using_grid_view/fruit_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key,}) : super(key: key);
  // final FruitModel fruitModel;
  @override
  Widget build(BuildContext context) {
    List<FruitModel> _fruitModel = [
      FruitModel(name: "Mango", img: 'https://www.mango.org/wp-content/uploads/2017/11/houney-variety.jpg', price: 150.0),
      FruitModel(name: "Jackfruit", img: 'https://assets.epicurious.com/photos/576c19ded15dd24f6aefe072/16:9/w_2560%2Cc_limit/jackfruit-23062016-01.jpg', price: 150.0),
      FruitModel(name: "Orange", img: 'https://cdn.mos.cms.futurecdn.net/UaBq5LGpJQd3DDo6ve2dFW.jpg', price: 150.0),
      FruitModel(name: "Blueberry", img: 'https://laidbackgardener.blog/wp-content/uploads/2019/07/20190717a-www.almanac.com_.jpg', price: 150.0),
      FruitModel(name: "Pineapple", img: 'https://upload.wikimedia.org/wikipedia/commons/7/74/%E0%B4%95%E0%B5%88%E0%B4%A4%E0%B4%9A%E0%B5%8D%E0%B4%9A%E0%B4%95%E0%B5%8D%E0%B4%95.jpg', price: 150.0),
      FruitModel(name: "Dragon Fruit", img: 'https://www.itfnet.org/v1/wp-content/uploads/2020/12/ban1.jpg', price: 150.0),
      
    ];

    
    return Scaffold(
      appBar: AppBar(
        title: Text("Fruit Grid View"),
      ),
      drawer: Drawer(),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemCount: 6, 
        itemBuilder: (context,index) => Card(
          child: GridTile(
              child: Image.network(_fruitModel[index].img), 
              header: Text(_fruitModel[index].name),
              footer: Text(_fruitModel[index].price.toString()),
          ),
        )
      ),
    );
  }
}