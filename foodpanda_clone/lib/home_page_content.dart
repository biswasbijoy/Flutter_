import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:foodpanda_clone/daily_deals_chart.dart';

class ContentScreen extends StatelessWidget {
  const ContentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<DailyDeals> _deal = [];
    _deal.add(DailyDeals(img1: 'images/Coke.jpg'));
    _deal.add(DailyDeals(img1: 'images/Celebreat.jpg'));
    _deal.add(DailyDeals(img1: 'images/Tk_180.jpg'));
    _deal.add(DailyDeals(img1: 'images/Tk_70.jpg'));
    _deal.add(DailyDeals(img1: 'images/_50%.jpg'));
    _deal.add(DailyDeals(img1: 'images/Flat_15_Taka.jpg'));
    _deal.add(DailyDeals(img1: 'images/Tk_200.jpg'));
    _deal.add(DailyDeals(img1: 'images/Electronics.jpg'));
    _deal.add(DailyDeals(img1: 'images/Need.jpg'));


    List<Cuisines> _cuisines = [];
    _cuisines.add(Cuisines(img2: 'images/Asian.jpg'));
    _cuisines.add(Cuisines(img2: 'images/Snacks.jpg'));
    _cuisines.add(Cuisines(img2: 'images/Meat.jpg'));
    _cuisines.add(Cuisines(img2: 'images/Chicken.jpg'));
    _cuisines.add(Cuisines(img2: 'images/Healthy.jpg'));
    _cuisines.add(Cuisines(img2: 'images/Fish.jpg'));
    _cuisines.add(Cuisines(img2: 'images/Pasta.jpg'));
    _cuisines.add(Cuisines(img2: 'images/Cafe.jpg'));
    _cuisines.add(Cuisines(img2: 'images/Rice_Dish.jpg'));
    _cuisines.add(Cuisines(img2: 'images/Fast_Food.jpg'));
    _cuisines.add(Cuisines(img2: 'images/Bangladeshi.jpg'));
    _cuisines.add(Cuisines(img2: 'images/Burger.jpg'));
    _cuisines.add(Cuisines(img2: 'images/Seafood.jpg'));
    _cuisines.add(Cuisines(img2: 'images/Dessert.jpg'));
    _cuisines.add(Cuisines(img2: 'images/Pizza.jpg'));


    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 15, left: 15, top: 16, bottom: 17),
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 165,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.pink,
                      image: DecorationImage(
                          image: AssetImage("images/food_delivery.jpg"),
                          fit: BoxFit.fill),
                    ),
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  Container(
                    height: 250,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Container(
                          height: 250,
                          width: MediaQuery.of(context).size.width * 0.44,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              image: DecorationImage(
                                image: AssetImage('images/Panda_mart.jpg'),
                                fit: BoxFit.fill,
                              )),
                        ),
                        SizedBox(
                          width: 19.37,
                        ),
                        Container(
                          // color: Colors.red,
                          height: 250,
                          width: MediaQuery.of(context).size.width * 0.44,
                          child: Column(
                            children: [
                              Container(
                                height:
                                    250 * 0.60,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                    image: DecorationImage(
                                      image: AssetImage('images/Shops.jpg'),
                                      fit: BoxFit.fill,
                                    )),
                              ),
                              SizedBox(
                                height: 13.8,
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.10,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                    image: DecorationImage(
                                      image: AssetImage("images/Pick_up.jpg"),
                                      fit: BoxFit.fill,
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  SizedBox(
                    child: Text('Your daily deals',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _deal.length,
                      itemBuilder: (context, index) => Container(
                        height: 165,
                        width: 145,
                        margin: EdgeInsets.all(10),
                        // color: Colors.amber,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          image: DecorationImage(
                            image: AssetImage(_deal[index].img1),
                            fit: BoxFit.fill
                          )
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    child: Text('Cuisines',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                      // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      //   crossAxisCount: 2,
                      //   mainAxisSpacing: 0.5,
                      //   crossAxisSpacing: 0.5,
                      // ),
                      
                      scrollDirection: Axis.horizontal,
                      itemCount: _cuisines.length,
                      itemBuilder: (context, index) => Container (
                        height: 30,
                        width: 500,
                        margin: EdgeInsets.all(8),
                        // color: Colors.amber,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          image: DecorationImage (
                            image: AssetImage(_cuisines[index].img2),
                            fit: BoxFit.fill
                          )
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}